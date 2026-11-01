package z2;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f79183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f79184c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f79185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f79186e;

    public f(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f79183b = str;
        this.f79184c = str2;
        this.f79185d = str3;
        this.f79186e = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return Objects.equals(this.f79183b, fVar.f79183b) && Objects.equals(this.f79184c, fVar.f79184c) && Objects.equals(this.f79185d, fVar.f79185d) && Arrays.equals(this.f79186e, fVar.f79186e);
    }

    public int hashCode() {
        String str = this.f79183b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f79184c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f79185d;
        return ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + Arrays.hashCode(this.f79186e);
    }

    @Override // z2.i
    public String toString() {
        return this.f79192a + ": mimeType=" + this.f79183b + ", filename=" + this.f79184c + ", description=" + this.f79185d;
    }
}
