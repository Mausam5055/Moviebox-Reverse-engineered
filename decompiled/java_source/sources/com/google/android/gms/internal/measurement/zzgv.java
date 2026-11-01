package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
final class zzgv extends zzhu {
    private final Context zza;
    private final q zzb;

    zzgv(Context context, q qVar) {
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        this.zza = context;
        this.zzb = qVar;
    }

    public final boolean equals(Object obj) {
        q qVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhu) {
            zzhu zzhuVar = (zzhu) obj;
            if (this.zza.equals(zzhuVar.zza()) && ((qVar = this.zzb) != null ? qVar.equals(zzhuVar.zzb()) : zzhuVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.zza.hashCode() ^ 1000003) * 1000003;
        q qVar = this.zzb;
        return iHashCode ^ (qVar == null ? 0 : qVar.hashCode());
    }

    public final String toString() {
        return "FlagsContext{context=" + String.valueOf(this.zza) + ", hermeticFileOverrides=" + String.valueOf(this.zzb) + "}";
    }

    @Override // com.google.android.gms.internal.measurement.zzhu
    final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzhu
    final q zzb() {
        return this.zzb;
    }
}
