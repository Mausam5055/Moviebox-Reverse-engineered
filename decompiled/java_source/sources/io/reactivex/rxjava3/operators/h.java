package io.reactivex.rxjava3.operators;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes7.dex */
public final class h implements f {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final int f65557i = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Object f65558j = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f65560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f65561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f65562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    AtomicReferenceArray f65563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int f65564f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    AtomicReferenceArray f65565g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AtomicLong f65559a = new AtomicLong();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final AtomicLong f65566h = new AtomicLong();

    public h(int i11) {
        int iA = io.reactivex.rxjava3.internal.util.g.a(Math.max(8, i11));
        int i12 = iA - 1;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(iA + 1);
        this.f65563e = atomicReferenceArray;
        this.f65562d = i12;
        a(iA);
        this.f65565g = atomicReferenceArray;
        this.f65564f = i12;
        this.f65561c = iA - 2;
        o(0L);
    }

    private void a(int i11) {
        this.f65560b = Math.min(i11 / 4, f65557i);
    }

    private static int b(int i11) {
        return i11;
    }

    private static int c(long j11, int i11) {
        return b(((int) j11) & i11);
    }

    private long d() {
        return this.f65566h.get();
    }

    private long e() {
        return this.f65559a.get();
    }

    private long f() {
        return this.f65566h.get();
    }

    private static Object g(AtomicReferenceArray atomicReferenceArray, int i11) {
        return atomicReferenceArray.get(i11);
    }

    private AtomicReferenceArray h(AtomicReferenceArray atomicReferenceArray, int i11) {
        int iB = b(i11);
        AtomicReferenceArray atomicReferenceArray2 = (AtomicReferenceArray) g(atomicReferenceArray, iB);
        m(atomicReferenceArray, iB, null);
        return atomicReferenceArray2;
    }

    private long i() {
        return this.f65559a.get();
    }

    private Object j(AtomicReferenceArray atomicReferenceArray, long j11, int i11) {
        this.f65565g = atomicReferenceArray;
        int iC = c(j11, i11);
        Object objG = g(atomicReferenceArray, iC);
        if (objG != null) {
            m(atomicReferenceArray, iC, null);
            l(j11 + 1);
        }
        return objG;
    }

    private void k(AtomicReferenceArray atomicReferenceArray, long j11, int i11, Object obj, long j12) {
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
        this.f65563e = atomicReferenceArray2;
        this.f65561c = (j12 + j11) - 1;
        m(atomicReferenceArray2, i11, obj);
        n(atomicReferenceArray, atomicReferenceArray2);
        m(atomicReferenceArray, i11, f65558j);
        o(j11 + 1);
    }

    private void l(long j11) {
        this.f65566h.lazySet(j11);
    }

    private static void m(AtomicReferenceArray atomicReferenceArray, int i11, Object obj) {
        atomicReferenceArray.lazySet(i11, obj);
    }

    private void n(AtomicReferenceArray atomicReferenceArray, AtomicReferenceArray atomicReferenceArray2) {
        m(atomicReferenceArray, b(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    private void o(long j11) {
        this.f65559a.lazySet(j11);
    }

    private boolean p(AtomicReferenceArray atomicReferenceArray, Object obj, long j11, int i11) {
        m(atomicReferenceArray, i11, obj);
        o(j11 + 1);
        return true;
    }

    @Override // io.reactivex.rxjava3.operators.g
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // io.reactivex.rxjava3.operators.g
    public boolean isEmpty() {
        return i() == f();
    }

    @Override // io.reactivex.rxjava3.operators.g
    public boolean offer(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        AtomicReferenceArray atomicReferenceArray = this.f65563e;
        long jE = e();
        int i11 = this.f65562d;
        int iC = c(jE, i11);
        if (jE < this.f65561c) {
            return p(atomicReferenceArray, obj, jE, iC);
        }
        long j11 = ((long) this.f65560b) + jE;
        if (g(atomicReferenceArray, c(j11, i11)) == null) {
            this.f65561c = j11 - 1;
            return p(atomicReferenceArray, obj, jE, iC);
        }
        if (g(atomicReferenceArray, c(1 + jE, i11)) == null) {
            return p(atomicReferenceArray, obj, jE, iC);
        }
        k(atomicReferenceArray, jE, iC, obj, i11);
        return true;
    }

    @Override // io.reactivex.rxjava3.operators.f, io.reactivex.rxjava3.operators.g
    public Object poll() {
        AtomicReferenceArray atomicReferenceArray = this.f65565g;
        long jD = d();
        int i11 = this.f65564f;
        int iC = c(jD, i11);
        Object objG = g(atomicReferenceArray, iC);
        boolean z10 = objG == f65558j;
        if (objG == null || z10) {
            if (z10) {
                return j(h(atomicReferenceArray, i11 + 1), jD, i11);
            }
            return null;
        }
        m(atomicReferenceArray, iC, null);
        l(jD + 1);
        return objG;
    }
}
