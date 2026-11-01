package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public class zzpr {
    private final String zza;
    private final Class zzb;
    private final boolean zzc;

    protected zzpr(String str, Class cls, boolean z10) {
        this(str, cls, z10, true);
    }

    private zzpr(String str, Class cls, boolean z10, boolean z11) {
        zzrr.zzb(str);
        this.zza = str;
        this.zzb = cls;
        this.zzc = z10;
        System.identityHashCode(this);
        for (int i11 = 0; i11 < 5; i11++) {
        }
    }

    public static zzpr zza(String str, Class cls) {
        return new zzpr(str, cls, false, false);
    }

    public final String toString() {
        Class cls = this.zzb;
        return getClass().getName() + "/" + this.zza + "[" + cls.getName() + "]";
    }

    public final boolean zzb() {
        return this.zzc;
    }
}
