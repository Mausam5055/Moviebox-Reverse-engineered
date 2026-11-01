package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public enum zzs {
    DEBUG(3),
    ERROR(6),
    INFO(4),
    VERBOSE(2),
    WARN(5);

    zzs(int i11) {
    }

    public static zzs zza(int i11) {
        if (i11 == 2) {
            return VERBOSE;
        }
        if (i11 == 3) {
            return DEBUG;
        }
        if (i11 != 5) {
            return i11 != 6 ? INFO : ERROR;
        }
        return WARN;
    }
}
