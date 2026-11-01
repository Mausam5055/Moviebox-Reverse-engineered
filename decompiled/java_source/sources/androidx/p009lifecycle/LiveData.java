package androidx.p009lifecycle;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class LiveData {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final Object f9535k = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f9536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k.b f9537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f9538c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile Object f9540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    volatile Object f9541f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9542g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9543h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9544i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Runnable f9545j;

    private class a extends c {
        a(c0 c0Var) {
            super(c0Var);
        }

        @Override // androidx.lifecycle.LiveData.c
        boolean d() {
            return true;
        }
    }

    class b extends c implements r {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final u f9547e;

        b(u uVar, c0 c0Var) {
            super(c0Var);
            this.f9547e = uVar;
        }

        @Override // androidx.lifecycle.LiveData.c
        void b() {
            this.f9547e.getLifecycle().d(this);
        }

        @Override // androidx.lifecycle.LiveData.c
        boolean c(u uVar) {
            return this.f9547e == uVar;
        }

        @Override // androidx.lifecycle.LiveData.c
        boolean d() {
            return this.f9547e.getLifecycle().b().isAtLeast(Lifecycle.State.STARTED);
        }

        @Override // androidx.p009lifecycle.r
        public void onStateChanged(u uVar, Lifecycle.Event event) {
            Lifecycle.State stateB = this.f9547e.getLifecycle().b();
            if (stateB == Lifecycle.State.DESTROYED) {
                LiveData.this.o(this.f9549a);
                return;
            }
            Lifecycle.State state = null;
            while (state != stateB) {
                a(d());
                state = stateB;
                stateB = this.f9547e.getLifecycle().b();
            }
        }
    }

    private abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final c0 f9549a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f9550b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f9551c = -1;

        c(c0 c0Var) {
            this.f9549a = c0Var;
        }

        void a(boolean z10) {
            if (z10 == this.f9550b) {
                return;
            }
            this.f9550b = z10;
            LiveData.this.c(z10 ? 1 : -1);
            if (this.f9550b) {
                LiveData.this.e(this);
            }
        }

        void b() {
        }

        boolean c(u uVar) {
            return false;
        }

        abstract boolean d();
    }

    public LiveData() {
        this.f9536a = new Object();
        this.f9537b = new k.b();
        this.f9538c = 0;
        Object obj = f9535k;
        this.f9541f = obj;
        this.f9545j = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            @Override // java.lang.Runnable
            public void run() {
                Object obj2;
                synchronized (LiveData.this.f9536a) {
                    obj2 = LiveData.this.f9541f;
                    LiveData.this.f9541f = LiveData.f9535k;
                }
                LiveData.this.q(obj2);
            }
        };
        this.f9540e = obj;
        this.f9542g = -1;
    }

    public LiveData(Object obj) {
        this.f9536a = new Object();
        this.f9537b = new k.b();
        this.f9538c = 0;
        this.f9541f = f9535k;
        this.f9545j = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            @Override // java.lang.Runnable
            public void run() {
                Object obj2;
                synchronized (LiveData.this.f9536a) {
                    obj2 = LiveData.this.f9541f;
                    LiveData.this.f9541f = LiveData.f9535k;
                }
                LiveData.this.q(obj2);
            }
        };
        this.f9540e = obj;
        this.f9542g = 0;
    }

    static void b(String str) {
        if (j.c.h().c()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    private void d(c cVar) {
        if (cVar.f9550b) {
            if (!cVar.d()) {
                cVar.a(false);
                return;
            }
            int i11 = cVar.f9551c;
            int i12 = this.f9542g;
            if (i11 >= i12) {
                return;
            }
            cVar.f9551c = i12;
            cVar.f9549a.onChanged(this.f9540e);
        }
    }

    void c(int i11) {
        int i12 = this.f9538c;
        this.f9538c = i11 + i12;
        if (this.f9539d) {
            return;
        }
        this.f9539d = true;
        while (true) {
            try {
                int i13 = this.f9538c;
                if (i12 == i13) {
                    this.f9539d = false;
                    return;
                }
                boolean z10 = i12 == 0 && i13 > 0;
                boolean z11 = i12 > 0 && i13 == 0;
                if (z10) {
                    l();
                } else if (z11) {
                    m();
                }
                i12 = i13;
            } catch (Throwable th2) {
                this.f9539d = false;
                throw th2;
            }
        }
    }

    void e(c cVar) {
        if (this.f9543h) {
            this.f9544i = true;
            return;
        }
        this.f9543h = true;
        do {
            this.f9544i = false;
            if (cVar != null) {
                d(cVar);
                cVar = null;
            } else {
                k.b.d dVarC = this.f9537b.c();
                while (dVarC.hasNext()) {
                    d((c) ((Map.Entry) dVarC.next()).getValue());
                    if (this.f9544i) {
                        break;
                    }
                }
            }
        } while (this.f9544i);
        this.f9543h = false;
    }

    public Object f() {
        Object obj = this.f9540e;
        if (obj != f9535k) {
            return obj;
        }
        return null;
    }

    int g() {
        return this.f9542g;
    }

    public boolean h() {
        return this.f9538c > 0;
    }

    public boolean i() {
        return this.f9540e != f9535k;
    }

    public void j(u uVar, c0 c0Var) {
        b("observe");
        if (uVar.getLifecycle().b() == Lifecycle.State.DESTROYED) {
            return;
        }
        b bVar = new b(uVar, c0Var);
        c cVar = (c) this.f9537b.g(c0Var, bVar);
        if (cVar != null && !cVar.c(uVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (cVar != null) {
            return;
        }
        uVar.getLifecycle().a(bVar);
    }

    public void k(c0 c0Var) {
        b("observeForever");
        a aVar = new a(c0Var);
        c cVar = (c) this.f9537b.g(c0Var, aVar);
        if (cVar instanceof b) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (cVar != null) {
            return;
        }
        aVar.a(true);
    }

    protected void l() {
    }

    protected void m() {
    }

    protected void n(Object obj) {
        boolean z10;
        synchronized (this.f9536a) {
            z10 = this.f9541f == f9535k;
            this.f9541f = obj;
        }
        if (z10) {
            j.c.h().d(this.f9545j);
        }
    }

    public void o(c0 c0Var) {
        b("removeObserver");
        c cVar = (c) this.f9537b.h(c0Var);
        if (cVar == null) {
            return;
        }
        cVar.b();
        cVar.a(false);
    }

    public void p(u uVar) {
        b("removeObservers");
        for (Map.Entry entry : this.f9537b) {
            if (((c) entry.getValue()).c(uVar)) {
                o((c0) entry.getKey());
            }
        }
    }

    protected void q(Object obj) {
        b("setValue");
        this.f9542g++;
        this.f9540e = obj;
        e(null);
    }
}
