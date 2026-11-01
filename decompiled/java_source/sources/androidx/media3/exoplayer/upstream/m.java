package androidx.media3.exoplayer.upstream;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface m {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13004a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13005b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f13006c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f13007d;

        public a(int i11, int i12, int i13, int i14) {
            this.f13004a = i11;
            this.f13005b = i12;
            this.f13006c = i13;
            this.f13007d = i14;
        }

        public boolean a(int i11) {
            if (i11 == 1) {
                if (this.f13004a - this.f13005b <= 1) {
                    return false;
                }
            } else if (this.f13006c - this.f13007d <= 1) {
                return false;
            }
            return true;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13008a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f13009b;

        public b(int i11, long j11) {
            androidx.media3.common.util.a.a(j11 >= 0);
            this.f13008a = i11;
            this.f13009b = j11;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final g2.i f13010a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final g2.j f13011b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final IOException f13012c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f13013d;

        public c(g2.i iVar, g2.j jVar, IOException iOException, int i11) {
            this.f13010a = iVar;
            this.f13011b = jVar;
            this.f13012c = iOException;
            this.f13013d = i11;
        }
    }

    int a(int i11);

    void b(long j11);

    long c(c cVar);

    b d(a aVar, c cVar);
}
