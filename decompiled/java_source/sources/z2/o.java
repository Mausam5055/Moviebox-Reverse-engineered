package z2;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class o extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f79207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f79208c;

    public o(String str, String str2, String str3) {
        super(str);
        this.f79207b = str2;
        this.f79208c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        return this.f79192a.equals(oVar.f79192a) && Objects.equals(this.f79207b, oVar.f79207b) && Objects.equals(this.f79208c, oVar.f79208c);
    }

    public int hashCode() {
        int iHashCode = (527 + this.f79192a.hashCode()) * 31;
        String str = this.f79207b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f79208c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // z2.i
    public String toString() {
        return this.f79192a + ": url=" + this.f79208c;
    }
}
