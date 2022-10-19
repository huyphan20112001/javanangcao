package dao;

import java.util.ArrayList;

import bean.sachbean;

public class sachdao {

	public ArrayList<sachbean> getsach() {
		ArrayList<sachbean> dssach = new ArrayList<sachbean>();
		dssach.add(new sachbean("s1", "Cấu trúc dữ liệu 1", "Nguyễn Hoàng Hà", 100, 100000, "b1.jpg", "tin"));
		dssach.add(new sachbean("s2", "Cấu trúc dữ liệu 2", "Nguyễn Hoàng Hà 1", 100, 100000, "b2.jpg", "tin"));
		dssach.add(new sachbean("s3", "Cấu trúc dữ liệu 3", "Nguyễn Hoàng Hà 2", 100, 100000, "b3.jpg", "tin"));
		dssach.add(new sachbean("s4", "Cơ sở toán", "Nguyễn Hoàng Hà 3", 100, 100000, "b4.jpg", "toan"));
		dssach.add(new sachbean("s5", "Giải tích", "Nguyễn Hoàng Hà 4", 100, 100000, "b5.jpg", "toan"));
		dssach.add(new sachbean("s6", "Ca dao", "Nguyễn Hoàng Hà 5", 100, 100000, "b6.jpg", "van"));
		dssach.add(new sachbean("s7", "Quà tặng cuộc sống", "Nguyễn Hoàng Hà 7", 100, 120548, "b7.jpg", "van"));
		dssach.add(new sachbean("s8", "Quà tặng tình nhân", "Nguyễn Hoàng Hà 8", 100, 152012, "b8.jpg", "ly"));
		dssach.add(new sachbean("s11", "Quà tặng chính mình", "Nguyễn Hoàng Hà 11", 100, 88000, "b11.jpg", "van"));
		dssach.add(new sachbean("s12", "Chicken Soup", "Nguyễn Hoàng Hà 12", 100, 12000, "b12.jpg", "ly"));
		dssach.add(new sachbean("s14", "Sứ mệnh yêu thương", "Nguyễn Hoàng Hà 14", 100, 90000, "b14.jpg", "toan"));
		dssach.add(new sachbean("s16", "Con sẽ làm được", "Nguyễn Hoàng Hà 16", 100, 100000, "b16.jpg", "van"));
		dssach.add(new sachbean("s17", "Đi tìm ý nghĩa cuộc sống", "Nguyễn Hoàng Hà 17 asdaaw  ád", 100, 100000, "b17.jpg", "ly"));
		dssach.add(new sachbean("s18", "Cảm ơn ký ức", "Nguyễn Hoàng Hà 18", 100, 100000, "b18.jpg", "van"));
		dssach.add(new sachbean("s19", "Hạt giống tâm hồn", "Nguyễn Hoàng Hà 19", 100, 2000, "b19.jpg", "van"));
		return dssach;
	}
	
}
