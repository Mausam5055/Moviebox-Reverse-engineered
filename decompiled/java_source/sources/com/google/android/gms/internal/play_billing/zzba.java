package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
public class zzba {
    private final String zza;
    private final Class zzb;
    private final boolean zzc;

    protected zzba(String str, Class cls, boolean z10) {
        this(str, cls, z10, true);
    }

    private zzba(String str, Class cls, boolean z10, boolean z11) {
        zzda.zzb(str);
        this.zza = str;
        this.zzb = cls;
        this.zzc = z10;
        System.identityHashCode(this);
        for (int i11 = 0; i11 < 5; i11++) {
        }
    }

    public static zzba zza(String str, Class cls) {
        return new zzba(str, cls, false, false);
    }

    public final String toString() {
        Class cls = this.zzb;
        return getClass().getName() + "/" + this.zza + "[" + cls.getName() + "]";
    }

    public final boolean zzb() {
        return this.zzc;
    }
}
