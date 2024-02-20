package com.whitehax.ironsdn.security;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;

import com.whitehax.ironsdn.R;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main_test);
        try {

            Intent launchIntent = getPackageManager().getLaunchIntentForPackage("com.whitehax.mobile");
            if (launchIntent != null) {
                startActivity(launchIntent);
            }
        } catch (Exception e) {

        }
    }
}