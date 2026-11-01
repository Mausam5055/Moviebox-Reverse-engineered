package com.google.android.gms.internal.auth;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhr extends zzeu implements zzfx {
    private static final zzhr zzb;
    private zzey zzd = zzeu.zzc();

    static {
        zzhr zzhrVar = new zzhr();
        zzb = zzhrVar;
        zzeu.zzg(zzhr.class, zzhrVar);
    }

    private zzhr() {
    }

    public static zzhr zzk(byte[] bArr) throws zzfa {
        return (zzhr) zzeu.zzb(zzb, bArr);
    }

    @Override // com.google.android.gms.internal.auth.zzeu
    protected final Object zzi(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzeu.zzf(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzd"});
        }
        if (i12 == 3) {
            return new zzhr();
        }
        zzhp zzhpVar = null;
        if (i12 == 4) {
            return new zzhq(zzhpVar);
        }
        if (i12 != 5) {
            return null;
        }
        return zzb;
    }

    public final List zzl() {
        return this.zzd;
    }
}
