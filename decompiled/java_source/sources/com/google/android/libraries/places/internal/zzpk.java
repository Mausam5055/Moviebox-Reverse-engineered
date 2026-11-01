package com.google.android.libraries.places.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzpk {
    private static final ThreadLocal zza = new zzpj();

    static char[] zza() {
        char[] cArr = (char[]) zza.get();
        Objects.requireNonNull(cArr);
        return cArr;
    }
}
