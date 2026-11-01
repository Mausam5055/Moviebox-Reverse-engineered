package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public interface p {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f26241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final o.b f26242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final CopyOnWriteArrayList f26243c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f26244d;

        /* JADX INFO: renamed from: com.google.android.exoplayer2.source.p$a$a, reason: collision with other inner class name */
        private static final class C0374a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Handler f26245a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public p f26246b;

            public C0374a(Handler handler, p pVar) {
                this.f26245a = handler;
                this.f26246b = pVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i11, o.b bVar, long j11) {
            this.f26243c = copyOnWriteArrayList;
            this.f26241a = i11;
            this.f26242b = bVar;
            this.f26244d = j11;
        }

        private long h(long j11) {
            long jE1 = p0.e1(j11);
            return jE1 == C.TIME_UNSET ? C.TIME_UNSET : this.f26244d + jE1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(p pVar, t9.i iVar) {
            pVar.w(this.f26241a, this.f26242b, iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(p pVar, t9.h hVar, t9.i iVar) {
            pVar.u(this.f26241a, this.f26242b, hVar, iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(p pVar, t9.h hVar, t9.i iVar) {
            pVar.z(this.f26241a, this.f26242b, hVar, iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(p pVar, t9.h hVar, t9.i iVar, IOException iOException, boolean z10) {
            pVar.x(this.f26241a, this.f26242b, hVar, iVar, iOException, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(p pVar, t9.h hVar, t9.i iVar) {
            pVar.p(this.f26241a, this.f26242b, hVar, iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(p pVar, o.b bVar, t9.i iVar) {
            pVar.l(this.f26241a, bVar, iVar);
        }

        public void A(t9.h hVar, int i11, int i12, o1 o1Var, int i13, Object obj, long j11, long j12) {
            B(hVar, new t9.i(i11, i12, o1Var, i13, obj, h(j11), h(j12)));
        }

        public void B(final t9.h hVar, final t9.i iVar) {
            for (C0374a c0374a : this.f26243c) {
                final p pVar = c0374a.f26246b;
                p0.K0(c0374a.f26245a, new Runnable() { // from class: t9.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f76133a.o(pVar, hVar, iVar);
                    }
                });
            }
        }

        public void C(p pVar) {
            for (C0374a c0374a : this.f26243c) {
                if (c0374a.f26246b == pVar) {
                    this.f26243c.remove(c0374a);
                }
            }
        }

        public void D(int i11, long j11, long j12) {
            E(new t9.i(1, i11, null, 3, null, h(j11), h(j12)));
        }

        public void E(final t9.i iVar) {
            final o.b bVar = (o.b) com.google.android.exoplayer2.util.a.e(this.f26242b);
            for (C0374a c0374a : this.f26243c) {
                final p pVar = c0374a.f26246b;
                p0.K0(c0374a.f26245a, new Runnable() { // from class: t9.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f76137a.p(pVar, bVar, iVar);
                    }
                });
            }
        }

        public a F(int i11, o.b bVar, long j11) {
            return new a(this.f26243c, i11, bVar, j11);
        }

        public void g(Handler handler, p pVar) {
            com.google.android.exoplayer2.util.a.e(handler);
            com.google.android.exoplayer2.util.a.e(pVar);
            this.f26243c.add(new C0374a(handler, pVar));
        }

        public void i(int i11, o1 o1Var, int i12, Object obj, long j11) {
            j(new t9.i(1, i11, o1Var, i12, obj, h(j11), C.TIME_UNSET));
        }

        public void j(final t9.i iVar) {
            for (C0374a c0374a : this.f26243c) {
                final p pVar = c0374a.f26246b;
                p0.K0(c0374a.f26245a, new Runnable() { // from class: t9.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f76141a.k(pVar, iVar);
                    }
                });
            }
        }

        public void q(t9.h hVar, int i11) {
            r(hVar, i11, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }

        public void r(t9.h hVar, int i11, int i12, o1 o1Var, int i13, Object obj, long j11, long j12) {
            s(hVar, new t9.i(i11, i12, o1Var, i13, obj, h(j11), h(j12)));
        }

        public void s(final t9.h hVar, final t9.i iVar) {
            for (C0374a c0374a : this.f26243c) {
                final p pVar = c0374a.f26246b;
                p0.K0(c0374a.f26245a, new Runnable() { // from class: t9.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f76129a.l(pVar, hVar, iVar);
                    }
                });
            }
        }

        public void t(t9.h hVar, int i11) {
            u(hVar, i11, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }

        public void u(t9.h hVar, int i11, int i12, o1 o1Var, int i13, Object obj, long j11, long j12) {
            v(hVar, new t9.i(i11, i12, o1Var, i13, obj, h(j11), h(j12)));
        }

        public void v(final t9.h hVar, final t9.i iVar) {
            for (C0374a c0374a : this.f26243c) {
                final p pVar = c0374a.f26246b;
                p0.K0(c0374a.f26245a, new Runnable() { // from class: t9.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f76119a.m(pVar, hVar, iVar);
                    }
                });
            }
        }

        public void w(t9.h hVar, int i11, int i12, o1 o1Var, int i13, Object obj, long j11, long j12, IOException iOException, boolean z10) {
            y(hVar, new t9.i(i11, i12, o1Var, i13, obj, h(j11), h(j12)), iOException, z10);
        }

        public void x(t9.h hVar, int i11, IOException iOException, boolean z10) {
            w(hVar, i11, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, iOException, z10);
        }

        public void y(final t9.h hVar, final t9.i iVar, final IOException iOException, final boolean z10) {
            for (C0374a c0374a : this.f26243c) {
                final p pVar = c0374a.f26246b;
                p0.K0(c0374a.f26245a, new Runnable() { // from class: t9.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f76123a.n(pVar, hVar, iVar, iOException, z10);
                    }
                });
            }
        }

        public void z(t9.h hVar, int i11) {
            A(hVar, i11, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }
    }

    void l(int i11, o.b bVar, t9.i iVar);

    void p(int i11, o.b bVar, t9.h hVar, t9.i iVar);

    void u(int i11, o.b bVar, t9.h hVar, t9.i iVar);

    void w(int i11, o.b bVar, t9.i iVar);

    void x(int i11, o.b bVar, t9.h hVar, t9.i iVar, IOException iOException, boolean z10);

    void z(int i11, o.b bVar, t9.h hVar, t9.i iVar);
}
