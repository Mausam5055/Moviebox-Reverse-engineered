package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzahh extends zzatu implements zzavg {
    private static final zzahh zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzh;
    private boolean zzj;
    private zzauc zzg = zzatu.zzax();
    private String zzi = "";

    static {
        zzahh zzahhVar = new zzahh();
        zzb = zzahhVar;
        zzatu.zzaE(zzahh.class, zzahhVar);
    }

    private zzahh() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001a\u0002᠌\u0000\u0003ဈ\u0001\u0004ဇ\u0002", new Object[]{"zzf", "zzg", "zzh", zzahe.zza, "zzi", "zzj"});
        }
        if (i12 == 3) {
            return new zzahh();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzahg(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzahh.class) {
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
