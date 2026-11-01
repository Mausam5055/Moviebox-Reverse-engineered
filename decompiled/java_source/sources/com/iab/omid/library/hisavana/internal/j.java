package com.iab.omid.library.hisavana.internal;

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
    private static j f33596d = new j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference f33597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f33598b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33599c = false;

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
                z10 = jVar.f33599c;
                z11 = true;
            } else {
                if (!intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                    return;
                }
                jVar = j.this;
                z10 = jVar.f33599c;
                z11 = false;
            }
            jVar.c(z11, z10);
            j.this.f33598b = z11;
        }
    }

    public static j f() {
        return f33596d;
    }

    public void a() {
        KeyguardManager keyguardManager;
        Context context = (Context) this.f33597a.get();
        if (context == null || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null) {
            return;
        }
        boolean zIsDeviceLocked = keyguardManager.isDeviceLocked();
        c(this.f33598b, zIsDeviceLocked);
        this.f33599c = zIsDeviceLocked;
    }

    public void b(Context context) {
        if (context == null) {
            return;
        }
        this.f33597a = new WeakReference(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new a(), intentFilter);
    }

    public void c(boolean z10, boolean z11) {
        if ((z11 || z10) == (this.f33599c || this.f33598b)) {
            return;
        }
        Iterator it = c.e().c().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.hisavana.adsession.h) it.next()).l().n(z11 || z10);
        }
    }
}
