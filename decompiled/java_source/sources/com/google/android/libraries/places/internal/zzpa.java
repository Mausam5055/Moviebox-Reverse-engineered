package com.google.android.libraries.places.internal;

import java.lang.reflect.Array;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpa {
    private static final char[][] zza = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 0, 0);
    private final char[][] zzb;

    private zzpa(char[][] cArr) {
        this.zzb = cArr;
    }

    public static zzpa zza(Map map) {
        char[][] cArr;
        if (map.isEmpty()) {
            cArr = zza;
        } else {
            char[][] cArr2 = new char[((Character) Collections.max(map.keySet())).charValue() + 1][];
            for (Character ch2 : map.keySet()) {
                cArr2[ch2.charValue()] = ((String) map.get(ch2)).toCharArray();
            }
            cArr = cArr2;
        }
        return new zzpa(cArr);
    }

    final char[][] zzb() {
        return this.zzb;
    }
}
