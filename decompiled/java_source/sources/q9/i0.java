package q9;

import android.util.SparseArray;
import com.google.android.exoplayer2.util.l0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface i0 {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f73311a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f73312b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f73313c;

        public a(String str, int i11, byte[] bArr) {
            this.f73311a = str;
            this.f73312b = i11;
            this.f73313c = bArr;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f73314a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f73315b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f73316c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f73317d;

        public b(int i11, String str, List list, byte[] bArr) {
            this.f73314a = i11;
            this.f73315b = str;
            this.f73316c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f73317d = bArr;
        }
    }

    public interface c {
        i0 a(int i11, b bVar);

        SparseArray createInitialPayloadReaders();
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f73318a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f73319b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f73320c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f73321d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f73322e;

        public d(int i11, int i12) {
            this(Integer.MIN_VALUE, i11, i12);
        }

        public d(int i11, int i12, int i13) {
            String str;
            if (i11 != Integer.MIN_VALUE) {
                str = i11 + "/";
            } else {
                str = "";
            }
            this.f73318a = str;
            this.f73319b = i12;
            this.f73320c = i13;
            this.f73321d = Integer.MIN_VALUE;
            this.f73322e = "";
        }

        private void d() {
            if (this.f73321d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public void a() {
            int i11 = this.f73321d;
            this.f73321d = i11 == Integer.MIN_VALUE ? this.f73319b : i11 + this.f73320c;
            this.f73322e = this.f73318a + this.f73321d;
        }

        public String b() {
            d();
            return this.f73322e;
        }

        public int c() {
            d();
            return this.f73321d;
        }
    }

    void a(com.google.android.exoplayer2.util.d0 d0Var, int i11);

    void b(l0 l0Var, g9.n nVar, d dVar);

    void seek();
}
