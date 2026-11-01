package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzana extends zzatu implements zzavg {
    private static final zzana zzb;
    private static volatile zzavn zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;

    static {
        zzana zzanaVar = new zzana();
        zzb = zzanaVar;
        zzatu.zzaE(zzana.class, zzanaVar);
    }

    private zzana() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0007\u0002\u0007\u0003\u0007", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i12 == 3) {
            return new zzana();
        }
        zzamu zzamuVar = null;
        if (i12 == 4) {
            return new zzamz(zzamuVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzana.class) {
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
