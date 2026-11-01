package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a[] f18236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f18237b;

    protected static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f18238a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f18239b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f18240c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final a f18241d;

        public a(Object obj, Object obj2, int i11, a aVar) {
            this.f18239b = obj;
            this.f18240c = obj2;
            this.f18241d = aVar;
            this.f18238a = i11;
        }
    }

    public g() {
        this(8192);
    }

    public g(int i11) {
        this.f18237b = i11 - 1;
        this.f18236a = new a[i11];
    }

    public Class a(String str) {
        int i11 = 0;
        while (true) {
            a[] aVarArr = this.f18236a;
            if (i11 >= aVarArr.length) {
                return null;
            }
            a aVar = aVarArr[i11];
            if (aVar != null) {
                for (a aVar2 = aVar; aVar2 != null; aVar2 = aVar2.f18241d) {
                    Object obj = aVar.f18239b;
                    if (obj instanceof Class) {
                        Class cls = (Class) obj;
                        if (cls.getName().equals(str)) {
                            return cls;
                        }
                    }
                }
            }
            i11++;
        }
    }

    public final Object b(Object obj) {
        for (a aVar = this.f18236a[System.identityHashCode(obj) & this.f18237b]; aVar != null; aVar = aVar.f18241d) {
            if (obj == aVar.f18239b) {
                return aVar.f18240c;
            }
        }
        return null;
    }

    public boolean c(Object obj, Object obj2) {
        int iIdentityHashCode = System.identityHashCode(obj);
        int i11 = this.f18237b & iIdentityHashCode;
        for (a aVar = this.f18236a[i11]; aVar != null; aVar = aVar.f18241d) {
            if (obj == aVar.f18239b) {
                aVar.f18240c = obj2;
                return true;
            }
        }
        this.f18236a[i11] = new a(obj, obj2, iIdentityHashCode, this.f18236a[i11]);
        return false;
    }
}
