package com.google.android.gms.common.util;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;

/* JADX INFO: loaded from: classes3.dex */
@ShowFirstParty
@KeepForSdk
public class Hex {
    private static final char[] zza = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final char[] zzb = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    @NonNull
    @KeepForSdk
    public static String bytesToStringLowercase(@NonNull byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i11 = 0;
        for (byte b11 : bArr) {
            char[] cArr2 = zzb;
            cArr[i11] = cArr2[(b11 & 255) >>> 4];
            cArr[i11 + 1] = cArr2[b11 & 15];
            i11 += 2;
        }
        return new String(cArr);
    }

    @NonNull
    @KeepForSdk
    public static String bytesToStringUppercase(@NonNull byte[] bArr) {
        return bytesToStringUppercase(bArr, false);
    }

    @NonNull
    @KeepForSdk
    public static String bytesToStringUppercase(@NonNull byte[] bArr, boolean z10) {
        int length = bArr.length;
        StringBuilder sb2 = new StringBuilder(length + length);
        for (int i11 = 0; i11 < length && (!z10 || i11 != length - 1 || (bArr[i11] & 255) != 0); i11++) {
            char[] cArr = zza;
            sb2.append(cArr[(bArr[i11] & 240) >>> 4]);
            sb2.append(cArr[bArr[i11] & 15]);
        }
        return sb2.toString();
    }

    @NonNull
    @KeepForSdk
    public static byte[] stringToBytes(@NonNull String str) throws IllegalArgumentException {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("Hex string has odd number of characters");
        }
        byte[] bArr = new byte[length / 2];
        int i11 = 0;
        while (i11 < length) {
            int i12 = i11 + 2;
            bArr[i11 / 2] = (byte) Integer.parseInt(str.substring(i11, i12), 16);
            i11 = i12;
        }
        return bArr;
    }
}
