package com.example.friend;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends Activity {
	EditText e1, e2;
	// TextView t3,t4,t5,t6,t7,t8;
	Button b1,b2;
	String User_name, psd_value;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.fragment_main);

		e1 = (EditText) findViewById(R.id.editText1);
		e2 = (EditText) findViewById(R.id.editText2);
		

		 
		 
		b1 = (Button) findViewById(R.id.button1);
		b2 = (Button) findViewById(R.id.button2);
		b2.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
			Intent 	i=new Intent(MainActivity.this,cassie.class);
			startActivity(i);
			}
		});
		b1.setOnClickListener(new View.OnClickListener() {

			@Override
			public void onClick(View arg0) {

				User_name = e1.getText().toString();
				//Last_Name= e2.getText().toString();
				
				//Email_id = e3.getText().toString();
				psd_value = e2.getText().toString();
				//cpsd_value=e6.getText().toString();
				//mob_value = e7.getText().toString();

				try {
					User_name = URLEncoder.encode(User_name, "UTF-8");
					psd_value = URLEncoder.encode(psd_value, "UTF-8");


				String url = "http://10.100.9.198/log.php?Username="
						+ User_name.trim() + "&Password="
						+ psd_value.trim();
				System.out.println(url);
				pass_value_to_db get = new pass_value_to_db();
				get.execute(new String[] { url });
				
				}
			 catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			 }	
			}
});   
	}

public class pass_value_to_db extends AsyncTask<String, Void, String> {

	ProgressDialog dialog;

	@Override
	protected void onPreExecute() { // TODO Auto-generated method stub
		dialog = new ProgressDialog(MainActivity.this);
		dialog.setTitle("Processing...");
		dialog.setMessage("Please wait.");
		dialog.setCancelable(false);
		dialog.show();
	}

	@Override
	protected String doInBackground(String... urls) {
		String result = "";
		for (String url : urls) {
			InputStream is = null;
			try {

				HttpClient httpclient = new DefaultHttpClient();
				HttpPost httppost = new HttpPost(url);
				HttpResponse response = httpclient.execute(httppost);

				int status = response.getStatusLine().getStatusCode();
				Log.d("KG", "status=" + status);

				if (status == 200) {
					HttpEntity entity = response.getEntity();
					is = entity.getContent();
					BufferedReader reader = new BufferedReader(
							new InputStreamReader(is, "iso-8859-1"), 8);
					String line = "";
					while ((line = reader.readLine()) != null) {
						result += line;
					}
					is.close();

					Log.v("KG", result);

				}
			} catch (Exception ex) {
				Log.e("Error", ex.toString());
			}
		}
		return result;
	}

	protected void onPostExecute(String result) {
		Log.v("KG", "output=" + result);
		result = result.trim(); //
		// Toast.makeText(getApplicationContext(), result, //
		// Toast.LENGTH_LONG).show();
		if (result.equals("false")) {

			// *******************************************************

			Toast.makeText(getApplicationContext(),
					" Please try again later...", Toast.LENGTH_LONG).show();
		} 
		else {
			Toast.makeText(getApplicationContext(), "Login Successful", Toast.LENGTH_SHORT).show();
			Intent i = new Intent(MainActivity.this,pro.class);
			startActivity(i);

		}

		if (dialog != null)
			dialog.dismiss();

	}
}


	}	





