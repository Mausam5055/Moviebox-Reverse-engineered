package s3;

import android.util.SparseArray;
import androidx.media3.common.util.p0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface l0 {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f75041a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f75042b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f75043c;

        public a(String str, int i11, byte[] bArr) {
            this.f75041a = str;
            this.f75042b = i11;
            this.f75043c = bArr;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f75044a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f75045b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f75046c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List f75047d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final byte[] f75048e;

        public b(int i11, String str, int i12, List list, byte[] bArr) {
            this.f75044a = i11;
            this.f75045b = str;
            this.f75046c = i12;
            this.f75047d = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f75048e = bArr;
        }

        public int a() {
            int i11 = this.f75046c;
            if (i11 != 2) {
                return i11 != 3 ? 0 : 512;
            }
            return 2048;
        }
    }

    public interface c {
        l0 a(int i11, b bVar);

        SparseArray createInitialPayloadReaders();
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f75049a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f75050b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f75051c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f75052d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f75053e;

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
            this.f75049a = str;
            this.f75050b = i12;
            this.f75051c = i13;
            this.f75052d = Integer.MIN_VALUE;
            this.f75053e = "";
        }

        private void d() {
            if (this.f75052d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public void a() {
            int i11 = this.f75052d;
            this.f75052d = i11 == Integer.MIN_VALUE ? this.f75050b : i11 + this.f75051c;
            this.f75053e = this.f75049a + this.f75052d;
        }

        public String b() {
            d();
            return this.f75053e;
        }

        public int c() {
            d();
            return this.f75052d;
        }
    }

    void a(androidx.media3.common.util.j0 j0Var, int i11);

    void b(p0 p0Var, l2.t tVar, d dVar);

    void seek();
}
