package com.jy.hibaby.pro;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jy.hibaby.pro.model.ProPARAM;

@Service
public class ProService {

	@Autowired
	private ProMapper mapper;
	
	// static 값들 초기화
	public void staticZero() {
		ProController.level = 0;
		ProController.count = 21;
		ProController.gameResult = 0;
		ProController.userResult = 0;
		ProController.comResult = 0;
	}
	
	
	// 로또 랜덤값 뽑기
	public List<ProPARAM> lottoNumbers() {
		
		ProPARAM param = new ProPARAM();
		List<ProPARAM> list = new ArrayList<ProPARAM>();
		
		ArrayList<Integer> random = new ArrayList<Integer>();
		
		int ran[] = new int[6];
		int ran2[] = new int[6];
		int ran3[] = new int[6];
		int ran4[] = new int[6];
		int ran5[] = new int[6];
		
		int a[] = new int[6];
		for(int i=0; i<6; i++) {
			
			ran[i] = (int)(Math.random() * 45 + 1);
			ran2[i] = (int)(Math.random() * 45 + 1);
			ran3[i] = (int)(Math.random() * 45 + 1);
			ran4[i] = (int)(Math.random() * 45 + 1);
			ran5[i] = (int)(Math.random() * 45 + 1);
			
			for(int j=0; j<i; j++) {
				if(ran[i] == ran[j]) {
					
					i--;
				} else if(ran2[i] == ran2[j]) {
					i--;
					
				} else if(ran3[i] == ran3[j]) {
					i--;
					
				} else if(ran4[i] == ran4[j]) {
					i--;
					
				} else if(ran5[i] == ran5[j]) {
					i--;
				}
			}
		}
		
		Arrays.sort(ran);
		Arrays.sort(ran2);
		Arrays.sort(ran3);
		Arrays.sort(ran4);
		Arrays.sort(ran5);
		
		param.setArr1(ran);
		param.setArr2(ran2);
		param.setArr3(ran3);
		param.setArr4(ran4);
		param.setArr5(ran5);
		
		list.add(param);
		
		return list;
	}
	
}
















