package com.google.android.libraries.places.internal;

import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@JvmName
@SourceDebugExtension
public final class zzbwz {
    /* JADX WARN: Code duplicated, block: B:11:0x002d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x002e  */
    public static final int zza(zzbwp zzbwpVar, int i11) {
        int i12;
        Intrinsics.h(zzbwpVar, "<this>");
        int[] iArrZzq = zzbwpVar.zzq();
        int length = zzbwpVar.zzr().length;
        Intrinsics.h(iArrZzq, "<this>");
        int i13 = length - 1;
        int i14 = 0;
        while (i14 <= i13) {
            int i15 = i11 + 1;
            i12 = (i14 + i13) >>> 1;
            int i16 = iArrZzq[i12];
            if (i16 < i15) {
                i14 = i12 + 1;
            } else {
                if (i16 <= i15) {
                    if (i12 >= 0) {
                        return i12;
                    }
                    return ~i12;
                }
                i13 = i12 - 1;
            }
        }
        i12 = (-i14) - 1;
        if (i12 >= 0) {
            return i12;
        }
        return ~i12;
    }
}
