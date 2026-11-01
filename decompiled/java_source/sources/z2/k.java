package z2;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class k extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f79194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f79195c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f79196d;

    public k(String str, String str2, String str3) {
        super("----");
        this.f79194b = str;
        this.f79195c = str2;
        this.f79196d = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return Objects.equals(this.f79195c, kVar.f79195c) && Objects.equals(this.f79194b, kVar.f79194b) && Objects.equals(this.f79196d, kVar.f79196d);
    }

    public int hashCode() {
        String str = this.f79194b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f79195c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f79196d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // z2.i
    public String toString() {
        return this.f79192a + ": domain=" + this.f79194b + ", description=" + this.f79195c;
    }
}
