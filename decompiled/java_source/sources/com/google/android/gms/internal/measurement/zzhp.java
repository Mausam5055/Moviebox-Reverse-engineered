package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
final class zzhp extends zzhj<Double> {
    zzhp(zzhr zzhrVar, String str, Double d11, boolean z10) {
        super(zzhrVar, str, d11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzhj
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final Double zza(Object obj) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        Log.e("PhenotypeFlag", "Invalid double value for " + super.zzb() + ": " + String.valueOf(obj));
        return null;
    }
}
