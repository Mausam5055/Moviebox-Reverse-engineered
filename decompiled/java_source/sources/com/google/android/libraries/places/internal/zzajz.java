package com.google.android.libraries.places.internal;

import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
final class zzajz {
    private final String zza;
    private volatile Logger zzb;

    zzajz(Class cls) {
        this.zza = cls.getName();
    }

    final Logger zza() {
        Logger logger = this.zzb;
        if (logger != null) {
            return logger;
        }
        synchronized (this) {
            try {
                Logger logger2 = this.zzb;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.zza);
                this.zzb = logger3;
                return logger3;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
