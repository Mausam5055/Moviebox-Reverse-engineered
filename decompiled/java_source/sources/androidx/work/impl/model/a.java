package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f15710b;

    public a(String workSpecId, String prerequisiteId) {
        Intrinsics.h(workSpecId, "workSpecId");
        Intrinsics.h(prerequisiteId, "prerequisiteId");
        this.f15709a = workSpecId;
        this.f15710b = prerequisiteId;
    }

    public final String a() {
        return this.f15710b;
    }

    public final String b() {
        return this.f15709a;
    }
}
