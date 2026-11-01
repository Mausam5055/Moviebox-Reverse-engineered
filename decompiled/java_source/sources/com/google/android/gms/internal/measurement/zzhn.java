package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
final class zzhn extends zzhj<Long> {
    zzhn(zzhr zzhrVar, String str, Long l11, boolean z10) {
        super(zzhrVar, str, l11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzhj
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final Long zza(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        Log.e("PhenotypeFlag", "Invalid long value for " + super.zzb() + ": " + String.valueOf(obj));
        return null;
    }
}
