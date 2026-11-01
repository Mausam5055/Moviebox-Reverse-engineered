package com.tn.tranpay.helper;

import android.util.Base64;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d {
    public static final String a(String str) {
        Intrinsics.h(str, "<this>");
        byte[] decodedBytes = Base64.decode(str, 2);
        Intrinsics.g(decodedBytes, "decodedBytes");
        return new String(decodedBytes, Charsets.UTF_8);
    }
}
