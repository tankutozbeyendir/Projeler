package com.example.haberapp;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Typeface;
import android.os.Bundle;
import android.widget.TextView;

public class hakkimizda extends AppCompatActivity {
    public TextView baslik, textView1, adress;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hakkimizda);

        baslik = (TextView) findViewById(R.id.baslik);
        textView1 = (TextView) findViewById(R.id.textView1);
        adress = (TextView) findViewById(R.id.adress);




        Typeface typefaceaa = Typeface.createFromAsset(getAssets(), "fonts/BebasNeue-Regular.ttf");
        baslik.setTypeface(typefaceaa);

        Typeface typefaceaaa = Typeface.createFromAsset(getAssets(), "fonts/Questrial-Regular.ttf");
        textView1.setTypeface(typefaceaaa);

        Typeface typefaceaaaa = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        adress.setTypeface(typefaceaaaa);

    }
}