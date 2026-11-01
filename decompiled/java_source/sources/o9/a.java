package o9;

import com.google.android.exoplayer2.util.d0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f70747a;

    /* JADX INFO: renamed from: o9.a$a, reason: collision with other inner class name */
    static final class C0858a extends a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f70748b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f70749c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List f70750d;

        public C0858a(int i11, long j11) {
            super(i11);
            this.f70748b = j11;
            this.f70749c = new ArrayList();
            this.f70750d = new ArrayList();
        }

        public void d(C0858a c0858a) {
            this.f70750d.add(c0858a);
        }

        public void e(b bVar) {
            this.f70749c.add(bVar);
        }

        public C0858a f(int i11) {
            int size = this.f70750d.size();
            for (int i12 = 0; i12 < size; i12++) {
                C0858a c0858a = (C0858a) this.f70750d.get(i12);
                if (c0858a.f70747a == i11) {
                    return c0858a;
                }
            }
            return null;
        }

        public b g(int i11) {
            int size = this.f70749c.size();
            for (int i12 = 0; i12 < size; i12++) {
                b bVar = (b) this.f70749c.get(i12);
                if (bVar.f70747a == i11) {
                    return bVar;
                }
            }
            return null;
        }

        @Override // o9.a
        public String toString() {
            return a.a(this.f70747a) + " leaves: " + Arrays.toString(this.f70749c.toArray()) + " containers: " + Arrays.toString(this.f70750d.toArray());
        }
    }

    static final class b extends a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final d0 f70751b;

        public b(int i11, d0 d0Var) {
            super(i11);
            this.f70751b = d0Var;
        }
    }

    public a(int i11) {
        this.f70747a = i11;
    }

    public static String a(int i11) {
        return "" + ((char) ((i11 >> 24) & 255)) + ((char) ((i11 >> 16) & 255)) + ((char) ((i11 >> 8) & 255)) + ((char) (i11 & 255));
    }

    public static int b(int i11) {
        return i11 & 16777215;
    }

    public static int c(int i11) {
        return (i11 >> 24) & 255;
    }

    public String toString() {
        return a(this.f70747a);
    }
}
