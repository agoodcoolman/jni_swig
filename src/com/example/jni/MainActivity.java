package com.example.jni;

import com.apress.swig.Unix;
import com.apress.swig.UnixJNI;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;

@SuppressLint("NewApi")
public class MainActivity extends Activity {
/**
说明文档
*/
	@Override
	protected void onCreate(Bundle savedInstanceState) {    
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		TextView textview = (TextView) findViewById(R.id.textview);
//		int add = Native.add(1, 3);
//		textview.setText(Native.add(1, 2) + "" + Unix.getuid());
//		textview.setText(Unix.getuid()+"");
		
		UnixJNI.MAX_HEIGHT_get();
	}

	
}
