package com.example.haberapp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextClock;
import android.widget.TextView;

import org.w3c.dom.Text;



public class AnasayfaActivity extends AppCompatActivity  implements View.OnClickListener{
    public CardView card_view, card_view2, card_view3 , card_view4, card_view5, card_view6, card_view7, card_view8;

    public TextView eklenecekbaslik, eklenecek1, eklenecek2, eklenecek3, eklenecek4, eklenecek1alt, eklenecek2alt, eklenecek3alt, eklenecek4alt, anasayfabaslik, copyright, hakkimizdatextbaslik, hakkimizdatext1;

    Button hakkimizdabutton, iletisimbutton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_anasayfa);


        // menü

       //ekleneceklerin fontları
        eklenecekbaslik = (TextView) findViewById(R.id.eklenecekbaslik);
        anasayfabaslik = (TextView) findViewById(R.id.anasayfabaslik);
        eklenecek1 = (TextView) findViewById(R.id.eklenecek1);
        eklenecek2 = (TextView) findViewById(R.id.eklenecek2);
        eklenecek3 = (TextView) findViewById(R.id.eklenecek3);
        eklenecek4 = (TextView) findViewById(R.id.eklenecek4);

        eklenecek1alt = (TextView) findViewById(R.id.eklenecek1alt);
        eklenecek2alt = (TextView) findViewById(R.id.eklenecek2alt);
        eklenecek3alt = (TextView) findViewById(R.id.eklenecek3alt);
        eklenecek4alt = (TextView) findViewById(R.id.eklenecek4alt);

        hakkimizdatextbaslik = (TextView) findViewById(R.id.hakkimizdatextbaslik);
        Typeface typefaceaa = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        hakkimizdatextbaslik.setTypeface(typefaceaa);

        hakkimizdatext1 = (TextView) findViewById(R.id.hakkimizdatext1);
        Typeface typefaceaaa = Typeface.createFromAsset(getAssets(), "fonts/Questrial-Regular.ttf");
        hakkimizdatext1.setTypeface(typefaceaaa);

        hakkimizdabutton = (Button) findViewById(R.id.hakkimizdabutton);
        Typeface asdd = Typeface.createFromAsset(getAssets(), "fonts/exo.ttf");
        hakkimizdabutton.setTypeface(asdd);
        hakkimizdabutton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent hakkimizdaa = new Intent(getApplicationContext(), hakkimizda.class);
                startActivity(hakkimizdaa);
            }
        });

        iletisimbutton = (Button) findViewById(R.id.iletisimbutton);
        Typeface asd = Typeface.createFromAsset(getAssets(), "fonts/exo.ttf");
        iletisimbutton.setTypeface(asd);
        iletisimbutton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent iletisimm = new Intent(getApplicationContext(), iletisim.class);
                startActivity(iletisimm);
            }
        });

        copyright = (TextView) findViewById(R.id.copyright);
        Typeface typefacea = Typeface.createFromAsset(getAssets(), "fonts/exo.ttf");
        copyright.setTypeface(typefacea);


        Typeface typeface = Typeface.createFromAsset(getAssets(), "fonts/BebasNeue-Regular.ttf");
        eklenecekbaslik.setTypeface(typeface);

        Typeface typefaces = Typeface.createFromAsset(getAssets(), "fonts/BebasNeue-Regular.ttf");
        anasayfabaslik.setTypeface(typefaces);

        Typeface typeface2 = Typeface.createFromAsset(getAssets(), "fonts/Questrial-Regular.ttf");
        eklenecek1.setTypeface(typeface2);


        Typeface typeface3 = Typeface.createFromAsset(getAssets(), "fonts/Questrial-Regular.ttf");
        eklenecek2.setTypeface(typeface3);


        Typeface typeface4 = Typeface.createFromAsset(getAssets(), "fonts/Questrial-Regular.ttf");
        eklenecek3.setTypeface(typeface4);


        Typeface typeface5 = Typeface.createFromAsset(getAssets(), "fonts/Questrial-Regular.ttf");
        eklenecek4.setTypeface(typeface5);

        Typeface typeface6 = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        eklenecek1alt.setTypeface(typeface6);

        Typeface typeface7 = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        eklenecek2alt.setTypeface(typeface7);

        Typeface typeface8 = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        eklenecek3alt.setTypeface(typeface8);

        Typeface typeface9 = Typeface.createFromAsset(getAssets(), "fonts/Quicksand-Light.ttf");
        eklenecek4alt.setTypeface(typeface9);





        //haber kart idleri
        card_view = (CardView) findViewById(R.id.card_view);
        card_view2 = (CardView) findViewById(R.id.card_view2);
        card_view3 = (CardView) findViewById(R.id.card_view3);
        card_view4 = (CardView) findViewById(R.id.card_view4);
        card_view5 = (CardView) findViewById(R.id.card_view5);
        card_view6 = (CardView) findViewById(R.id.card_view6);
        card_view7 = (CardView) findViewById(R.id.card_view7);
        card_view8 = (CardView) findViewById(R.id.card_view8);


        card_view.setOnClickListener(this);
        card_view2.setOnClickListener(this);
        card_view3.setOnClickListener(this);
        card_view4.setOnClickListener(this);
        card_view5.setOnClickListener(this);
        card_view6.setOnClickListener(this);
        card_view7.setOnClickListener(this);
        card_view8.setOnClickListener(this);

    }

    @Override
    public void onClick(View v) {

        Intent i;

        switch (v.getId()){
            case R.id.card_view :
                i = new Intent(this, koronavirus.class);
                startActivity(i);
                break;
            case R.id.card_view2 :
                i = new Intent(this, volkswagen.class);
                startActivity(i);
                break;
            case R.id.card_view3 :
                i = new Intent(this, isvicre.class);
                startActivity(i);
                break;
            case R.id.card_view4 :
                i = new Intent(this, tinder.class);
                startActivity(i);
                break;
            case R.id.card_view5 :
                i = new Intent(this, windows.class);
                startActivity(i);
                break;
            case R.id.card_view6 :
                i = new Intent(this, youtube.class);
                startActivity(i);
                break;
            case R.id.card_view7 :
                i = new Intent(this, benzin.class);
                startActivity(i);
                break;
            case R.id.card_view8 :
                i = new Intent(this, polis.class);
                startActivity(i);
                break;
        }




    }
}