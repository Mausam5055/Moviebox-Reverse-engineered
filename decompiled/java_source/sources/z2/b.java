package z2;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f79168b;

    public b(String str, byte[] bArr) {
        super(str);
        this.f79168b = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f79192a.equals(bVar.f79192a) && Arrays.equals(this.f79168b, bVar.f79168b);
    }

    public int hashCode() {
        return ((527 + this.f79192a.hashCode()) * 31) + Arrays.hashCode(this.f79168b);
    }
}
