package bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;

public class sachbo {
	sachdao sdao = new sachdao();
	ArrayList<sachbean> ds;

	public ArrayList<sachbean> getsach() {
		ds = sdao.getsach();
		return ds;
	}

	public ArrayList<sachbean> TimMa(String key) {
		ArrayList<sachbean> tam = new ArrayList<sachbean>();

		for (sachbean s : ds) {
			if (s.getTensach().toLowerCase().trim().contains(key.toLowerCase().trim())
					|| s.getMaloai().toLowerCase().trim().contains(key.toLowerCase().trim())
					|| s.getTacgia().toLowerCase().trim().contains(key.toLowerCase().trim())) {
				tam.add(s);
			}
		}
		return tam;
	}

	public ArrayList<sachbean> tim(String key) {
		ArrayList<sachbean> tam = new ArrayList<sachbean>();
		for (sachbean s : ds) {
			if (s.getMaloai().toLowerCase().trim().contains(key.toLowerCase().trim())
					|| s.getTacgia().toLowerCase().trim().contains(key.toLowerCase().trim())
					|| s.getTensach().toLowerCase().trim().contains(key.toLowerCase().trim())) {
				tam.add(s);
			}
		}
		return tam;
	}
}
