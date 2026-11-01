package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaly extends zzatu implements zzavg {
    private static final zzaly zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzalv zzh;
    private zzalx zzi;
    private zzaxp zzn;
    private int zzo;
    private boolean zzp;
    private String zzg = "";
    private zzauc zzj = zzatu.zzax();
    private zzauc zzk = zzatu.zzax();
    private String zzl = "";
    private String zzm = "";
    private String zzq = "";

    static {
        zzaly zzalyVar = new zzaly();
        zzb = zzalyVar;
        zzatu.zzaE(zzaly.class, zzalyVar);
    }

    private zzaly() {
    }

    public static zzalt zza() {
        return (zzalt) zzb.zzar();
    }

    public static zzaly zzd() {
        return zzb;
    }

    static /* synthetic */ void zzf(zzaly zzalyVar, zzalv zzalvVar) {
        zzalvVar.getClass();
        zzalyVar.zzh = zzalvVar;
        zzalyVar.zzf |= 1;
    }

    static /* synthetic */ void zzg(zzaly zzalyVar, zzalx zzalxVar) {
        zzalxVar.getClass();
        zzalyVar.zzi = zzalxVar;
        zzalyVar.zzf |= 2;
    }

    static /* synthetic */ void zzh(zzaly zzalyVar, String str) {
        str.getClass();
        zzauc zzaucVar = zzalyVar.zzj;
        if (!zzaucVar.zzc()) {
            zzalyVar.zzj = zzatu.zzay(zzaucVar);
        }
        zzalyVar.zzj.add(str);
    }

    static /* synthetic */ void zzi(zzaly zzalyVar, String str) {
        str.getClass();
        zzauc zzaucVar = zzalyVar.zzk;
        if (!zzaucVar.zzc()) {
            zzalyVar.zzk = zzatu.zzay(zzaucVar);
        }
        zzalyVar.zzk.add(str);
    }

    static /* synthetic */ void zzk(zzaly zzalyVar, zzaxp zzaxpVar) {
        zzaxpVar.getClass();
        zzalyVar.zzn = zzaxpVar;
        zzalyVar.zzf |= 4;
    }

    static /* synthetic */ void zzm(zzaly zzalyVar, String str) {
        str.getClass();
        zzalyVar.zzq = str;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0002\u0000\u0001Ȉ\u0002ဉ\u0000\u0003ဉ\u0001\u0004Ț\u0005Ț\u0006Ȉ\u0007Ȉ\bဉ\u0002\t\u0004\n\u0007\u000bȈ", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq"});
        }
        if (i12 == 3) {
            return new zzaly();
        }
        zzals zzalsVar = null;
        if (i12 == 4) {
            return new zzalt(zzalsVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaly.class) {
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
