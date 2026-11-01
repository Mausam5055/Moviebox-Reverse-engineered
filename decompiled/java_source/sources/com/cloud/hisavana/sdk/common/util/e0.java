package com.cloud.hisavana.sdk.common.util;

import kotlin.Unit;

/* JADX INFO: loaded from: classes3.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e0 f22156a = new e0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile String f22157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile boolean f22158c;

    private e0() {
    }

    public final String a() {
        return f22157b;
    }

    public final boolean b() {
        return f22158c;
    }

    public final void c(String str) {
        if (f22158c) {
            return;
        }
        synchronized (this) {
            if (f22158c) {
                return;
            }
            f22157b = str;
            f22158c = true;
            Unit unit = Unit.f67061a;
        }
    }
}
