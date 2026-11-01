package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaid extends zzatu implements zzavg {
    private static final zzaid zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private boolean zzi;
    private double zzj;
    private int zzk;
    private boolean zzm;
    private zzaho zzn;
    private String zzh = "";
    private zzatz zzl = zzatu.zzau();

    static {
        zzaid zzaidVar = new zzaid();
        zzb = zzaidVar;
        zzatu.zzaE(zzaid.class, zzaidVar);
    }

    private zzaid() {
    }

    public static zzaib zza() {
        return (zzaib) zzb.zzar();
    }

    static /* synthetic */ void zzd(zzaid zzaidVar, String str) {
        zzaidVar.zzf |= 2;
        zzaidVar.zzh = str;
    }

    static /* synthetic */ void zze(zzaid zzaidVar, boolean z10) {
        zzaidVar.zzf |= 4;
        zzaidVar.zzi = z10;
    }

    static /* synthetic */ void zzf(zzaid zzaidVar, double d11) {
        zzaidVar.zzf |= 8;
        zzaidVar.zzj = d11;
    }

    static /* synthetic */ void zzg(zzaid zzaidVar, int i11) {
        zzaidVar.zzf |= 16;
        zzaidVar.zzk = i11;
    }

    static /* synthetic */ void zzh(zzaid zzaidVar, Iterable iterable) {
        zzatz zzatzVar = zzaidVar.zzl;
        if (!zzatzVar.zzc()) {
            zzaidVar.zzl = zzatu.zzav(zzatzVar);
        }
        zzart.zzam(iterable, zzaidVar.zzl);
    }

    static /* synthetic */ void zzi(zzaid zzaidVar, boolean z10) {
        zzaidVar.zzf |= 32;
        zzaidVar.zzm = z10;
    }

    static /* synthetic */ void zzj(zzaid zzaidVar, zzaho zzahoVar) {
        zzahoVar.getClass();
        zzaidVar.zzn = zzahoVar;
        zzaidVar.zzf |= 64;
    }

    static /* synthetic */ void zzk(zzaid zzaidVar, int i11) {
        zzaidVar.zzg = i11 - 1;
        zzaidVar.zzf |= 1;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004က\u0003\u0005င\u0004\u0006'\u0007ဇ\u0005\bဉ\u0006", new Object[]{"zzf", "zzg", zzaic.zza, "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn"});
        }
        if (i12 == 3) {
            return new zzaid();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzaib(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaid.class) {
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
