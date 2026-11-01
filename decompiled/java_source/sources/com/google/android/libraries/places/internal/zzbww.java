package com.google.android.libraries.places.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbww {
    public static final String zza(byte[] bArr) {
        Intrinsics.h(bArr, "<this>");
        return new String(bArr, Charsets.UTF_8);
    }

    public static final byte[] zzb(String str) {
        Intrinsics.h(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "getBytes(...)");
        return bytes;
    }
}
