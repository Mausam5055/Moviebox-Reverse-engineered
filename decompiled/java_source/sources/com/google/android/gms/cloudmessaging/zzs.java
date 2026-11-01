package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes3.dex */
abstract class zzs {
    final int zza;
    final TaskCompletionSource zzb = new TaskCompletionSource();
    final int zzc;
    final Bundle zzd;

    zzs(int i11, int i12, Bundle bundle) {
        this.zza = i11;
        this.zzc = i12;
        this.zzd = bundle;
    }

    public final String toString() {
        return "Request { what=" + this.zzc + " id=" + this.zza + " oneWay=" + zzb() + "}";
    }

    abstract void zza(Bundle bundle);

    abstract boolean zzb();

    final void zzc(zzt zztVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String string = toString();
            String string2 = zztVar.toString();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failing ");
            sb2.append(string);
            sb2.append(" with ");
            sb2.append(string2);
        }
        this.zzb.setException(zztVar);
    }

    final void zzd(Object obj) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String string = toString();
            String strValueOf = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Finishing ");
            sb2.append(string);
            sb2.append(" with ");
            sb2.append(strValueOf);
        }
        this.zzb.setResult(obj);
    }
}
