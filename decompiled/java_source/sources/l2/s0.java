package l2;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public interface s0 {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f68679a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f68680b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f68681c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f68682d;

        public a(int i11, byte[] bArr, int i12, int i13) {
            this.f68679a = i11;
            this.f68680b = bArr;
            this.f68681c = i12;
            this.f68682d = i13;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f68679a == aVar.f68679a && this.f68681c == aVar.f68681c && this.f68682d == aVar.f68682d && Arrays.equals(this.f68680b, aVar.f68680b);
        }

        public int hashCode() {
            return (((((this.f68679a * 31) + Arrays.hashCode(this.f68680b)) * 31) + this.f68681c) * 31) + this.f68682d;
        }
    }

    void a(androidx.media3.common.util.j0 j0Var, int i11, int i12);

    void b(androidx.media3.common.util.j0 j0Var, int i11);

    void c(androidx.media3.common.r rVar);

    void d(long j11, int i11, int i12, int i13, a aVar);

    int e(androidx.media3.common.j jVar, int i11, boolean z10);

    void f(long j11);

    int g(androidx.media3.common.j jVar, int i11, boolean z10, int i12);
}
