package z2;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f79180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f79181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f79182d;

    public e(String str, String str2, String str3) {
        super("COMM");
        this.f79180b = str;
        this.f79181c = str2;
        this.f79182d = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return Objects.equals(this.f79181c, eVar.f79181c) && Objects.equals(this.f79180b, eVar.f79180b) && Objects.equals(this.f79182d, eVar.f79182d);
    }

    public int hashCode() {
        String str = this.f79180b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f79181c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f79182d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // z2.i
    public String toString() {
        return this.f79192a + ": language=" + this.f79180b + ", description=" + this.f79181c + ", text=" + this.f79182d;
    }
}
