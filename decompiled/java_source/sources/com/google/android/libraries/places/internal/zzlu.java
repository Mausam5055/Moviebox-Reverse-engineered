package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlu {
    public static String zza(String str) {
        int length = str.length();
        int i11 = 0;
        while (i11 < length) {
            if (zzb(str.charAt(i11))) {
                char[] charArray = str.toCharArray();
                while (i11 < length) {
                    char c11 = charArray[i11];
                    if (zzb(c11)) {
                        charArray[i11] = (char) (c11 ^ ' ');
                    }
                    i11++;
                }
                return String.valueOf(charArray);
            }
            i11++;
        }
        return str;
    }

    public static boolean zzb(char c11) {
        return c11 >= 'A' && c11 <= 'Z';
    }
}
