package f3;

import androidx.media3.common.util.a1;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t f62326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f62327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f62328c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f62329d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f62330e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long[] f62331f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f62332g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f62333h;

    public w(t tVar, long[] jArr, int[] iArr, int i11, long[] jArr2, int[] iArr2, long j11) {
        androidx.media3.common.util.a.a(iArr.length == jArr2.length);
        androidx.media3.common.util.a.a(jArr.length == jArr2.length);
        androidx.media3.common.util.a.a(iArr2.length == jArr2.length);
        this.f62326a = tVar;
        this.f62328c = jArr;
        this.f62329d = iArr;
        this.f62330e = i11;
        this.f62331f = jArr2;
        this.f62332g = iArr2;
        this.f62333h = j11;
        this.f62327b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | ASTNode.DISCARD;
        }
    }

    public int a(long j11) {
        for (int iH = a1.h(this.f62331f, j11, true, false); iH >= 0; iH--) {
            if ((this.f62332g[iH] & 1) != 0) {
                return iH;
            }
        }
        return -1;
    }

    public int b(long j11) {
        for (int iD = a1.d(this.f62331f, j11, true, false); iD < this.f62331f.length; iD++) {
            if ((this.f62332g[iD] & 1) != 0) {
                return iD;
            }
        }
        return -1;
    }
}
