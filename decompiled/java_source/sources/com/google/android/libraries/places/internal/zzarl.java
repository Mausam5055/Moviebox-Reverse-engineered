package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzarl extends zzatu implements zzavg {
    private static final zzarl zzb;
    private static volatile zzavn zze;
    private int zzf = 0;
    private Object zzg;

    static {
        zzarl zzarlVar = new zzarl();
        zzb = zzarlVar;
        zzatu.zzaE(zzarl.class, zzarlVar);
    }

    private zzarl() {
    }

    public static zzark zza() {
        return (zzark) zzb.zzar();
    }

    static /* synthetic */ void zzd(zzarl zzarlVar, zzaki zzakiVar) {
        zzakiVar.getClass();
        zzarlVar.zzg = zzakiVar;
        zzarlVar.zzf = 1;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001<\u0000", new Object[]{"zzg", "zzf", zzaki.class});
        }
        if (i12 == 3) {
            return new zzarl();
        }
        zzard zzardVar = null;
        if (i12 == 4) {
            return new zzark(zzardVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzarl.class) {
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
