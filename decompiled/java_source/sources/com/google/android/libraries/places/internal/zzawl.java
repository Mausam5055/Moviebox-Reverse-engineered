package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzawl extends zzatu implements zzavg {
    private static final zzawl zzb;
    private static volatile zzavn zze;
    private long zzf;
    private int zzg;

    static {
        zzawl zzawlVar = new zzawl();
        zzb = zzawlVar;
        zzatu.zzaE(zzawl.class, zzawlVar);
    }

    private zzawl() {
    }

    public static zzawk zzf() {
        return (zzawk) zzb.zzar();
    }

    public static zzawl zzh() {
        return zzb;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return new zzavr(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"zzf", "zzg"});
        }
        if (i12 == 3) {
            return new zzawl();
        }
        zzawj zzawjVar = null;
        if (i12 == 4) {
            return new zzawk(zzawjVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzawl.class) {
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

    public final int zzc() {
        return this.zzg;
    }

    public final long zze() {
        return this.zzf;
    }
}
