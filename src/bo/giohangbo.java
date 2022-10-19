package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
//	public ArrayList<giohangbean> checkList = new ArrayList<giohangbean>();

	public void Them(String masach, String tensach, long soluong, long gia, String anh) {
		for (giohangbean g : ds) {
			if (g.getMasach().equals(masach)) {
				g.setSoluong(soluong + g.getSoluong());
				return;
			}
		}
		ds.add(new giohangbean(masach, tensach, soluong, gia, anh));
	}

	public long TongTien() {
		long s = 0;
		for (giohangbean g : ds) {
			s = s + g.getThanhtien();
		}
		return s;
	}

	public void Xoa(String masach) {
		for (int i = 0; i < ds.size(); i++) {
			if (ds.get(i).getMasach().equals(masach)) {
				ds.remove(i);
				break;
			}
		}
	}

	public void Update(long soluong, String masach) {
		for (int i = 0; i < ds.size(); i++) {
			if (ds.get(i).getMasach().equals(masach) && ds.get(i).getSoluong() != soluong) {
				ds.get(i).setSoluong(soluong);
				if (ds.get(i).getSoluong() == 0) {
					Xoa(masach);
				}
			}
		}
	}

	public void XoaToanBo() {
		ds.removeAll(ds);
	}

	

}
