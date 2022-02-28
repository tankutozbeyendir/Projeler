package com.example.haberapp;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Typeface;
import android.os.Bundle;
import android.widget.TextView;

public class polis extends AppCompatActivity {

    TextView textView1, textView2, textView3, textView4, textView5, textView6;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_polis);
        textView1 = (TextView) findViewById(R.id.textView1);
        textView2 = (TextView) findViewById(R.id.textView2);
        textView3 = (TextView) findViewById(R.id.textView3);
        textView4 = (TextView) findViewById(R.id.textView4);
        textView5 = (TextView) findViewById(R.id.textView5);
        textView6 = (TextView) findViewById(R.id.textView6);

        Typeface typeface = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        textView1.setTypeface(typeface);


        Typeface typeface2 = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        textView2.setTypeface(typeface2);


        Typeface typeface3 = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        textView3.setTypeface(typeface3);


        Typeface typeface4 = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        textView4.setTypeface(typeface4);


        Typeface typeface5 = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        textView5.setTypeface(typeface5);

        Typeface typeface6 = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        textView6.setTypeface(typeface5);
    }
}