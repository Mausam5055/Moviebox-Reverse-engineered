package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzrv implements zzru {
    zzrv() {
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c  */
    /* JADX WARN: Code duplicated, block: B:16:0x002f A[RETURN] */
    @Override // com.google.android.libraries.places.internal.zzru
    public final StackTraceElement zza(Class cls, int i11) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        String name = cls.getName();
        int i12 = 3;
        boolean z10 = false;
        while (i12 < stackTrace.length) {
            if (stackTrace[i12].getClassName().equals(name)) {
                z10 = true;
            } else {
                if (z10) {
                    if (i12 != -1) {
                        return stackTrace[i12];
                    }
                    return null;
                }
                z10 = false;
            }
            i12++;
        }
        i12 = -1;
        if (i12 != -1) {
            return stackTrace[i12];
        }
        return null;
    }
}
