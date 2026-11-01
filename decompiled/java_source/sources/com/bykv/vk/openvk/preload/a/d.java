package com.bykv.vk.openvk.preload.a;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.bykv.vk.openvk.preload.a.c.a<?> f20472a = com.bykv.vk.openvk.preload.a.c.a.a(Object.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadLocal<Map<com.bykv.vk.openvk.preload.a.c.a<?>, a<?>>> f20473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<com.bykv.vk.openvk.preload.a.c.a<?>, r<?>> f20474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b f20475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.a.d f20476e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<s> f20477f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f20478g;

    static class a<T> extends r<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private r<T> f20481a;

        a() {
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            r<T> rVar = this.f20481a;
            if (rVar != null) {
                return rVar.a(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t11) throws IOException {
            r<T> rVar = this.f20481a;
            if (rVar == null) {
                throw new IllegalStateException();
            }
            rVar.a(cVar, t11);
        }

        public final void a(r<T> rVar) {
            if (this.f20481a != null) {
                throw new AssertionError();
            }
            this.f20481a = rVar;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public d() {
        com.bykv.vk.openvk.preload.a.b.c cVar = com.bykv.vk.openvk.preload.a.b.c.f20426a;
        b bVar = b.f20310a;
        Map mapEmptyMap = Collections.emptyMap();
        q qVar = q.f20533a;
        Collections.emptyList();
        Collections.emptyList();
        this(cVar, bVar, mapEmptyMap, true, qVar, Collections.emptyList());
    }

    d(com.bykv.vk.openvk.preload.a.b.c cVar, c cVar2, Map<Type, f<?>> map, boolean z10, q qVar, List<s> list) {
        this.f20473b = new ThreadLocal<>();
        this.f20474c = new ConcurrentHashMap();
        com.bykv.vk.openvk.preload.a.b.b bVar = new com.bykv.vk.openvk.preload.a.b.b(map);
        this.f20475d = bVar;
        this.f20478g = z10;
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.B);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.g.f20338a);
        arrayList.add(cVar);
        arrayList.addAll(list);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20384p);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20375g);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20372d);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20373e);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20374f);
        final r<Number> rVar = qVar == q.f20533a ? com.bykv.vk.openvk.preload.a.b.a.m.f20379k : new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.d.3
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Long.valueOf(aVar.l());
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar3, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    cVar3.h();
                } else {
                    cVar3.b(number2.toString());
                }
            }
        };
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Long.TYPE, Long.class, rVar));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Double.TYPE, Double.class, new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.d.1
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Double.valueOf(aVar.k());
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar3, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    cVar3.h();
                } else {
                    d.a(number2.doubleValue());
                    cVar3.a(number2);
                }
            }
        }));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Float.TYPE, Float.class, new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.d.2
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Float.valueOf((float) aVar.k());
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar3, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    cVar3.h();
                } else {
                    d.a(number2.floatValue());
                    cVar3.a(number2);
                }
            }
        }));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20380l);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20376h);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20377i);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(AtomicLong.class, new r<AtomicLong>() { // from class: com.bykv.vk.openvk.preload.a.d.4
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ AtomicLong a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return new AtomicLong(((Number) rVar.a(aVar)).longValue());
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar3, AtomicLong atomicLong) throws IOException {
                rVar.a(cVar3, Long.valueOf(atomicLong.get()));
            }
        }.a()));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(AtomicLongArray.class, new r<AtomicLongArray>() { // from class: com.bykv.vk.openvk.preload.a.d.5
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ AtomicLongArray a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                ArrayList arrayList2 = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList2.add(Long.valueOf(((Number) rVar.a(aVar)).longValue()));
                }
                aVar.b();
                int size = arrayList2.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i11 = 0; i11 < size; i11++) {
                    atomicLongArray.set(i11, ((Long) arrayList2.get(i11)).longValue());
                }
                return atomicLongArray;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar3, AtomicLongArray atomicLongArray) throws IOException {
                AtomicLongArray atomicLongArray2 = atomicLongArray;
                cVar3.d();
                int length = atomicLongArray2.length();
                for (int i11 = 0; i11 < length; i11++) {
                    rVar.a(cVar3, Long.valueOf(atomicLongArray2.get(i11)));
                }
                cVar3.e();
            }
        }.a()));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20378j);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20381m);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20385q);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20386r);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(BigDecimal.class, com.bykv.vk.openvk.preload.a.b.a.m.f20382n));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(BigInteger.class, com.bykv.vk.openvk.preload.a.b.a.m.f20383o));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20387s);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20388t);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20390v);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20391w);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20394z);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20389u);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20370b);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.c.f20330a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20393y);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.j.f20358a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.i.f20356a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20392x);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.a.f20323a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f20369a);
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.b(bVar));
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.f(bVar));
        com.bykv.vk.openvk.preload.a.b.a.d dVar = new com.bykv.vk.openvk.preload.a.b.a.d(bVar);
        this.f20476e = dVar;
        arrayList.add(dVar);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.C);
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.h(bVar, cVar2, cVar));
        this.f20477f = Collections.unmodifiableList(arrayList);
    }

    private static com.bykv.vk.openvk.preload.a.d.c a(Writer writer) throws IOException {
        com.bykv.vk.openvk.preload.a.d.c cVar = new com.bykv.vk.openvk.preload.a.d.c(writer);
        cVar.c(false);
        return cVar;
    }

    private <T> T a(com.bykv.vk.openvk.preload.a.d.a aVar, Type type) throws j, p {
        boolean zP = aVar.p();
        boolean z10 = true;
        aVar.a(true);
        try {
            try {
                try {
                    aVar.f();
                    z10 = false;
                    T tA = a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type)).a(aVar);
                    aVar.a(zP);
                    return tA;
                } catch (EOFException e11) {
                    if (!z10) {
                        throw new p(e11);
                    }
                    aVar.a(zP);
                    return null;
                } catch (IllegalStateException e12) {
                    throw new p(e12);
                }
            } catch (IOException e13) {
                throw new p(e13);
            } catch (AssertionError e14) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e14.getMessage());
                assertionError.initCause(e14);
                throw assertionError;
            }
        } catch (Throwable th2) {
            aVar.a(zP);
            throw th2;
        }
    }

    static void a(double d11) {
        if (Double.isNaN(d11) || Double.isInfinite(d11)) {
            throw new IllegalArgumentException(d11 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        boolean z10;
        r<T> rVar = (r) this.f20474c.get(aVar == null ? f20472a : aVar);
        if (rVar != null) {
            return rVar;
        }
        Map<com.bykv.vk.openvk.preload.a.c.a<?>, a<?>> map = this.f20473b.get();
        if (map == null) {
            map = new HashMap<>();
            this.f20473b.set(map);
            z10 = true;
        } else {
            z10 = false;
        }
        a<?> aVar2 = map.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a<?> aVar3 = new a<>();
            map.put(aVar, aVar3);
            Iterator<s> it = this.f20477f.iterator();
            while (it.hasNext()) {
                r<T> rVarA = it.next().a(this, aVar);
                if (rVarA != null) {
                    aVar3.a((r<?>) rVarA);
                    this.f20474c.put(aVar, rVarA);
                    map.remove(aVar);
                    if (z10) {
                        this.f20473b.remove();
                    }
                    return rVarA;
                }
            }
            throw new IllegalArgumentException("GSON (pangle-v3200) cannot handle ".concat(String.valueOf(aVar)));
        } catch (Throwable th2) {
            map.remove(aVar);
            if (z10) {
                this.f20473b.remove();
            }
            throw th2;
        }
    }

    public final <T> r<T> a(s sVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        if (!this.f20477f.contains(sVar)) {
            sVar = this.f20476e;
        }
        boolean z10 = false;
        for (s sVar2 : this.f20477f) {
            if (z10) {
                r<T> rVarA = sVar2.a(this, aVar);
                if (rVarA != null) {
                    return rVarA;
                }
            } else if (sVar2 == sVar) {
                z10 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(aVar)));
    }

    public final <T> r<T> a(Class<T> cls) {
        return a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a((Class) cls));
    }

    public final <T> T a(Reader reader, Type type) throws j, p {
        com.bykv.vk.openvk.preload.a.d.a aVar = new com.bykv.vk.openvk.preload.a.d.a(reader);
        aVar.a(false);
        T t11 = (T) a(aVar, type);
        if (t11 != null) {
            try {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.END_DOCUMENT) {
                    throw new j("JSON document was not fully consumed.");
                }
            } catch (com.bykv.vk.openvk.preload.a.d.d e11) {
                throw new p(e11);
            } catch (IOException e12) {
                throw new j(e12);
            }
        }
        return t11;
    }

    public final String a(Object obj) {
        if (obj == null) {
            k kVar = k.f20530a;
            StringWriter stringWriter = new StringWriter();
            try {
                com.bykv.vk.openvk.preload.a.d.c cVarA = a((Writer) stringWriter);
                boolean zA = cVarA.a();
                cVarA.a(true);
                boolean zB = cVarA.b();
                cVarA.b(this.f20478g);
                boolean zC = cVarA.c();
                cVarA.c(false);
                try {
                    try {
                        com.bykv.vk.openvk.preload.geckox.h.a.a(kVar, cVarA);
                        cVarA.a(zA);
                        cVarA.b(zB);
                        cVarA.c(zC);
                        return stringWriter.toString();
                    } catch (Throwable th2) {
                        cVarA.a(zA);
                        cVarA.b(zB);
                        cVarA.c(zC);
                        throw th2;
                    }
                } catch (IOException e11) {
                    throw new j(e11);
                } catch (AssertionError e12) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e12.getMessage());
                    assertionError.initCause(e12);
                    throw assertionError;
                }
            } catch (IOException e13) {
                throw new j(e13);
            }
        }
        Class<?> cls = obj.getClass();
        StringWriter stringWriter2 = new StringWriter();
        try {
            com.bykv.vk.openvk.preload.a.d.c cVarA2 = a((Writer) stringWriter2);
            r rVarA = a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a((Type) cls));
            boolean zA2 = cVarA2.a();
            cVarA2.a(true);
            boolean zB2 = cVarA2.b();
            cVarA2.b(this.f20478g);
            boolean zC2 = cVarA2.c();
            cVarA2.c(false);
            try {
                try {
                    rVarA.a(cVarA2, obj);
                    cVarA2.a(zA2);
                    cVarA2.b(zB2);
                    cVarA2.c(zC2);
                    return stringWriter2.toString();
                } catch (IOException e14) {
                    throw new j(e14);
                } catch (AssertionError e15) {
                    AssertionError assertionError2 = new AssertionError("AssertionError (GSON pangle-v3200): " + e15.getMessage());
                    assertionError2.initCause(e15);
                    throw assertionError2;
                }
            } catch (Throwable th3) {
                cVarA2.a(zA2);
                cVarA2.b(zB2);
                cVarA2.c(zC2);
                throw th3;
            }
        } catch (IOException e16) {
            throw new j(e16);
        }
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.f20477f + ",instanceCreators:" + this.f20475d + "}";
    }
}
