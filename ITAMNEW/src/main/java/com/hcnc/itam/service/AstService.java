package com.hcnc.itam.service;

import java.util.ArrayList;
import java.util.Map;

public interface AstService {

	public ArrayList<Map<String, Object>> selectComboC();
	public Map<String, String> selectComboD(String request);
	public Map<String, String> selectComboE(String request);
}
