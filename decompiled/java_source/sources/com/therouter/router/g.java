package com.therouter.router;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Navigator f40791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function0 f40792b;

    public g(Navigator navigator, Function0 action) {
        Intrinsics.h(navigator, "navigator");
        Intrinsics.h(action, "action");
        this.f40791a = navigator;
        this.f40792b = action;
    }

    public final Function0 a() {
        return this.f40792b;
    }

    public boolean equals(Object obj) {
        return obj instanceof g ? Intrinsics.c(((g) obj).f40791a, this.f40791a) : super.equals(obj);
    }

    public int hashCode() {
        return this.f40791a.hashCode() + 1;
    }
}
