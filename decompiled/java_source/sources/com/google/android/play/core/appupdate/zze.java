package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
final class zze extends ResultReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f30190a;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i11, Bundle bundle) {
        if (i11 == 1) {
            this.f30190a.trySetResult(-1);
        } else if (i11 != 2) {
            this.f30190a.trySetResult(1);
        } else {
            this.f30190a.trySetResult(0);
        }
    }
}
