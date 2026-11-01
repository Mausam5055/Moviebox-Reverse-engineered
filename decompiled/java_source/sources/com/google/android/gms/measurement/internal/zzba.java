package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class zzba {
    static final /* synthetic */ int[] zza;

    static {
        int[] iArr = new int[zzjh.values().length];
        zza = iArr;
        try {
            iArr[zzjh.UNINITIALIZED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zza[zzjh.POLICY.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zza[zzjh.DENIED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            zza[zzjh.GRANTED.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
