package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f3670b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f3671c;

    public a(Object obj) {
        this.f3669a = obj;
        this.f3671c = obj;
    }

    public final Object a() {
        return this.f3669a;
    }

    protected abstract void b();

    protected void c(Object obj) {
        this.f3671c = obj;
    }

    @Override // androidx.compose.runtime.f
    public final void clear() {
        this.f3670b.clear();
        c(this.f3669a);
        b();
    }

    @Override // androidx.compose.runtime.f
    public Object d() {
        return this.f3671c;
    }

    @Override // androidx.compose.runtime.f
    public /* synthetic */ void h() {
        e.b(this);
    }

    @Override // androidx.compose.runtime.f
    public void j(Object obj) {
        this.f3670b.add(d());
        c(obj);
    }

    @Override // androidx.compose.runtime.f
    public /* synthetic */ void k() {
        e.a(this);
    }

    @Override // androidx.compose.runtime.f
    public void l() {
        if (this.f3670b.isEmpty()) {
            o1.b("empty stack");
        }
        List list = this.f3670b;
        c(list.remove(list.size() - 1));
    }
}
