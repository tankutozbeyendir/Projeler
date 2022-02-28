package com.example.haberapp;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Typeface;
import android.os.Bundle;
import android.widget.TextView;

public class iletisim extends AppCompatActivity {
    public TextView baslik, textView1,email,phone,live;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_iletisim);

        baslik = (TextView) findViewById(R.id.baslik);
        textView1 = (TextView) findViewById(R.id.textView1);
        phone = (TextView) findViewById(R.id.phone);
        live = (TextView) findViewById(R.id.live);
        email = (TextView) findViewById(R.id.email);



        Typeface typefaceaa = Typeface.createFromAsset(getAssets(), "fonts/BebasNeue-Regular.ttf");
        baslik.setTypeface(typefaceaa);

        Typeface typefaceaaa = Typeface.createFromAsset(getAssets(), "fonts/Questrial-Regular.ttf");
        textView1.setTypeface(typefaceaaa);

        Typeface typefaceaaaa = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        phone.setTypeface(typefaceaaaa);

        Typeface typefaceaaaaa = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        live.setTypeface(typefaceaaaaa);

        Typeface typefaceaas = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        email.setTypeface(typefaceaas);
    }
}