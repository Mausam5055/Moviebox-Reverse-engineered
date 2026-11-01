package x2;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.common.primitives.Ints;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78038b;

    public b(String str, String str2) {
        this.f78037a = com.google.common.base.a.g(str);
        this.f78038b = str2;
    }

    @Override // androidx.media3.common.x.a
    public void a(v.b bVar) {
        String str = this.f78037a;
        str.hashCode();
        switch (str) {
            case "TOTALTRACKS":
                Integer numP = Ints.p(this.f78038b);
                if (numP != null) {
                    bVar.r0(numP);
                    break;
                }
                break;
            case "TOTALDISCS":
                Integer numP2 = Ints.p(this.f78038b);
                if (numP2 != null) {
                    bVar.q0(numP2);
                    break;
                }
                break;
            case "TRACKNUMBER":
                Integer numP3 = Ints.p(this.f78038b);
                if (numP3 != null) {
                    bVar.s0(numP3);
                    break;
                }
                break;
            case "ALBUM":
                bVar.P(this.f78038b);
                break;
            case "GENRE":
                bVar.c0(this.f78038b);
                break;
            case "TITLE":
                bVar.p0(this.f78038b);
                break;
            case "DESCRIPTION":
                bVar.W(this.f78038b);
                break;
            case "DISCNUMBER":
                Integer numP4 = Ints.p(this.f78038b);
                if (numP4 != null) {
                    bVar.X(numP4);
                    break;
                }
                break;
            case "ALBUMARTIST":
                bVar.O(this.f78038b);
                break;
            case "ARTIST":
                bVar.Q(this.f78038b);
                break;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f78037a.equals(bVar.f78037a) && this.f78038b.equals(bVar.f78038b);
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
        return ((527 + this.f78037a.hashCode()) * 31) + this.f78038b.hashCode();
    }

    public String toString() {
        return "VC: " + this.f78037a + UrlUtils.EQUAL_MARK + this.f78038b;
    }
}
