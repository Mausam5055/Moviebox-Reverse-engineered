package a3;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.collect.h2;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class c implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f142a;

    public static final class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final Comparator f143d = new Comparator() { // from class: a3.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return c.a.b((c.a) obj, (c.a) obj2);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f144a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f145b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f146c;

        public a(long j11, long j12, int i11) {
            androidx.media3.common.util.a.a(j11 < j12);
            this.f144a = j11;
            this.f145b = j12;
            this.f146c = i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int b(a aVar, a aVar2) {
            return h2.k().e(aVar.f144a, aVar2.f144a).e(aVar.f145b, aVar2.f145b).d(aVar.f146c, aVar2.f146c).j();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f144a == aVar.f144a && this.f145b == aVar.f145b && this.f146c == aVar.f146c;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.f144a), Long.valueOf(this.f145b), Integer.valueOf(this.f146c));
        }

        public String toString() {
            return a1.G("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.f144a), Long.valueOf(this.f145b), Integer.valueOf(this.f146c));
        }
    }

    public c(List list) {
        this.f142a = list;
        androidx.media3.common.util.a.a(!b(list));
    }

    private static boolean b(List list) {
        if (list.isEmpty()) {
            return false;
        }
        long j11 = ((a) list.get(0)).f145b;
        for (int i11 = 1; i11 < list.size(); i11++) {
            if (((a) list.get(i11)).f144a < j11) {
                return true;
            }
            j11 = ((a) list.get(i11)).f145b;
        }
        return false;
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return this.f142a.equals(((c) obj).f142a);
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
        return this.f142a.hashCode();
    }

    public String toString() {
        return "SlowMotion: segments=" + this.f142a;
    }
}
