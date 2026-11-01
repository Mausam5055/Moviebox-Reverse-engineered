package y2;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f78820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78822c;

    public c(byte[] bArr, String str, String str2) {
        this.f78820a = bArr;
        this.f78821b = str;
        this.f78822c = str2;
    }

    @Override // androidx.media3.common.x.a
    public void a(v.b bVar) {
        String str = this.f78821b;
        if (str != null) {
            bVar.p0(str);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f78820a, ((c) obj).f78820a);
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
        return Arrays.hashCode(this.f78820a);
    }

    public String toString() {
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\"", this.f78821b, this.f78822c, Integer.valueOf(this.f78820a.length));
    }
}
