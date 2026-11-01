package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaez extends zzatu implements zzavg {
    private static final zzaez zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private zzaen zzl;
    private zzaeg zzm;
    private zzaeb zzn;
    private zzaip zzo;
    private zzaei zzp;
    private zzael zzq;
    private zzair zzr;
    private zzaiz zzs;
    private zzaiv zzt;
    private int zzu;

    static {
        zzaez zzaezVar = new zzaez();
        zzb = zzaezVar;
        zzatu.zzaE(zzaez.class, zzaezVar);
    }

    private zzaez() {
    }

    public static zzaeu zza() {
        return (zzaeu) zzb.zzar();
    }

    static /* synthetic */ void zzd(zzaez zzaezVar, int i11) {
        zzaezVar.zzf |= 4;
        zzaezVar.zzi = i11;
    }

    static /* synthetic */ void zze(zzaez zzaezVar, zzaen zzaenVar) {
        zzaenVar.getClass();
        zzaezVar.zzl = zzaenVar;
        zzaezVar.zzf |= 32;
    }

    static /* synthetic */ void zzf(zzaez zzaezVar, zzaeb zzaebVar) {
        zzaebVar.getClass();
        zzaezVar.zzn = zzaebVar;
        zzaezVar.zzf |= 128;
    }

    static /* synthetic */ void zzg(zzaez zzaezVar, zzaei zzaeiVar) {
        zzaeiVar.getClass();
        zzaezVar.zzp = zzaeiVar;
        zzaezVar.zzf |= 512;
    }

    static /* synthetic */ void zzh(zzaez zzaezVar, zzaiz zzaizVar) {
        zzaizVar.getClass();
        zzaezVar.zzs = zzaizVar;
        zzaezVar.zzf |= 4096;
    }

    static /* synthetic */ void zzi(zzaez zzaezVar, int i11) {
        zzaezVar.zzg = i11 - 1;
        zzaezVar.zzf |= 1;
    }

    static /* synthetic */ void zzj(zzaez zzaezVar, int i11) {
        zzaezVar.zzh = i11 - 1;
        zzaezVar.zzf |= 2;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003င\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဉ\u0007\tဉ\b\nဉ\t\u000bဉ\n\fဉ\u000b\rဉ\f\u000eဉ\r\u000f᠌\u000e", new Object[]{"zzf", "zzg", zzaew.zza, "zzh", zzaey.zza, "zzi", "zzj", zzaev.zza, "zzk", zzaet.zza, "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", zzaex.zza});
        }
        if (i12 == 3) {
            return new zzaez();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzaeu(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaez.class) {
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
