package com.hastagaming.arcmux;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import android.graphics.Color;
import android.view.Gravity;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        // Setup UI Sederhana untuk testing awal
        TextView tv = new TextView(this);
        tv.setText("Arcmux Engine: Standby\nMode: Landscape\nTarget Distro: Arch Linux");
        tv.setTextColor(Color.CYAN);
        tv.setBackgroundColor(Color.BLACK);
        tv.setTextSize(24);
        tv.setGravity(Gravity.CENTER);
        
        setContentView(tv);
    }
}
