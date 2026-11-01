package com.transsion.upgradesdk.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zv.f f56599a;

    public g(zv.f fVar) {
        this.f56599a = fVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action;
        if (intent != null) {
            try {
                action = intent.getAction();
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        } else {
            action = null;
        }
        if (Intrinsics.c(action, "android.net.conn.CONNECTIVITY_CHANGE")) {
            zv.f.b(this.f56599a);
            throw null;
        }
    }
}
