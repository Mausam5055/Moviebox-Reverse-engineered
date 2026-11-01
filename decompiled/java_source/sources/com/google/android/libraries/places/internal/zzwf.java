package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwf extends zzatu implements zzavg {
    private static final zzwf zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzwd zzg;
    private zzwd zzh;
    private byte zzi = 2;

    static {
        zzwf zzwfVar = new zzwf();
        zzb = zzwfVar;
        zzatu.zzaE(zzwf.class, zzwfVar);
    }

    private zzwf() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return Byte.valueOf(this.zzi);
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001ᐉ\u0000\u0002ᐉ\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i12 == 3) {
            return new zzwf();
        }
        zzwb zzwbVar = null;
        if (i12 == 4) {
            return new zzwe(zzwbVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            this.zzi = obj == null ? (byte) 0 : (byte) 1;
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzwf.class) {
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
