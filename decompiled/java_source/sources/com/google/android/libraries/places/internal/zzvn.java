package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvn extends zzatu implements zzavg {
    private static final zzvn zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzatz zzg = zzatu.zzau();
    private zzatz zzh = zzatu.zzau();
    private int zzi;
    private int zzj;
    private long zzk;
    private int zzl;

    static {
        zzvn zzvnVar = new zzvn();
        zzb = zzvnVar;
        zzatu.zzaE(zzvn.class, zzvnVar);
    }

    private zzvn() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u0016\u0002\u0016\u0003င\u0000\u0004င\u0001\u0005ဂ\u0002\u0006င\u0003", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i12 == 3) {
            return new zzvn();
        }
        zzvj zzvjVar = null;
        if (i12 == 4) {
            return new zzvm(zzvjVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzvn.class) {
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
