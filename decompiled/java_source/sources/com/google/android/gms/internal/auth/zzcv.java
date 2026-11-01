package com.google.android.gms.internal.auth;

import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
final class zzcv extends zzdc {
    zzcv(zzcz zzczVar, String str, Long l11, boolean z10) {
        super(zzczVar, str, l11, true, null);
    }

    @Override // com.google.android.gms.internal.auth.zzdc
    final /* bridge */ /* synthetic */ Object zza(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            Log.e("PhenotypeFlag", "Invalid long value for " + super.zzc() + ": " + ((String) obj));
            return null;
        }
    }
}
