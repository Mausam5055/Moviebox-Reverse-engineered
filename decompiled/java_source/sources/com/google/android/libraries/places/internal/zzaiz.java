package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaiz extends zzatu implements zzavg {
    private static final zzaiz zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzaiz zzaizVar = new zzaiz();
        zzb = zzaizVar;
        zzatu.zzaE(zzaiz.class, zzaizVar);
    }

    private zzaiz() {
    }

    public static zzaiy zza() {
        return (zzaiy) zzb.zzar();
    }

    static /* synthetic */ void zzd(zzaiz zzaizVar, int i11) {
        zzaizVar.zzf |= 1;
        zzaizVar.zzg = i11;
    }

    static /* synthetic */ void zze(zzaiz zzaizVar, int i11) {
        zzaizVar.zzf |= 2;
        zzaizVar.zzh = i11;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i12 == 3) {
            return new zzaiz();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzaiy(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaiz.class) {
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
