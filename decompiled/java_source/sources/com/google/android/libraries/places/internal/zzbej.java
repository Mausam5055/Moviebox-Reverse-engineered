package com.google.android.libraries.places.internal;

import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbej implements zzbqp {
    protected abstract zzbei zzc();

    protected abstract zzbis zzd();

    @Override // com.google.android.libraries.places.internal.zzbqp
    public boolean zzp() {
        throw null;
    }

    @Override // com.google.android.libraries.places.internal.zzbqp
    public final void zzr() {
        if (zzd().zzf()) {
            return;
        }
        zzd().zzc();
    }

    protected final void zzs(int i11) {
        zzbei.zzn(zzc(), i11);
    }

    @Override // com.google.android.libraries.places.internal.zzbqp
    public final void zzt() {
        zzc().zzv();
    }

    @Override // com.google.android.libraries.places.internal.zzbqp
    public final void zzu(int i11) {
        zzbei.zzo(zzc(), 2);
    }

    @Override // com.google.android.libraries.places.internal.zzbqp
    public final void zzv(zzazc zzazcVar) {
        zzd().zza(zzazcVar);
    }

    @Override // com.google.android.libraries.places.internal.zzbqp
    public final void zzw(InputStream inputStream) {
        try {
            if (!zzd().zzf()) {
                zzd().zze(inputStream);
            }
        } finally {
            zzbjd.zzi(inputStream);
        }
    }
}
