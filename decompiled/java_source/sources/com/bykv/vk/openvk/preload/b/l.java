package com.bykv.vk.openvk.preload.b;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class l<IN, OUT> extends d<IN, OUT> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, a> f20562d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        List<h> f20563a = new ArrayList();

        public final a a(h hVar) {
            this.f20563a.add(hVar);
            return this;
        }

        public final a a(List<h> list) {
            this.f20563a.addAll(list);
            return this;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Map<String, a> f20564a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.bykv.vk.openvk.preload.b.b.a f20565b;

        public final h a(Class<? extends l> cls) {
            return h.a.a().a(cls).a(this.f20564a).a(this.f20565b).b();
        }

        public final a a(String str) {
            if (this.f20564a.containsKey(str)) {
                throw new IllegalArgumentException("duplicated branch name");
            }
            a aVar = new a();
            this.f20564a.put(str, aVar);
            return aVar;
        }
    }

    l() {
    }

    static boolean a(List<h> list) {
        return !list.isEmpty() && list.get(list.size() - 1).f20550a == f.class;
    }

    final Map<String, a> a() {
        return this.f20562d;
    }

    @Override // com.bykv.vk.openvk.preload.b.d
    protected final void a(Object... objArr) {
        Object obj;
        super.a(objArr);
        if (objArr == null || objArr.length != 1 || (obj = objArr[0]) == null) {
            throw new IllegalStateException("args error");
        }
        try {
            this.f20562d = (Map) obj;
        } catch (ClassCastException e11) {
            throw new IllegalArgumentException(e11);
        }
    }
}
