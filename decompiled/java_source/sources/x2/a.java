package x2;

import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import androidx.media3.common.y;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f78032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f78033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f78034f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f78035g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f78036h;

    public a(int i11, String str, String str2, int i12, int i13, int i14, int i15, byte[] bArr) {
        this.f78029a = i11;
        this.f78030b = str;
        this.f78031c = str2;
        this.f78032d = i12;
        this.f78033e = i13;
        this.f78034f = i14;
        this.f78035g = i15;
        this.f78036h = bArr;
    }

    public static a b(j0 j0Var) {
        int iQ = j0Var.q();
        String strU = y.u(j0Var.F(j0Var.q(), StandardCharsets.US_ASCII));
        String strE = j0Var.E(j0Var.q());
        int iQ2 = j0Var.q();
        int iQ3 = j0Var.q();
        int iQ4 = j0Var.q();
        int iQ5 = j0Var.q();
        int iQ6 = j0Var.q();
        byte[] bArr = new byte[iQ6];
        j0Var.l(bArr, 0, iQ6);
        return new a(iQ, strU, strE, iQ2, iQ3, iQ4, iQ5, bArr);
    }

    @Override // androidx.media3.common.x.a
    public void a(v.b bVar) {
        bVar.K(this.f78036h, this.f78029a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f78029a == aVar.f78029a && this.f78030b.equals(aVar.f78030b) && this.f78031c.equals(aVar.f78031c) && this.f78032d == aVar.f78032d && this.f78033e == aVar.f78033e && this.f78034f == aVar.f78034f && this.f78035g == aVar.f78035g && Arrays.equals(this.f78036h, aVar.f78036h);
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public int hashCode() {
        return ((((((((((((((527 + this.f78029a) * 31) + this.f78030b.hashCode()) * 31) + this.f78031c.hashCode()) * 31) + this.f78032d) * 31) + this.f78033e) * 31) + this.f78034f) * 31) + this.f78035g) * 31) + Arrays.hashCode(this.f78036h);
    }

    public String toString() {
        return "Picture: mimeType=" + this.f78030b + ", description=" + this.f78031c;
    }
}
