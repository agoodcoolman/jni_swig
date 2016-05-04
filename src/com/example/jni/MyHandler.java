package com.example.jni;

import android.widget.TextView;

import com.apress.swig.AsyncUidProvider;

public class MyHandler extends AsyncUidProvider {

	private TextView textview;
	
	public MyHandler(TextView textview) {
		this.textview = textview;
	}
	
	@Override
	public void onUid(long uid) {
		super.onUid(uid);
		textview.setText(uid + "");
	}

}
