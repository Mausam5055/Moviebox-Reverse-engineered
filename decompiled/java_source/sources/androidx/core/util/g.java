package androidx.core.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class g implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f8269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f8270b;

    public g(int i11) {
        if (i11 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f8269a = new Object[i11];
    }

    private final boolean a(Object obj) {
        int i11 = this.f8270b;
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.f8269a[i12] == obj) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.core.util.f
    public Object acquire() {
        int i11 = this.f8270b;
        if (i11 <= 0) {
            return null;
        }
        int i12 = i11 - 1;
        Object obj = this.f8269a[i12];
        Intrinsics.f(obj, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
        this.f8269a[i12] = null;
        this.f8270b--;
        return obj;
    }

    @Override // androidx.core.util.f
    public boolean release(Object instance) {
        Intrinsics.h(instance, "instance");
        if (a(instance)) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i11 = this.f8270b;
        Object[] objArr = this.f8269a;
        if (i11 >= objArr.length) {
            return false;
        }
        objArr[i11] = instance;
        this.f8270b = i11 + 1;
        return true;
    }
}
