package a2;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f73a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f74b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f75c;

    public e(String str, String str2, String str3) {
        this.f73a = str;
        this.f74b = str2;
        this.f75c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return Objects.equals(this.f73a, eVar.f73a) && Objects.equals(this.f74b, eVar.f74b) && Objects.equals(this.f75c, eVar.f75c);
    }

    public int hashCode() {
        int iHashCode = this.f73a.hashCode() * 31;
        String str = this.f74b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f75c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
