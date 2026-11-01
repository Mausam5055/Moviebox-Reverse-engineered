package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
public final class zzil extends zzex implements zzgd {
    private static final zzil zzb;
    private int zzd;
    private String zze = "";

    static {
        zzil zzilVar = new zzil();
        zzb = zzilVar;
        zzex.zzp(zzil.class, zzilVar);
    }

    private zzil() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzex
    protected final Object zzu(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzex.zzm(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i12 == 3) {
            return new zzil();
        }
        zzij zzijVar = null;
        if (i12 == 4) {
            return new zzik(zzijVar);
        }
        if (i12 != 5) {
            return null;
        }
        return zzb;
    }
}
