package z2;

import androidx.media3.common.v;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f79164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f79165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f79166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f79167e;

    public a(String str, String str2, int i11, byte[] bArr) {
        super("APIC");
        this.f79164b = str;
        this.f79165c = str2;
        this.f79166d = i11;
        this.f79167e = bArr;
    }

    @Override // z2.i, androidx.media3.common.x.a
    public void a(v.b bVar) {
        bVar.K(this.f79167e, this.f79166d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f79166d == aVar.f79166d && Objects.equals(this.f79164b, aVar.f79164b) && Objects.equals(this.f79165c, aVar.f79165c) && Arrays.equals(this.f79167e, aVar.f79167e);
    }

    public int hashCode() {
        int i11 = (527 + this.f79166d) * 31;
        String str = this.f79164b;
        int iHashCode = (i11 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f79165c;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.f79167e);
    }

    @Override // z2.i
    public String toString() {
        return this.f79192a + ": mimeType=" + this.f79164b + ", description=" + this.f79165c;
    }
}
