package androidx.compose.runtime;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class z2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f4082a = new ArrayList();

    public final void a() {
        this.f4082a.clear();
    }

    public final int b() {
        return this.f4082a.size();
    }

    public final boolean c() {
        return this.f4082a.isEmpty();
    }

    public final boolean d() {
        return !c();
    }

    public final Object e() {
        return this.f4082a.get(b() - 1);
    }

    public final Object f(int i11) {
        return this.f4082a.get(i11);
    }

    public final Object g() {
        return this.f4082a.remove(b() - 1);
    }

    public final boolean h(Object obj) {
        return this.f4082a.add(obj);
    }

    public final Object[] i() {
        int size = this.f4082a.size();
        Object[] objArr = new Object[size];
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i11] = this.f4082a.get(i11);
        }
        return objArr;
    }
}
