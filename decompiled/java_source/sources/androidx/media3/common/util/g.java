package androidx.media3.common.util;

import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f10381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f10382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f10383c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f10384d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f10385e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10386f;

    public interface a {
        void a(Object obj, Object obj2);
    }

    public g(Object obj, Looper looper, Looper looper2, i iVar, a aVar) {
        this.f10381a = iVar.createHandler(looper, null);
        this.f10382b = iVar.createHandler(looper2, null);
        this.f10384d = obj;
        this.f10385e = obj;
        this.f10383c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(Object obj) {
        if (this.f10386f == 0) {
            k(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(Object obj) {
        int i11 = this.f10386f - 1;
        this.f10386f = i11;
        if (i11 == 0) {
            k(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(com.google.common.base.f fVar) {
        final Object objApply = fVar.apply(this.f10385e);
        this.f10385e = objApply;
        this.f10382b.post(new Runnable() { // from class: androidx.media3.common.util.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f10379a.f(objApply);
            }
        });
    }

    private void k(Object obj) {
        Object obj2 = this.f10384d;
        this.f10384d = obj;
        if (obj2.equals(obj)) {
            return;
        }
        this.f10383c.a(obj2, obj);
    }

    public Object d() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == this.f10382b.getLooper()) {
            return this.f10384d;
        }
        androidx.media3.common.util.a.g(looperMyLooper == this.f10381a.getLooper());
        return this.f10385e;
    }

    public void h(Runnable runnable) {
        this.f10381a.post(runnable);
    }

    public void i(final Object obj) {
        this.f10385e = obj;
        this.f10382b.post(new Runnable() { // from class: androidx.media3.common.util.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f10372a.e(obj);
            }
        });
    }

    public void j(com.google.common.base.f fVar, final com.google.common.base.f fVar2) {
        androidx.media3.common.util.a.g(Looper.myLooper() == this.f10382b.getLooper());
        this.f10386f++;
        this.f10381a.post(new Runnable() { // from class: androidx.media3.common.util.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f10375a.g(fVar2);
            }
        });
        k(fVar.apply(this.f10384d));
    }
}
