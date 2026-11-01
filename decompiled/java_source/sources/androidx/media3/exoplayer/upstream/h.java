package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.a1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f12966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f12967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f12968c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f12969d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12970e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12971f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a[] f12972g;

    public h(boolean z10, int i11) {
        this(z10, i11, 0);
    }

    public h(boolean z10, int i11, int i12) {
        androidx.media3.common.util.a.a(i11 > 0);
        androidx.media3.common.util.a.a(i12 >= 0);
        this.f12966a = z10;
        this.f12967b = i11;
        this.f12971f = i12;
        this.f12972g = new a[i12 + 100];
        if (i12 <= 0) {
            this.f12968c = null;
            return;
        }
        this.f12968c = new byte[i12 * i11];
        for (int i13 = 0; i13 < i12; i13++) {
            this.f12972g[i13] = new a(this.f12968c, i13 * i11);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.b
    public synchronized void a(b.a aVar) {
        while (aVar != null) {
            try {
                a[] aVarArr = this.f12972g;
                int i11 = this.f12971f;
                this.f12971f = i11 + 1;
                aVarArr[i11] = aVar.a();
                this.f12970e--;
                aVar = aVar.next();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        notifyAll();
    }

    @Override // androidx.media3.exoplayer.upstream.b
    public synchronized a allocate() {
        a aVar;
        try {
            this.f12970e++;
            int i11 = this.f12971f;
            if (i11 > 0) {
                a[] aVarArr = this.f12972g;
                int i12 = i11 - 1;
                this.f12971f = i12;
                aVar = (a) androidx.media3.common.util.a.e(aVarArr[i12]);
                this.f12972g[this.f12971f] = null;
            } else {
                aVar = new a(new byte[this.f12967b], 0);
                int i13 = this.f12970e;
                a[] aVarArr2 = this.f12972g;
                if (i13 > aVarArr2.length) {
                    this.f12972g = (a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return aVar;
    }

    @Override // androidx.media3.exoplayer.upstream.b
    public synchronized void b(a aVar) {
        a[] aVarArr = this.f12972g;
        int i11 = this.f12971f;
        this.f12971f = i11 + 1;
        aVarArr[i11] = aVar;
        this.f12970e--;
        notifyAll();
    }

    public synchronized int c() {
        return this.f12970e * this.f12967b;
    }

    public synchronized void d() {
        if (this.f12966a) {
            e(0);
        }
    }

    public synchronized void e(int i11) {
        boolean z10 = i11 < this.f12969d;
        this.f12969d = i11;
        if (z10) {
            trim();
        }
    }

    @Override // androidx.media3.exoplayer.upstream.b
    public int getIndividualAllocationLength() {
        return this.f12967b;
    }

    @Override // androidx.media3.exoplayer.upstream.b
    public synchronized void trim() {
        try {
            int i11 = 0;
            int iMax = Math.max(0, a1.k(this.f12969d, this.f12967b) - this.f12970e);
            int i12 = this.f12971f;
            if (iMax >= i12) {
                return;
            }
            if (this.f12968c != null) {
                int i13 = i12 - 1;
                while (i11 <= i13) {
                    a aVar = (a) androidx.media3.common.util.a.e(this.f12972g[i11]);
                    if (aVar.f12956a == this.f12968c) {
                        i11++;
                    } else {
                        a aVar2 = (a) androidx.media3.common.util.a.e(this.f12972g[i13]);
                        if (aVar2.f12956a != this.f12968c) {
                            i13--;
                        } else {
                            a[] aVarArr = this.f12972g;
                            aVarArr[i11] = aVar2;
                            aVarArr[i13] = aVar;
                            i13--;
                            i11++;
                        }
                    }
                }
                iMax = Math.max(iMax, i11);
                if (iMax >= this.f12971f) {
                    return;
                }
            }
            Arrays.fill(this.f12972g, iMax, this.f12971f, (Object) null);
            this.f12971f = iMax;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
