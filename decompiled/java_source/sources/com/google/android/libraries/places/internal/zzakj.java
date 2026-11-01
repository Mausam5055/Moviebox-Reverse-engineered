package com.google.android.libraries.places.internal;

import okio.Utf8;

/* JADX INFO: loaded from: classes4.dex */
public final class zzakj {
    /* JADX WARN: Code duplicated, block: B:14:0x0022 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0035  */
    /* JADX WARN: Code duplicated, block: B:39:0x0064  */
    /* JADX WARN: Code duplicated, block: B:44:0x007f  */
    /* JADX WARN: Code duplicated, block: B:45:0x0083  */
    /* JADX WARN: Code duplicated, block: B:54:0x0024 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x003d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x004b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0074 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x006e A[SYNTHETIC] */
    public static String zza(String str, int i11) {
        int length;
        StringBuilder sb2;
        char cCharAt;
        int iCodePointAt;
        int i12;
        int iCodePointAt2;
        int length2 = str.length();
        int iCharCount = 0;
        int i13 = 0;
        while (i13 != length2) {
            int i14 = i13 + 1;
            char cCharAt2 = str.charAt(i13);
            if (cCharAt2 <= '~') {
                if (cCharAt2 < ' ') {
                    if (cCharAt2 < 55296) {
                        if (cCharAt2 > 57343) {
                            iCodePointAt2 = Character.codePointAt(str, i13);
                            if (iCodePointAt2 < 65536 && (iCodePointAt2 & 65534) != 65534) {
                                i13 += 2;
                            }
                        } else if (cCharAt2 >= 64976 && (cCharAt2 <= 65007 || cCharAt2 >= 65534)) {
                        }
                        length = str.length();
                        sb2 = new StringBuilder(length);
                        while (iCharCount < length) {
                            cCharAt = str.charAt(iCharCount);
                            if (zzb(cCharAt)) {
                                sb2.append(cCharAt);
                                iCharCount++;
                            } else {
                                iCodePointAt = Character.codePointAt(str, iCharCount);
                                if (true != zzb(iCodePointAt)) {
                                    i12 = Utf8.REPLACEMENT_CODE_POINT;
                                } else {
                                    i12 = iCodePointAt;
                                }
                                sb2.appendCodePoint(i12);
                                iCharCount += Character.charCount(iCodePointAt);
                            }
                        }
                        return sb2.toString();
                    }
                    if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != '\t' && cCharAt2 != '\f') {
                        length = str.length();
                        sb2 = new StringBuilder(length);
                        while (iCharCount < length) {
                            cCharAt = str.charAt(iCharCount);
                            if (zzb(cCharAt)) {
                                sb2.append(cCharAt);
                                iCharCount++;
                            } else {
                                iCodePointAt = Character.codePointAt(str, iCharCount);
                                if (true != zzb(iCodePointAt)) {
                                    i12 = Utf8.REPLACEMENT_CODE_POINT;
                                } else {
                                    i12 = iCodePointAt;
                                }
                                sb2.appendCodePoint(i12);
                                iCharCount += Character.charCount(iCodePointAt);
                            }
                        }
                        return sb2.toString();
                    }
                }
            } else if (cCharAt2 >= 55296 || cCharAt2 < 160) {
                if (cCharAt2 < 55296) {
                    if (cCharAt2 > 57343) {
                        iCodePointAt2 = Character.codePointAt(str, i13);
                        if (iCodePointAt2 < 65536) {
                        }
                    } else if (cCharAt2 >= 64976) {
                    }
                    length = str.length();
                    sb2 = new StringBuilder(length);
                    while (iCharCount < length) {
                        cCharAt = str.charAt(iCharCount);
                        if (zzb(cCharAt)) {
                            sb2.append(cCharAt);
                            iCharCount++;
                        } else {
                            iCodePointAt = Character.codePointAt(str, iCharCount);
                            if (true != zzb(iCodePointAt)) {
                                i12 = Utf8.REPLACEMENT_CODE_POINT;
                            } else {
                                i12 = iCodePointAt;
                            }
                            sb2.appendCodePoint(i12);
                            iCharCount += Character.charCount(iCodePointAt);
                        }
                    }
                    return sb2.toString();
                }
                if (cCharAt2 != '\n') {
                    length = str.length();
                    sb2 = new StringBuilder(length);
                    while (iCharCount < length) {
                        cCharAt = str.charAt(iCharCount);
                        if (zzb(cCharAt)) {
                            sb2.append(cCharAt);
                            iCharCount++;
                        } else {
                            iCodePointAt = Character.codePointAt(str, iCharCount);
                            if (true != zzb(iCodePointAt)) {
                                i12 = Utf8.REPLACEMENT_CODE_POINT;
                            } else {
                                i12 = iCodePointAt;
                            }
                            sb2.appendCodePoint(i12);
                            iCharCount += Character.charCount(iCodePointAt);
                        }
                    }
                    return sb2.toString();
                }
            }
            i13 = i14;
        }
        return str;
    }

    public static boolean zzb(int i11) {
        if (i11 <= 126) {
            return i11 >= 32 || i11 == 10 || i11 == 13 || i11 == 9 || i11 == 12;
        }
        if (i11 < 55296) {
            return i11 >= 160;
        }
        if (i11 < 64976) {
            return i11 > 57343;
        }
        return i11 > 65007 && (i11 & 65534) != 65534 && i11 <= 1114111;
    }
}
