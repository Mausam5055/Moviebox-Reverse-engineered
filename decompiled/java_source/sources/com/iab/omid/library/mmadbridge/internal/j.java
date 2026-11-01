package com.iab.omid.library.mmadbridge.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static j f33715d = new j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference f33716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f33717b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33718c = false;

    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            j jVar;
            boolean z10;
            boolean z11;
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                jVar = j.this;
                z10 = jVar.f33718c;
                z11 = true;
            } else {
                if (!intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                    return;
                }
                jVar = j.this;
                z10 = jVar.f33718c;
                z11 = false;
            }
            jVar.c(z11, z10);
            j.this.f33717b = z11;
        }
    }

    public static j f() {
        return f33715d;
    }

    public void a() {
        Context context = (Context) this.f33716a.get();
        if (context == null) {
            return;
        }
        boolean zIsDeviceLocked = ((KeyguardManager) context.getSystemService("keyguard")).isDeviceLocked();
        c(this.f33717b, zIsDeviceLocked);
        this.f33718c = zIsDeviceLocked;
    }

    public void b(Context context) {
        if (context == null) {
            return;
        }
        this.f33716a = new WeakReference(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new a(), intentFilter);
    }

    public void c(boolean z10, boolean z11) {
        if ((z11 || z10) == (this.f33718c || this.f33717b)) {
            return;
        }
        Iterator it = c.e().c().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.mmadbridge.adsession.h) it.next()).t().q(z11 || z10);
        }
    }
}
