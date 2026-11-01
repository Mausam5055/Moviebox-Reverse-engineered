package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class t1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f15856b;

    public t1(String tag, String workSpecId) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(workSpecId, "workSpecId");
        this.f15855a = tag;
        this.f15856b = workSpecId;
    }

    public final String a() {
        return this.f15855a;
    }

    public final String b() {
        return this.f15856b;
    }
}
