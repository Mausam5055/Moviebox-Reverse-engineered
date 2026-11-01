package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static d f29800e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f29801a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f29802b = new Handler(Looper.getMainLooper(), new a());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f29803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f29804d;

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            d.this.d((c) message.obj);
            return true;
        }
    }

    interface b {
        void a(int i11);

        void show();
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final WeakReference f29806a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f29807b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f29808c;

        c(int i11, b bVar) {
            this.f29806a = new WeakReference(bVar);
            this.f29807b = i11;
        }

        boolean a(b bVar) {
            return bVar != null && this.f29806a.get() == bVar;
        }
    }

    private d() {
    }

    private boolean a(c cVar, int i11) {
        b bVar = (b) cVar.f29806a.get();
        if (bVar == null) {
            return false;
        }
        this.f29802b.removeCallbacksAndMessages(cVar);
        bVar.a(i11);
        return true;
    }

    static d c() {
        if (f29800e == null) {
            f29800e = new d();
        }
        return f29800e;
    }

    private boolean f(b bVar) {
        c cVar = this.f29803c;
        return cVar != null && cVar.a(bVar);
    }

    private boolean g(b bVar) {
        c cVar = this.f29804d;
        return cVar != null && cVar.a(bVar);
    }

    private void l(c cVar) {
        int i11 = cVar.f29807b;
        if (i11 == -2) {
            return;
        }
        if (i11 <= 0) {
            i11 = i11 == -1 ? 1500 : 2750;
        }
        this.f29802b.removeCallbacksAndMessages(cVar);
        Handler handler = this.f29802b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i11);
    }

    private void n() {
        c cVar = this.f29804d;
        if (cVar != null) {
            this.f29803c = cVar;
            this.f29804d = null;
            b bVar = (b) cVar.f29806a.get();
            if (bVar != null) {
                bVar.show();
            } else {
                this.f29803c = null;
            }
        }
    }

    public void b(b bVar, int i11) {
        synchronized (this.f29801a) {
            try {
                if (f(bVar)) {
                    a(this.f29803c, i11);
                } else if (g(bVar)) {
                    a(this.f29804d, i11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void d(c cVar) {
        synchronized (this.f29801a) {
            try {
                if (this.f29803c == cVar || this.f29804d == cVar) {
                    a(cVar, 2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean e(b bVar) {
        boolean z10;
        synchronized (this.f29801a) {
            try {
                z10 = f(bVar) || g(bVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    public void h(b bVar) {
        synchronized (this.f29801a) {
            try {
                if (f(bVar)) {
                    this.f29803c = null;
                    if (this.f29804d != null) {
                        n();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void i(b bVar) {
        synchronized (this.f29801a) {
            try {
                if (f(bVar)) {
                    l(this.f29803c);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void j(b bVar) {
        synchronized (this.f29801a) {
            try {
                if (f(bVar)) {
                    c cVar = this.f29803c;
                    if (!cVar.f29808c) {
                        cVar.f29808c = true;
                        this.f29802b.removeCallbacksAndMessages(cVar);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void k(b bVar) {
        synchronized (this.f29801a) {
            try {
                if (f(bVar)) {
                    c cVar = this.f29803c;
                    if (cVar.f29808c) {
                        cVar.f29808c = false;
                        l(cVar);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void m(int i11, b bVar) {
        synchronized (this.f29801a) {
            try {
                if (f(bVar)) {
                    c cVar = this.f29803c;
                    cVar.f29807b = i11;
                    this.f29802b.removeCallbacksAndMessages(cVar);
                    l(this.f29803c);
                    return;
                }
                if (g(bVar)) {
                    this.f29804d.f29807b = i11;
                } else {
                    this.f29804d = new c(i11, bVar);
                }
                c cVar2 = this.f29803c;
                if (cVar2 == null || !a(cVar2, 4)) {
                    this.f29803c = null;
                    n();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
