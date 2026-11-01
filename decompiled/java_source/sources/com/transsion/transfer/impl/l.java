package com.transsion.transfer.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f55769a = new l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f55770b = "";

    private l() {
    }

    public final String a() {
        return f55770b;
    }

    public final void b(String str) {
        Intrinsics.h(str, "<set-?>");
        f55770b = str;
    }
}
