package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f15879b;

    public y(String name, String workSpecId) {
        Intrinsics.h(name, "name");
        Intrinsics.h(workSpecId, "workSpecId");
        this.f15878a = name;
        this.f15879b = workSpecId;
    }

    public final String a() {
        return this.f15878a;
    }

    public final String b() {
        return this.f15879b;
    }
}
