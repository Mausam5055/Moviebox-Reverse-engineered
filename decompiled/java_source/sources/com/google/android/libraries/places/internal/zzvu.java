package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvu extends zzatu implements zzavg {
    private static final zzvu zzb;
    private static volatile zzavn zze;

    static {
        zzvu zzvuVar = new zzvu();
        zzb = zzvuVar;
        zzatu.zzaE(zzvu.class, zzvuVar);
    }

    private zzvu() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        zzvs zzvsVar = null;
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0000", null);
        }
        if (i12 == 3) {
            return new zzvu();
        }
        if (i12 == 4) {
            return new zzvt(zzvsVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzvu.class) {
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
