package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class o implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f27458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f27459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f27460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f27461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f27462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f27463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a[] f27464g;

    public o(boolean z10, int i11) {
        this(z10, i11, 0);
    }

    public o(boolean z10, int i11, int i12) {
        com.google.android.exoplayer2.util.a.a(i11 > 0);
        com.google.android.exoplayer2.util.a.a(i12 >= 0);
        this.f27458a = z10;
        this.f27459b = i11;
        this.f27463f = i12;
        this.f27464g = new a[i12 + 100];
        if (i12 <= 0) {
            this.f27460c = null;
            return;
        }
        this.f27460c = new byte[i12 * i11];
        for (int i13 = 0; i13 < i12; i13++) {
            this.f27464g[i13] = new a(this.f27460c, i13 * i11);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized void a(b.a aVar) {
        while (aVar != null) {
            try {
                a[] aVarArr = this.f27464g;
                int i11 = this.f27463f;
                this.f27463f = i11 + 1;
                aVarArr[i11] = aVar.a();
                this.f27462e--;
                aVar = aVar.next();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        notifyAll();
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized a allocate() {
        a aVar;
        try {
            this.f27462e++;
            int i11 = this.f27463f;
            if (i11 > 0) {
                a[] aVarArr = this.f27464g;
                int i12 = i11 - 1;
                this.f27463f = i12;
                aVar = (a) com.google.android.exoplayer2.util.a.e(aVarArr[i12]);
                this.f27464g[this.f27463f] = null;
            } else {
                aVar = new a(new byte[this.f27459b], 0);
                int i13 = this.f27462e;
                a[] aVarArr2 = this.f27464g;
                if (i13 > aVarArr2.length) {
                    this.f27464g = (a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return aVar;
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized void b(a aVar) {
        a[] aVarArr = this.f27464g;
        int i11 = this.f27463f;
        this.f27463f = i11 + 1;
        aVarArr[i11] = aVar;
        this.f27462e--;
        notifyAll();
    }

    public synchronized int c() {
        return this.f27462e * this.f27459b;
    }

    public synchronized void d() {
        if (this.f27458a) {
            e(0);
        }
    }

    public synchronized void e(int i11) {
        boolean z10 = i11 < this.f27461d;
        this.f27461d = i11;
        if (z10) {
            trim();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public int getIndividualAllocationLength() {
        return this.f27459b;
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized void trim() {
        try {
            int i11 = 0;
            int iMax = Math.max(0, p0.l(this.f27461d, this.f27459b) - this.f27462e);
            int i12 = this.f27463f;
            if (iMax >= i12) {
                return;
            }
            if (this.f27460c != null) {
                int i13 = i12 - 1;
                while (i11 <= i13) {
                    a aVar = (a) com.google.android.exoplayer2.util.a.e(this.f27464g[i11]);
                    if (aVar.f27269a == this.f27460c) {
                        i11++;
                    } else {
                        a aVar2 = (a) com.google.android.exoplayer2.util.a.e(this.f27464g[i13]);
                        if (aVar2.f27269a != this.f27460c) {
                            i13--;
                        } else {
                            a[] aVarArr = this.f27464g;
                            aVarArr[i11] = aVar2;
                            aVarArr[i13] = aVar;
                            i13--;
                            i11++;
                        }
                    }
                }
                iMax = Math.max(iMax, i11);
                if (iMax >= this.f27463f) {
                    return;
                }
            }
            Arrays.fill(this.f27464g, iMax, this.f27463f, (Object) null);
            this.f27463f = iMax;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
