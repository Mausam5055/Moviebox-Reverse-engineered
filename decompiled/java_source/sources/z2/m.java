package z2;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class m extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f79202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f79203c;

    public m(String str, byte[] bArr) {
        super("PRIV");
        this.f79202b = str;
        this.f79203c = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        return Objects.equals(this.f79202b, mVar.f79202b) && Arrays.equals(this.f79203c, mVar.f79203c);
    }

    public int hashCode() {
        String str = this.f79202b;
        return ((527 + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.f79203c);
    }

    @Override // z2.i
    public String toString() {
        return this.f79192a + ": owner=" + this.f79202b;
    }
}
