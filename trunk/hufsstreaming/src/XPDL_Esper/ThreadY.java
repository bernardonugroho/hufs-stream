package XPDL_Esper;

import java.util.ArrayList;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

import com.espertech.esper.client.EPServiceProvider;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.Multimap;

public class ThreadY implements Runnable {
	private EPServiceProvider epService;

	static Multimap<Integer, String> ProIDProcess = ArrayListMultimap.create();
	static Multimap<Integer, String> MachineProcess = ArrayListMultimap.create();

	ArrayList CheckDuplicationPID = new ArrayList();
	ArrayList CheckTimerPID = new ArrayList();

	int RandomProductID;
	Timer timer[] = new Timer[11];
	FactoryLine FLevent;
	FactoryLine FLevent2;
	
	String Path;

	public ThreadY(EPServiceProvider epService, String Path) {
		this.epService = epService;
		this.Path = Path;
	}

	@Override
	public void run() {

		while (true) {
			try {

				// 제품 번호 랜덤 10개까지
				Random rand = new Random();
				RandomProductID = rand.nextInt(10) + 1;

				if (!CheckDuplicationPID.contains(RandomProductID)) {
					CheckDuplicationPID.add(RandomProductID);

					MakeEvent me = new MakeEvent(RandomProductID, Path);
					
					FLevent = me.getStart();
					epService.getEPRuntime().sendEvent(FLevent);
					
					FLevent2 = me.getProcessing();
					epService.getEPRuntime().sendEvent(FLevent2);
						/*timer[RandomProductID] = new Timer();
						timer[RandomProductID].schedule(new TimerTaskTest2(RandomProductID), (long) (me.PT * 1000));
						System.out.println("1");*/
					
				}

				else if (!CheckTimerPID.contains(RandomProductID)) {

					CheckTimerPID.add(RandomProductID);

					MakeEvent me = new MakeEvent(RandomProductID, Path);
					
					if(FLevent != null){
						timer[RandomProductID] = new Timer();
						timer[RandomProductID].schedule(new TimerTaskTest(RandomProductID), (long) (me.PT * 1000));
						// System.out.println(CheckTimerPID);
						System.out.println("ID : " + RandomProductID
								+ "  Spending Time : " + me.PT);
					}
					
				}
					
				
				else if(MakeEvent.CheckMachine==null && MakeEvent.CheckProcess==null){
					break;
				}

				
				// System.out.println(CheckDuplicationPID);

				Thread.sleep(1000);

			} catch (Exception e) {

				e.printStackTrace();
			}
		}
	}

	class TimerTaskTest extends TimerTask {

		int ProductID;

		public TimerTaskTest(int ID) {
			ProductID = ID;
		}

		public void run() {

			MakeEvent me = new MakeEvent(ProductID, Path);

			FLevent = me.getProcessing();
			if(FLevent == null){
				timer[ProductID].cancel();
			}
			epService.getEPRuntime().sendEvent(FLevent);
			// System.out.println(CheckTimerPID.size());
			for (int i = 0; i < CheckTimerPID.size(); i++) {
				if (CheckTimerPID.get(i).equals(ProductID)) {
					CheckTimerPID.remove(i);
				}
			}
			// System.out.println("Waiting ID List : " + CheckTimerPID);
			timer[ProductID].cancel();
		}
				
	}

	
}
