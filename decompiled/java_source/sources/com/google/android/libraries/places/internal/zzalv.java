package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzalv extends zzatu implements zzavg {
    private static final zzalv zzb;
    private static volatile zzavn zze;
    private int zzf = 0;
    private Object zzg;

    static {
        zzalv zzalvVar = new zzalv();
        zzb = zzalvVar;
        zzatu.zzaE(zzalv.class, zzalvVar);
    }

    private zzalv() {
    }

    public static zzalu zza() {
        return (zzalu) zzb.zzar();
    }

    static /* synthetic */ void zzd(zzalv zzalvVar, zzaki zzakiVar) {
        zzakiVar.getClass();
        zzalvVar.zzg = zzakiVar;
        zzalvVar.zzf = 1;
    }

    static /* synthetic */ void zze(zzalv zzalvVar, zzamq zzamqVar) {
        zzamqVar.getClass();
        zzalvVar.zzg = zzamqVar;
        zzalvVar.zzf = 2;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000", new Object[]{"zzg", "zzf", zzaki.class, zzamq.class});
        }
        if (i12 == 3) {
            return new zzalv();
        }
        zzals zzalsVar = null;
        if (i12 == 4) {
            return new zzalu(zzalsVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzalv.class) {
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
