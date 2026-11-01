package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.WorkManager;
import androidx.work.impl.workers.DiagnosticsWorker;
import androidx.work.t;
import androidx.work.v;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15637a = t.i("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        t.e().a(f15637a, "Requesting diagnostics");
        try {
            WorkManager.f(context).c(v.e(DiagnosticsWorker.class));
        } catch (IllegalStateException e11) {
            t.e().d(f15637a, "WorkManager is not initialized", e11);
        }
    }
}
