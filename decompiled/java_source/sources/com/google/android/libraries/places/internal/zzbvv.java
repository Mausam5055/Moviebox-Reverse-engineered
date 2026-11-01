package com.google.android.libraries.places.internal;

import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@JvmName
@SourceDebugExtension
public final class zzbvv {
    private static final zzbwa zza = new zzbwa();

    public static final String zza(int i11) {
        int i12 = 0;
        char[] cArr = {zzbwy.zza()[i11 >> 28], zzbwy.zza()[(i11 >> 24) & 15], zzbwy.zza()[(i11 >> 20) & 15], zzbwy.zza()[(i11 >> 16) & 15], zzbwy.zza()[(i11 >> 12) & 15], zzbwy.zza()[(i11 >> 8) & 15], zzbwy.zza()[(i11 >> 4) & 15], zzbwy.zza()[i11 & 15]};
        while (i12 < 8 && cArr[i12] == '0') {
            i12++;
        }
        return StringsKt.C(cArr, i12, 8);
    }

    public static final void zzb(long j11, long j12, long j13) {
        if ((j12 | j13) < 0 || j12 > j11 || j11 - j12 < j13) {
            throw new ArrayIndexOutOfBoundsException("size=" + j11 + " offset=" + j12 + " byteCount=" + j13);
        }
    }

    public static final boolean zzc(byte[] a11, int i11, byte[] b11, int i12, int i13) {
        Intrinsics.h(a11, "a");
        Intrinsics.h(b11, "b");
        for (int i14 = 0; i14 < i13; i14++) {
            if (a11[i14 + i11] != b11[i14 + i12]) {
                return false;
            }
        }
        return true;
    }
}
