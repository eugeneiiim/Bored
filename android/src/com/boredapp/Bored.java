package com.boredapp;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import android.widget.Button;
import android.view.View;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;
import java.net.URL;
import java.lang.Runnable;
import android.os.AsyncTask;

public class Bored extends Activity {

  int latestUpdateId;

  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.main);

    final Button button = (Button) findViewById(R.id.getTodoButton);
    button.setOnClickListener(new View.OnClickListener() {
        public void onClick(View v) {
          updateThingToDo();
        }
      });

    latestUpdateId = 0;
    updateThingToDo();
  }

  private synchronized void updateThingToDo() {
    final TextView loadingTv = (TextView) findViewById(R.id.loadingTextView);
    final TextView tv = (TextView) findViewById(R.id.todoTextView);

    tv.setText("");
    loadingTv.setText("Loading...");

    final int thisUpdateId = ++latestUpdateId;

    new AsyncTask<Void, Integer, String>() {
      protected String doInBackground(Void... _) {
        return getThingToDo();
      }

      protected void onPostExecute(String result) {
        if (thisUpdateId == latestUpdateId) {
          loadingTv.setText("");
          tv.setText(result);
        }
      }
    }.execute(null, null);
  }

  private String getThingToDo() {
    try {
      URL url = new URL(getString(R.string.contentUrl));
      BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream()));
      String inputLine;

      String result = "";
      while ((inputLine = in.readLine()) != null) {
        result += inputLine;
      }

      in.close();

      return result + ".";
    } catch (IOException e) {
      e.printStackTrace();
      return getString(R.string.failureMessage);
    }
  }
}
