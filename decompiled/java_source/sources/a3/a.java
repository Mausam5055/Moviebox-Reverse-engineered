package a3;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.primitives.Longs;

/* JADX INFO: loaded from: classes.dex */
public final class a implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f141e;

    public a(long j11, long j12, long j13, long j14, long j15) {
        this.f137a = j11;
        this.f138b = j12;
        this.f139c = j13;
        this.f140d = j14;
        this.f141e = j15;
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f137a == aVar.f137a && this.f138b == aVar.f138b && this.f139c == aVar.f139c && this.f140d == aVar.f140d && this.f141e == aVar.f141e;
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
        return ((((((((527 + Longs.e(this.f137a)) * 31) + Longs.e(this.f138b)) * 31) + Longs.e(this.f139c)) * 31) + Longs.e(this.f140d)) * 31) + Longs.e(this.f141e);
    }

    public String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f137a + ", photoSize=" + this.f138b + ", photoPresentationTimestampUs=" + this.f139c + ", videoStartPosition=" + this.f140d + ", videoSize=" + this.f141e;
    }
}
