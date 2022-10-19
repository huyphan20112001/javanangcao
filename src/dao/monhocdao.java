package dao;

import java.util.ArrayList;

import bean.monhocbean;

public class monhocdao {
	
	public ArrayList<monhocbean> getMonHoc(){
		ArrayList<monhocbean> dsmon = new ArrayList<monhocbean>();
		dsmon.add(new monhocbean("toan", "Phép tính vi tích phân hàm một biến"));
		dsmon.add(new monhocbean("tin", "Tin học đại cương"));
		dsmon.add(new monhocbean("knm", "Kỹ năng mềm"));
		return dsmon;
	}
}
