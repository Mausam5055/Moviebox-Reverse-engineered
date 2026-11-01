package androidx.media3.container;

import androidx.media3.common.util.j0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10583a;

    public static final class b extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f10584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f10585c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List f10586d;

        public b(int i11, long j11) {
            super(i11);
            this.f10584b = j11;
            this.f10585c = new ArrayList();
            this.f10586d = new ArrayList();
        }

        public void b(b bVar) {
            this.f10586d.add(bVar);
        }

        public void c(c cVar) {
            this.f10585c.add(cVar);
        }

        public b d(int i11) {
            int size = this.f10586d.size();
            for (int i12 = 0; i12 < size; i12++) {
                b bVar = (b) this.f10586d.get(i12);
                if (bVar.f10583a == i11) {
                    return bVar;
                }
            }
            return null;
        }

        public c e(int i11) {
            int size = this.f10585c.size();
            for (int i12 = 0; i12 < size; i12++) {
                c cVar = (c) this.f10585c.get(i12);
                if (cVar.f10583a == i11) {
                    return cVar;
                }
            }
            return null;
        }

        @Override // androidx.media3.container.d
        public String toString() {
            return d.a(this.f10583a) + " leaves: " + Arrays.toString(this.f10585c.toArray()) + " containers: " + Arrays.toString(this.f10586d.toArray());
        }
    }

    public static final class c extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final j0 f10587b;

        public c(int i11, j0 j0Var) {
            super(i11);
            this.f10587b = j0Var;
        }
    }

    private d(int i11) {
        this.f10583a = i11;
    }

    public static String a(int i11) {
        return "" + ((char) ((i11 >> 24) & 255)) + ((char) ((i11 >> 16) & 255)) + ((char) ((i11 >> 8) & 255)) + ((char) (i11 & 255));
    }

    public String toString() {
        return a(this.f10583a);
    }
}
