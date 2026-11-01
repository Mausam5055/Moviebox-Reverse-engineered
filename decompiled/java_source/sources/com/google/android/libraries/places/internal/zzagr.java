package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzagr extends zzatu implements zzavg {
    private static final zzagr zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzwd zzg;
    private byte zzh = 2;

    static {
        zzagr zzagrVar = new zzagr();
        zzb = zzagrVar;
        zzatu.zzaE(zzagr.class, zzagrVar);
    }

    private zzagr() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return Byte.valueOf(this.zzh);
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001ᐉ\u0000", new Object[]{"zzf", "zzg"});
        }
        if (i12 == 3) {
            return new zzagr();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzagq(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            this.zzh = obj == null ? (byte) 0 : (byte) 1;
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzagr.class) {
                try {
                    zzatpVar = zze;
                    if (zzatpVar == null) {
                        zzatpVar = new zzatp(zzb);
                        zze = zzatpVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return zzatpVar;
    }
}
