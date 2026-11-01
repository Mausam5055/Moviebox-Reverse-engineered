package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzalx extends zzatu implements zzavg {
    private static final zzalx zzb;
    private static volatile zzavn zze;
    private int zzf = 0;
    private Object zzg;

    static {
        zzalx zzalxVar = new zzalx();
        zzb = zzalxVar;
        zzatu.zzaE(zzalx.class, zzalxVar);
    }

    private zzalx() {
    }

    public static zzalw zza() {
        return (zzalw) zzb.zzar();
    }

    static /* synthetic */ void zzd(zzalx zzalxVar, zzaki zzakiVar) {
        zzakiVar.getClass();
        zzalxVar.zzg = zzakiVar;
        zzalxVar.zzf = 1;
    }

    static /* synthetic */ void zze(zzalx zzalxVar, zzamq zzamqVar) {
        zzamqVar.getClass();
        zzalxVar.zzg = zzamqVar;
        zzalxVar.zzf = 2;
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
            return new zzalx();
        }
        zzals zzalsVar = null;
        if (i12 == 4) {
            return new zzalw(zzalsVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzalx.class) {
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
