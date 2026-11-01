package a2;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f86a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f87b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f88c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f89d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f90e;

    public h(String str, String str2, String str3, String str4, String str5) {
        this.f86a = str;
        this.f87b = str2;
        this.f88c = str3;
        this.f89d = str4;
        this.f90e = str5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Objects.equals(this.f86a, hVar.f86a) && Objects.equals(this.f87b, hVar.f87b) && Objects.equals(this.f88c, hVar.f88c) && Objects.equals(this.f89d, hVar.f89d) && Objects.equals(this.f90e, hVar.f90e);
    }

    public int hashCode() {
        String str = this.f86a;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f87b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f88c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f89d;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f90e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }
}
