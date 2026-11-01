package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabx extends zzatu implements zzavg {
    private static final zzabx zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private long zzi;

    static {
        zzabx zzabxVar = new zzabx();
        zzb = zzabxVar;
        zzatu.zzaE(zzabx.class, zzabxVar);
    }

    private zzabx() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဂ\u0002", new Object[]{"zzf", "zzg", zzabw.zza, "zzh", "zzi"});
        }
        if (i12 == 3) {
            return new zzabx();
        }
        zzabf zzabfVar = null;
        if (i12 == 4) {
            return new zzabv(zzabfVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzabx.class) {
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
