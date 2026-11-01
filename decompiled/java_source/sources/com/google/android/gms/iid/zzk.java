package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final class zzk implements ServiceConnection {
    private final Intent zzbp;
    private final ScheduledExecutorService zzbq;
    private final Queue<zzg> zzbr;
    private zzi zzbs;
    private boolean zzbt;
    private final Context zzl;

    public zzk(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0, new NamedThreadFactory("EnhancedIntentService")));
    }

    private zzk(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.zzbr = new ArrayDeque();
        this.zzbt = false;
        Context applicationContext = context.getApplicationContext();
        this.zzl = applicationContext;
        this.zzbp = new Intent(str).setPackage(applicationContext.getPackageName());
        this.zzbq = scheduledExecutorService;
    }

    private final synchronized void zzm() {
        try {
            Log.isLoggable("EnhancedIntentService", 3);
            while (!this.zzbr.isEmpty()) {
                Log.isLoggable("EnhancedIntentService", 3);
                zzi zziVar = this.zzbs;
                if (zziVar == null || !zziVar.isBinderAlive()) {
                    if (Log.isLoggable("EnhancedIntentService", 3)) {
                        boolean z10 = !this.zzbt;
                        StringBuilder sb2 = new StringBuilder(39);
                        sb2.append("binder is dead. start connection? ");
                        sb2.append(z10);
                    }
                    if (!this.zzbt) {
                        this.zzbt = true;
                        try {
                            if (ConnectionTracker.getInstance().bindService(this.zzl, this.zzbp, this, 65)) {
                                return;
                            } else {
                                Log.e("EnhancedIntentService", "binding to the service failed");
                            }
                        } catch (SecurityException e11) {
                            Log.e("EnhancedIntentService", "Exception while binding the service", e11);
                        }
                        this.zzbt = false;
                        zzn();
                    }
                    return;
                }
                Log.isLoggable("EnhancedIntentService", 3);
                this.zzbs.zzd(this.zzbr.poll());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private final void zzn() {
        while (!this.zzbr.isEmpty()) {
            this.zzbr.poll().finish();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            try {
                this.zzbt = false;
                this.zzbs = (zzi) iBinder;
                if (Log.isLoggable("EnhancedIntentService", 3)) {
                    String strValueOf = String.valueOf(componentName);
                    StringBuilder sb2 = new StringBuilder(strValueOf.length() + 20);
                    sb2.append("onServiceConnected: ");
                    sb2.append(strValueOf);
                }
                if (iBinder == null) {
                    Log.e("EnhancedIntentService", "Null service connection");
                    zzn();
                } else {
                    zzm();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            String strValueOf = String.valueOf(componentName);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 23);
            sb2.append("onServiceDisconnected: ");
            sb2.append(strValueOf);
        }
        zzm();
    }

    public final synchronized void zzd(Intent intent, BroadcastReceiver.PendingResult pendingResult) {
        Log.isLoggable("EnhancedIntentService", 3);
        this.zzbr.add(new zzg(intent, pendingResult, this.zzbq));
        zzm();
    }
}
