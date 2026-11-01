package androidx.room.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class e implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f14791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f14792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f14793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f14794d;

    public e(int i11, int i12, String from, String to2) {
        Intrinsics.h(from, "from");
        Intrinsics.h(to2, "to");
        this.f14791a = i11;
        this.f14792b = i12;
        this.f14793c = from;
        this.f14794d = to2;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(e other) {
        Intrinsics.h(other, "other");
        int i11 = this.f14791a - other.f14791a;
        return i11 == 0 ? this.f14792b - other.f14792b : i11;
    }

    public final String b() {
        return this.f14793c;
    }

    public final int d() {
        return this.f14791a;
    }

    public final String e() {
        return this.f14794d;
    }
}
