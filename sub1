package com.example.friend;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;


public class sub1 extends Activity {
	ImageView b1,b3,b4,b5;
	Button b2;
	protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.s1);
        b1=(ImageView) findViewById(R.id.im2);
        b3=(ImageView) findViewById(R.id.imgg);
        b4=(ImageView) findViewById(R.id.imgg1);
        b5=(ImageView) findViewById(R.id.imgg2);



b1.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
			Intent i=new Intent(sub1.this,sub2.class);
			startActivity(i);
			}
		});
b3.setOnClickListener(new View.OnClickListener() {
	
	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
	Intent i=new Intent(sub1.this,sub4.class);
	startActivity(i);
	}
});
b4.setOnClickListener(new View.OnClickListener() {
	
	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
	Intent i=new Intent(sub1.this,sub5.class);
	startActivity(i);
	}
});
b5.setOnClickListener(new View.OnClickListener() {
	
	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
	Intent i=new Intent(sub1.this,sub7.class);
	startActivity(i);
	}
});


b2=(Button) findViewById(R.id.but4);
b2.setOnClickListener(new View.OnClickListener() {
	
	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
	Intent i=new Intent(sub1.this,pro.class);
	startActivity(i);
	}
});


	}
}


