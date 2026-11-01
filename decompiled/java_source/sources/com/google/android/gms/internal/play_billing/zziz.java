package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
public final class zziz extends zzex implements zzgd {
    private static final zziz zzb;
    private int zzd;
    private int zze;

    static {
        zziz zzizVar = new zziz();
        zzb = zzizVar;
        zzex.zzp(zziz.class, zzizVar);
    }

    private zziz() {
    }

    public static zziz zzw() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzex
    protected final Object zzu(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzex.zzm(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zziy.zza});
        }
        if (i12 == 3) {
            return new zziz();
        }
        zziw zziwVar = null;
        if (i12 == 4) {
            return new zzix(zziwVar);
        }
        if (i12 != 5) {
            return null;
        }
        return zzb;
    }
}
