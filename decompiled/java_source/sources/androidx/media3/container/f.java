package androidx.media3.container;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.primitives.Longs;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f10590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f10591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f10592c;

    public f(long j11, long j12, long j13) {
        this.f10590a = j11;
        this.f10591b = j12;
        this.f10592c = j13;
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f10590a == fVar.f10590a && this.f10591b == fVar.f10591b && this.f10592c == fVar.f10592c;
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
        return ((((527 + Longs.e(this.f10590a)) * 31) + Longs.e(this.f10591b)) * 31) + Longs.e(this.f10592c);
    }

    public String toString() {
        return "Mp4Timestamp: creation time=" + this.f10590a + ", modification time=" + this.f10591b + ", timescale=" + this.f10592c;
    }
}
