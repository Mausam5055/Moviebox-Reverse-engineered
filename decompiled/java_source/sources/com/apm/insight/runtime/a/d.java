package com.apm.insight.runtime.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.apm.insight.runtime.m;
import com.cloud.tmc.integration.permission.PermissionConstant;

/* JADX INFO: loaded from: classes2.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f19772a;

    class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(d dVar, byte b11) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            try {
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    d.this.f19772a = (int) ((intent.getIntExtra(PermissionConstant.level, 0) * 100.0f) / intent.getIntExtra("scale", 100));
                }
            } catch (Throwable unused) {
            }
        }
    }

    d(final Context context) {
        m.a().a(new Runnable() { // from class: com.apm.insight.runtime.a.d.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    context.registerReceiver(new a(d.this, (byte) 0), new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
            }
        });
    }

    public final int a() {
        return this.f19772a;
    }
}
