package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbqd extends zzbpz {
    private zzbqd() {
        throw null;
    }

    /* synthetic */ zzbqd(zzbqc zzbqcVar) {
        super(null);
    }

    @Override // com.google.android.libraries.places.internal.zzbpz
    public final void zza(zzbqe zzbqeVar, int i11) {
        synchronized (zzbqeVar) {
            zzbqeVar.zze = 0;
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbpz
    public final boolean zzb(zzbqe zzbqeVar, int i11, int i12) {
        synchronized (zzbqeVar) {
            try {
                if (zzbqeVar.zze != 0) {
                    return false;
                }
                zzbqeVar.zze = -1;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
