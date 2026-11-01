package o9;

import com.google.android.exoplayer2.util.p0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o f70910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f70911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f70912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f70913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long[] f70915f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f70916g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f70917h;

    public r(o oVar, long[] jArr, int[] iArr, int i11, long[] jArr2, int[] iArr2, long j11) {
        com.google.android.exoplayer2.util.a.a(iArr.length == jArr2.length);
        com.google.android.exoplayer2.util.a.a(jArr.length == jArr2.length);
        com.google.android.exoplayer2.util.a.a(iArr2.length == jArr2.length);
        this.f70910a = oVar;
        this.f70912c = jArr;
        this.f70913d = iArr;
        this.f70914e = i11;
        this.f70915f = jArr2;
        this.f70916g = iArr2;
        this.f70917h = j11;
        this.f70911b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | ASTNode.DISCARD;
        }
    }

    public int a(long j11) {
        for (int i11 = p0.i(this.f70915f, j11, true, false); i11 >= 0; i11--) {
            if ((this.f70916g[i11] & 1) != 0) {
                return i11;
            }
        }
        return -1;
    }

    public int b(long j11) {
        for (int iE = p0.e(this.f70915f, j11, true, false); iE < this.f70915f.length; iE++) {
            if ((this.f70916g[iE] & 1) != 0) {
                return iE;
            }
        }
        return -1;
    }
}
