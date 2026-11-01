package com.google.android.gms.iid;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes3.dex */
abstract class zzz<T> {
    final int what;
    final int zzcp;
    final TaskCompletionSource<T> zzcq = new TaskCompletionSource<>();
    final Bundle zzcr;

    zzz(int i11, int i12, Bundle bundle) {
        this.zzcp = i11;
        this.what = i12;
        this.zzcr = bundle;
    }

    public String toString() {
        int i11 = this.what;
        int i12 = this.zzcp;
        zzw();
        StringBuilder sb2 = new StringBuilder(55);
        sb2.append("Request { what=");
        sb2.append(i11);
        sb2.append(" id=");
        sb2.append(i12);
        sb2.append(" oneWay=false}");
        return sb2.toString();
    }

    final void zzd(zzaa zzaaVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(zzaaVar);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 14 + strValueOf2.length());
            sb2.append("Failing ");
            sb2.append(strValueOf);
            sb2.append(" with ");
            sb2.append(strValueOf2);
        }
        this.zzcq.setException(zzaaVar);
    }

    abstract void zzh(Bundle bundle);

    abstract boolean zzw();
}
