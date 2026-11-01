package g9;

import com.google.android.exoplayer2.o1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public interface e0 {

    /* JADX INFO: loaded from: classes4.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f63390a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f63391b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f63392c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f63393d;

        public a(int i11, byte[] bArr, int i12, int i13) {
            this.f63390a = i11;
            this.f63391b = bArr;
            this.f63392c = i12;
            this.f63393d = i13;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f63390a == aVar.f63390a && this.f63392c == aVar.f63392c && this.f63393d == aVar.f63393d && Arrays.equals(this.f63391b, aVar.f63391b);
        }

        public int hashCode() {
            return (((((this.f63390a * 31) + Arrays.hashCode(this.f63391b)) * 31) + this.f63392c) * 31) + this.f63393d;
        }
    }

    int a(com.google.android.exoplayer2.upstream.g gVar, int i11, boolean z10, int i12);

    int b(com.google.android.exoplayer2.upstream.g gVar, int i11, boolean z10);

    void c(com.google.android.exoplayer2.util.d0 d0Var, int i11);

    void d(long j11, int i11, int i12, int i13, a aVar);

    void e(o1 o1Var);

    void f(com.google.android.exoplayer2.util.d0 d0Var, int i11, int i12);
}
