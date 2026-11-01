package com.transsion.json.b;

import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class p extends ConcurrentHashMap<Class, n> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private p f46034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f46035b;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f46036a;

        a() {
        }

        public void a(boolean z10) {
            this.f46036a = z10;
        }

        public boolean b() {
            return this.f46036a;
        }
    }

    public p() {
    }

    public p(p pVar) {
        this.f46034a = pVar;
    }

    private n a(Class cls, Class cls2, a aVar) {
        if (cls == null) {
            return null;
        }
        if (containsKey(cls)) {
            if (cls != cls2) {
                aVar.a(false);
            }
            return get(cls);
        }
        if (cls.isArray()) {
            aVar.a(false);
            return get(Arrays.class);
        }
        for (Class<?> cls3 : cls.getInterfaces()) {
            n nVarA = a(cls3, cls2, aVar);
            if (nVarA != null) {
                return nVarA;
            }
        }
        return a(cls.getSuperclass(), cls2, aVar);
    }

    public n a(Class cls, n nVar) {
        if (!this.f46035b) {
            put(cls, nVar);
        }
        return nVar;
    }

    public n a(Object obj) {
        p pVar;
        a aVar = new a();
        Class<?> cls = obj == null ? Void.TYPE : obj.getClass();
        n nVarA = a(cls, cls, aVar);
        if (nVarA == null && (pVar = this.f46034a) != null && (nVarA = pVar.a(obj)) != null) {
            a(obj == null ? Void.TYPE : obj.getClass(), nVarA);
        }
        if (!aVar.b()) {
            a(cls, nVarA);
        }
        return nVarA;
    }
}
