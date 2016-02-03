package com.example.friend;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

public class pro extends Activity{
	ImageView b1;
	Button b3;
	protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pro1);
        b1=(ImageView) findViewById(R.id.images1);
        b3 = (Button) findViewById(R.id.button3);
b1.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
			Intent i=new Intent(pro.this,sub1.class);
			startActivity(i);
			}
		});
b3.setOnClickListener(new View.OnClickListener() {
	
	@Override
	public void onClick(View arg0) {
		// TODO Auto-generated method stub
		Intent i=new Intent(pro.this,MainActivity.class);
		startActivity(i);	
	}
});
	}
}
