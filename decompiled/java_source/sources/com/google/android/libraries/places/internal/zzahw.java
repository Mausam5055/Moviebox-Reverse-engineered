package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzahw extends zzatu implements zzavg {
    private static final zzahw zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;

    static {
        zzahw zzahwVar = new zzahw();
        zzb = zzahwVar;
        zzatu.zzaE(zzahw.class, zzahwVar);
    }

    private zzahw() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဋ\u0000", new Object[]{"zzf", "zzg"});
        }
        if (i12 == 3) {
            return new zzahw();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzahv(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzahw.class) {
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
