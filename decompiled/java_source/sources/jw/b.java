package jw;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f66308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f66309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f66310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f66311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f66312e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f66313f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f66314g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f66315h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f66316i;

    public b(String userName, String str, String str2, boolean z10, int i11, int i12, List rights, String str3, List devices) {
        Intrinsics.h(userName, "userName");
        Intrinsics.h(rights, "rights");
        Intrinsics.h(devices, "devices");
        this.f66308a = userName;
        this.f66309b = str;
        this.f66310c = str2;
        this.f66311d = z10;
        this.f66312e = i11;
        this.f66313f = i12;
        this.f66314g = rights;
        this.f66315h = str3;
        this.f66316i = devices;
    }

    public final String a() {
        return this.f66309b;
    }

    public final int b() {
        return this.f66312e;
    }

    public final String c() {
        return this.f66315h;
    }

    public final List d() {
        return this.f66316i;
    }

    public final String e() {
        return this.f66310c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f66308a, bVar.f66308a) && Intrinsics.c(this.f66309b, bVar.f66309b) && Intrinsics.c(this.f66310c, bVar.f66310c) && this.f66311d == bVar.f66311d && this.f66312e == bVar.f66312e && this.f66313f == bVar.f66313f && Intrinsics.c(this.f66314g, bVar.f66314g) && Intrinsics.c(this.f66315h, bVar.f66315h) && Intrinsics.c(this.f66316i, bVar.f66316i);
    }

    public final int f() {
        return this.f66313f;
    }

    public final List g() {
        return this.f66314g;
    }

    public final String h() {
        return this.f66308a;
    }

    public int hashCode() {
        int iHashCode = this.f66308a.hashCode() * 31;
        String str = this.f66309b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f66310c;
        int iHashCode3 = (((((((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + androidx.compose.foundation.e.a(this.f66311d)) * 31) + this.f66312e) * 31) + this.f66313f) * 31) + this.f66314g.hashCode()) * 31;
        String str3 = this.f66315h;
        return ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.f66316i.hashCode();
    }

    public final boolean i() {
        return this.f66311d;
    }

    public String toString() {
        return "DeviceManagementUiModel(userName=" + this.f66308a + ", avatarUrl=" + this.f66309b + ", memberExpiryDate=" + this.f66310c + ", isPro=" + this.f66311d + ", basicLinkedDevice=" + this.f66312e + ", proLinkedDevice=" + this.f66313f + ", rights=" + this.f66314g + ", bottomDescription=" + this.f66315h + ", devices=" + this.f66316i + ")";
    }
}
