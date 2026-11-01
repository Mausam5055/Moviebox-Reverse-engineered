package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f10447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f10448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f10449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CopyOnWriteArraySet f10450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayDeque f10451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayDeque f10452f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f10453g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f10454h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f10455i;

    public interface a {
        void invoke(Object obj);
    }

    public interface b {
        void a(Object obj, androidx.media3.common.p pVar);
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f10456a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private androidx.media3.common.p.b f10457b = new androidx.media3.common.p.b();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f10458c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f10459d;

        public c(Object obj) {
            this.f10456a = obj;
        }

        public void a(int i11, a aVar) {
            if (this.f10459d) {
                return;
            }
            if (i11 != -1) {
                this.f10457b.a(i11);
            }
            this.f10458c = true;
            aVar.invoke(this.f10456a);
        }

        public void b(b bVar) {
            if (this.f10459d || !this.f10458c) {
                return;
            }
            androidx.media3.common.p pVarE = this.f10457b.e();
            this.f10457b = new androidx.media3.common.p.b();
            this.f10458c = false;
            bVar.a(this.f10456a, pVarE);
        }

        public void c(b bVar) {
            this.f10459d = true;
            if (this.f10458c) {
                this.f10458c = false;
                bVar.a(this.f10456a, this.f10457b.e());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.f10456a.equals(((c) obj).f10456a);
        }

        public int hashCode() {
            return this.f10456a.hashCode();
        }
    }

    public t(Looper looper, i iVar, b bVar) {
        this(new CopyOnWriteArraySet(), looper, iVar, bVar, true);
    }

    private t(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, i iVar, b bVar, boolean z10) {
        this.f10447a = iVar;
        this.f10450d = copyOnWriteArraySet;
        this.f10449c = bVar;
        this.f10453g = new Object();
        this.f10451e = new ArrayDeque();
        this.f10452f = new ArrayDeque();
        this.f10448b = iVar.createHandler(looper, new Handler.Callback() { // from class: androidx.media3.common.util.r
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f10443a.g(message);
            }
        });
        this.f10455i = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(Message message) {
        Iterator it = this.f10450d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b(this.f10449c);
            if (this.f10448b.a(1)) {
                break;
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

    private void m() {
        if (this.f10455i) {
            androidx.media3.common.util.a.g(Thread.currentThread() == this.f10448b.getLooper().getThread());
        }
    }

    public void c(Object obj) {
        androidx.media3.common.util.a.e(obj);
        synchronized (this.f10453g) {
            try {
                if (this.f10454h) {
                    return;
                }
                this.f10450d.add(new c(obj));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public t d(Looper looper, i iVar, b bVar) {
        return new t(this.f10450d, looper, iVar, bVar, this.f10455i);
    }

    public t e(Looper looper, b bVar) {
        return d(looper, this.f10447a, bVar);
    }

    public void f() {
        m();
        if (this.f10452f.isEmpty()) {
            return;
        }
        if (!this.f10448b.a(1)) {
            p pVar = this.f10448b;
            pVar.b(pVar.obtainMessage(1));
        }
        boolean zIsEmpty = this.f10451e.isEmpty();
        this.f10451e.addAll(this.f10452f);
        this.f10452f.clear();
        if (zIsEmpty) {
            while (!this.f10451e.isEmpty()) {
                ((Runnable) this.f10451e.peekFirst()).run();
                this.f10451e.removeFirst();
            }
        }
    }

    public void i(final int i11, final a aVar) {
        m();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f10450d);
        this.f10452f.add(new Runnable() { // from class: androidx.media3.common.util.s
            @Override // java.lang.Runnable
            public final void run() {
                t.h(copyOnWriteArraySet, i11, aVar);
            }
        });
    }

    public void j() {
        m();
        synchronized (this.f10453g) {
            this.f10454h = true;
        }
        Iterator it = this.f10450d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).c(this.f10449c);
        }
        this.f10450d.clear();
    }

    public void k(Object obj) {
        m();
        for (c cVar : this.f10450d) {
            if (cVar.f10456a.equals(obj)) {
                cVar.c(this.f10449c);
                this.f10450d.remove(cVar);
            }
        }
    }

    public void l(int i11, a aVar) {
        i(i11, aVar);
        f();
    }
}
