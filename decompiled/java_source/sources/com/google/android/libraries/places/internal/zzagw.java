package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzagw extends zzatu implements zzavg {
    private static final zzagw zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzafe zzg;
    private int zzh;
    private int zzi;
    private zzaho zzj;

    static {
        zzagw zzagwVar = new zzagw();
        zzb = zzagwVar;
        zzatu.zzaE(zzagw.class, zzagwVar);
    }

    private zzagw() {
    }

    public static zzagu zza() {
        return (zzagu) zzb.zzar();
    }

    static /* synthetic */ void zzd(zzagw zzagwVar, int i11) {
        zzagwVar.zzf |= 4;
        zzagwVar.zzi = i11;
    }

    static /* synthetic */ void zze(zzagw zzagwVar, zzaho zzahoVar) {
        zzahoVar.getClass();
        zzagwVar.zzj = zzahoVar;
        zzagwVar.zzf |= 8;
    }

    static /* synthetic */ void zzf(zzagw zzagwVar, int i11) {
        zzagwVar.zzh = i11 - 1;
        zzagwVar.zzf |= 2;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003င\u0002\u0004ဉ\u0003", new Object[]{"zzf", "zzg", "zzh", zzagv.zza, "zzi", "zzj"});
        }
        if (i12 == 3) {
            return new zzagw();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzagu(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzagw.class) {
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
