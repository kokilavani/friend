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

import com.example.friend.R;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class cassie extends Activity {
	EditText e1,e4,e6,e7;
	Button b1, b2;
	String name_value, pwd_value, conpwd_value, email_value;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.cassie);
		
		e1 = (EditText) findViewById(R.id.editText1);
		e4 = (EditText) findViewById(R.id.editText4);
		e6 = (EditText) findViewById(R.id.editText6);

		e7 = (EditText) findViewById(R.id.editText7);
		
		b1 = (Button) findViewById(R.id.butt);
		b2 = (Button) findViewById(R.id.butt1);
		b2.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				Intent i = new Intent(cassie.this,MainActivity.class);
				startActivity(i);
	
			}
		});
		b1.setOnClickListener(new View.OnClickListener() {

			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				name_value = e7.getText().toString();
				email_value = e6.getText().toString();
				pwd_value = e4.getText().toString();
				conpwd_value = e1.getText().toString();

				try {
					name_value = URLEncoder.encode(name_value, "UTF-8");
					email_value = URLEncoder.encode(email_value, "UTF-8");
					pwd_value = URLEncoder.encode(pwd_value, "UTF-8");
					conpwd_value = URLEncoder.encode(conpwd_value, "UTF-8");
					if (pwd_value.equals(conpwd_value)) {
						if ("".equalsIgnoreCase(name_value)
								|| "".equalsIgnoreCase(email_value)
								|| "".equalsIgnoreCase(pwd_value)
								|| "".equalsIgnoreCase(conpwd_value))
								

						{
							Toast.makeText(cassie.this,
									"All Fields Required.", Toast.LENGTH_SHORT)
									.show();
						}

						
						/*else if (!emailInput.matches(emailPattern)) {
							Toast.makeText(getApplicationContext(),
									"Invalid email", Toast.LENGTH_SHORT).show();
						} */
						else {
							Toast.makeText(getApplicationContext(),
									"Registered successfully. . .",
									Toast.LENGTH_SHORT).show();

							String url = "http://10.100.9.198/reg1.php?Name="
									+ name_value.trim() + "&EmailId="
									+ email_value.trim() + "&Password="
									+ pwd_value.trim() + "&ConfirmPassword="
									+ conpwd_value.trim();
							System.out.println(url);
							pass_value_to_db get = new pass_value_to_db();
							get.execute(new String[] { url });
						}
					} 
					else {
						Toast.makeText(getApplicationContext(),
								"Passwords donot match", Toast.LENGTH_SHORT)
								.show();
					}

				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
		});

	}

	private class pass_value_to_db extends AsyncTask<String, Void, String> {

		ProgressDialog dialog;

		@Override
		protected void onPreExecute() {
			dialog = new ProgressDialog(cassie.this);
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

				// Toast.makeText(getApplicationContext(),"Registered successfully",
				// Toast.LENGTH_LONG).show();
				// Intent i=new Intent(SubActivity.this,MainActivity.class);
				// startActivity(i);
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
						" Please try again later...", Toast.LENGTH_SHORT)
						.show();
			} else {
				System.out.println(result);
				Intent i = new Intent(cassie.this,MainActivity.class);
				startActivity(i);

			}

			if (dialog != null)
				dialog.dismiss();

		}
	}

	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}


}
