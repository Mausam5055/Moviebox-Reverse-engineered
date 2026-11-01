package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes3.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f27642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f27643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f27644c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CopyOnWriteArraySet f27645d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayDeque f27646e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayDeque f27647f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f27648g;

    public interface a {
        void invoke(Object obj);
    }

    public interface b {
        void a(Object obj, m mVar);
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f27649a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private m.b f27650b = new m.b();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f27651c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f27652d;

        public c(Object obj) {
            this.f27649a = obj;
        }

        public void a(int i11, a aVar) {
            if (this.f27652d) {
                return;
            }
            if (i11 != -1) {
                this.f27650b.a(i11);
            }
            this.f27651c = true;
            aVar.invoke(this.f27649a);
        }

        public void b(b bVar) {
            if (this.f27652d || !this.f27651c) {
                return;
            }
            m mVarE = this.f27650b.e();
            this.f27650b = new m.b();
            this.f27651c = false;
            bVar.a(this.f27649a, mVarE);
        }

        public void c(b bVar) {
            this.f27652d = true;
            if (this.f27651c) {
                bVar.a(this.f27649a, this.f27650b.e());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.f27649a.equals(((c) obj).f27649a);
        }

        public int hashCode() {
            return this.f27649a.hashCode();
        }
    }

    public r(Looper looper, e eVar, b bVar) {
        this(new CopyOnWriteArraySet(), looper, eVar, bVar);
    }

    private r(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, e eVar, b bVar) {
        this.f27642a = eVar;
        this.f27645d = copyOnWriteArraySet;
        this.f27644c = bVar;
        this.f27646e = new ArrayDeque();
        this.f27647f = new ArrayDeque();
        this.f27643b = eVar.createHandler(looper, new Handler.Callback() { // from class: com.google.android.exoplayer2.util.q
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f27641a.g(message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(Message message) {
        Iterator it = this.f27645d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b(this.f27644c);
            if (this.f27643b.a(0)) {
                return true;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(CopyOnWriteArraySet copyOnWriteArraySet, int i11, a aVar) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(i11, aVar);
        }
    }

    public void c(Object obj) {
        if (this.f27648g) {
            return;
        }
        com.google.android.exoplayer2.util.a.e(obj);
        this.f27645d.add(new c(obj));
    }

    public r d(Looper looper, e eVar, b bVar) {
        return new r(this.f27645d, looper, eVar, bVar);
    }

    public r e(Looper looper, b bVar) {
        return d(looper, this.f27642a, bVar);
    }

    public void f() {
        if (this.f27647f.isEmpty()) {
            return;
        }
        if (!this.f27643b.a(0)) {
            o oVar = this.f27643b;
            oVar.b(oVar.obtainMessage(0));
        }
        boolean zIsEmpty = this.f27646e.isEmpty();
        this.f27646e.addAll(this.f27647f);
        this.f27647f.clear();
        if (zIsEmpty) {
            while (!this.f27646e.isEmpty()) {
                ((Runnable) this.f27646e.peekFirst()).run();
                this.f27646e.removeFirst();
            }
        }
    }

    public void i(final int i11, final a aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f27645d);
        this.f27647f.add(new Runnable() { // from class: com.google.android.exoplayer2.util.p
            @Override // java.lang.Runnable
            public final void run() {
                r.h(copyOnWriteArraySet, i11, aVar);
            }
        });
    }

    public void j() {
        Iterator it = this.f27645d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).c(this.f27644c);
        }
        this.f27645d.clear();
        this.f27648g = true;
    }

    public void k(Object obj) {
        for (c cVar : this.f27645d) {
            if (cVar.f27649a.equals(obj)) {
                cVar.c(this.f27644c);
                this.f27645d.remove(cVar);
            }
        }
    }

    public void l(int i11, a aVar) {
        i(i11, aVar);
        f();
    }
}
