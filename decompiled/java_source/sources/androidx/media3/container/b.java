package androidx.media3.container;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f10579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f10581d;

    public b(String str, byte[] bArr, int i11, int i12) {
        d(str, bArr, i12);
        this.f10578a = str;
        this.f10579b = bArr;
        this.f10580c = i11;
        this.f10581d = i12;
    }

    private static String c(List list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("track types = ");
        com.google.common.base.g.g(',').b(sb2, list);
        return sb2.toString();
    }

    private static void d(String str, byte[] bArr, int i11) {
        byte b11;
        str.hashCode();
        boolean z10 = false;
        switch (str) {
            case "com.android.capture.fps":
                if (i11 == 23 && bArr.length == 4) {
                    z10 = true;
                }
                androidx.media3.common.util.a.a(z10);
                break;
            case "auxiliary.tracks.interleaved":
                if (i11 == 75 && bArr.length == 1 && ((b11 = bArr[0]) == 0 || b11 == 1)) {
                    z10 = true;
                }
                androidx.media3.common.util.a.a(z10);
                break;
            case "auxiliary.tracks.length":
            case "auxiliary.tracks.offset":
                if (i11 == 78 && bArr.length == 8) {
                    z10 = true;
                }
                androidx.media3.common.util.a.a(z10);
                break;
            case "auxiliary.tracks.map":
                androidx.media3.common.util.a.a(i11 == 0);
                break;
        }
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ void a(v.b bVar) {
        w.c(this, bVar);
    }

    public List b() {
        androidx.media3.common.util.a.h(this.f10578a.equals("auxiliary.tracks.map"), "Metadata is not an auxiliary tracks map");
        byte b11 = this.f10579b[1];
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < b11; i11++) {
            arrayList.add(Integer.valueOf(this.f10579b[i11 + 2]));
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f10578a.equals(bVar.f10578a) && Arrays.equals(this.f10579b, bVar.f10579b) && this.f10580c == bVar.f10580c && this.f10581d == bVar.f10581d;
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
        return ((((((527 + this.f10578a.hashCode()) * 31) + Arrays.hashCode(this.f10579b)) * 31) + this.f10580c) * 31) + this.f10581d;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006a  */
    public String toString() {
        String strC;
        int i11 = this.f10581d;
        if (i11 != 0) {
            if (i11 == 1) {
                strC = a1.H(this.f10579b);
            } else if (i11 == 23) {
                strC = String.valueOf(Float.intBitsToFloat(Ints.g(this.f10579b)));
            } else if (i11 == 67) {
                strC = String.valueOf(Ints.g(this.f10579b));
            } else if (i11 == 75) {
                strC = String.valueOf(a.a(this.f10579b[0]));
            } else if (i11 != 78) {
                strC = a1.u1(this.f10579b);
            } else {
                strC = String.valueOf(new j0(this.f10579b).O());
            }
        } else if (this.f10578a.equals("auxiliary.tracks.map")) {
            strC = c(b());
        } else {
            strC = a1.u1(this.f10579b);
        }
        return "mdta: key=" + this.f10578a + ", value=" + strC;
    }
}
