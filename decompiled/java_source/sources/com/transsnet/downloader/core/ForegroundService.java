package com.transsnet.downloader.core;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import android.widget.Toast;

/* JADX INFO: loaded from: classes7.dex */
public class ForegroundService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f58611a = "ForegroundService";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static boolean f58612b;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.e(f58611a, "onBind");
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.e(f58611a, "onCreate");
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.e(f58611a, "onDestroy");
        f58612b = false;
        stopForeground(true);
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i11, int i12) {
        Log.e(f58611a, "onStartCommand");
        f58612b = true;
        try {
            Toast.makeText(this, intent.getStringExtra("Foreground"), 0).show();
        } catch (Throwable unused) {
        }
        return super.onStartCommand(intent, i11, i12);
    }
}
