package com.google.android.libraries.places.internal;

import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import okio.Utf8;

/* JADX INFO: loaded from: classes4.dex */
@JvmName
public final class zzbvu {
    private static final byte[] zza;
    private static final byte[] zzb;

    static {
        zzbwe zzbweVar = zzbwf.zza;
        zza = zzbwe.zza("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").zzn();
        zzb = zzbwe.zza("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").zzn();
    }

    public static /* synthetic */ String zza(byte[] bArr, byte[] bArr2, int i11, Object obj) {
        byte[] map = zza;
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(map, "map");
        int length = bArr.length;
        int i12 = length + 2;
        int i13 = length - (length % 3);
        byte[] bArr3 = new byte[(i12 / 3) * 4];
        int i14 = 0;
        int i15 = 0;
        while (i14 < i13) {
            int i16 = i15 + 3;
            byte b11 = bArr[i14];
            int i17 = i14 + 2;
            byte b12 = bArr[i14 + 1];
            i14 += 3;
            byte b13 = bArr[i17];
            bArr3[i15] = map[(b11 & 255) >> 2];
            bArr3[i15 + 1] = map[((b11 & 3) << 4) | ((b12 & 255) >> 4)];
            bArr3[i15 + 2] = map[((b12 & 15) << 2) | ((b13 & 255) >> 6)];
            i15 += 4;
            bArr3[i16] = map[b13 & Utf8.REPLACEMENT_BYTE];
        }
        int length2 = bArr.length - i13;
        if (length2 == 1) {
            byte b14 = bArr[i14];
            bArr3[i15] = map[(b14 & 255) >> 2];
            bArr3[i15 + 1] = map[(b14 & 3) << 4];
            bArr3[i15 + 2] = 61;
            bArr3[i15 + 3] = 61;
        } else if (length2 == 2) {
            int i18 = i14 + 1;
            byte b15 = bArr[i14];
            byte b16 = bArr[i18];
            bArr3[i15] = map[(b15 & 255) >> 2];
            bArr3[i15 + 1] = map[((b15 & 3) << 4) | ((b16 & 255) >> 4)];
            bArr3[i15 + 2] = map[(b16 & 15) << 2];
            bArr3[i15 + 3] = 61;
        }
        return zzbww.zza(bArr3);
    }
}
