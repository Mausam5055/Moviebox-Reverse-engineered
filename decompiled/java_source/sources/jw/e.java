package jw;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f66325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f66326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f66327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f66328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f66329e;

    public e(String str, String name, String str2, int i11, int i12) {
        Intrinsics.h(name, "name");
        this.f66325a = str;
        this.f66326b = name;
        this.f66327c = str2;
        this.f66328d = i11;
        this.f66329e = i12;
    }

    public final int a() {
        return this.f66328d;
    }

    public final String b() {
        return this.f66327c;
    }

    public final String c() {
        return this.f66325a;
    }

    public final String d() {
        return this.f66326b;
    }

    public final int e() {
        return this.f66329e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.c(this.f66325a, eVar.f66325a) && Intrinsics.c(this.f66326b, eVar.f66326b) && Intrinsics.c(this.f66327c, eVar.f66327c) && this.f66328d == eVar.f66328d && this.f66329e == eVar.f66329e;
    }

    public int hashCode() {
        String str = this.f66325a;
        int iHashCode = (((str == null ? 0 : str.hashCode()) * 31) + this.f66326b.hashCode()) * 31;
        String str2 = this.f66327c;
        return ((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f66328d) * 31) + this.f66329e;
    }

    public String toString() {
        return "UpgradeRightUiModel(iconUrl=" + this.f66325a + ", name=" + this.f66326b + ", featureLink=" + this.f66327c + ", basicCount=" + this.f66328d + ", proCount=" + this.f66329e + ")";
    }
}
