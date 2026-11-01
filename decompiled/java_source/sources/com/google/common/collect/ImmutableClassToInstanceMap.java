package com.google.common.collect;

import java.io.Serializable;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ImmutableClassToInstanceMap<B> extends n2 implements Map, Serializable {
    private static final ImmutableClassToInstanceMap<Object> EMPTY = new ImmutableClassToInstanceMap<>(ImmutableMap.of());
    private final ImmutableMap<Class<? extends B>, B> delegate;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ImmutableMap.b f30407a = ImmutableMap.builder();

        private static Object b(Class cls, Object obj) {
            return com.google.common.primitives.d.d(cls).cast(obj);
        }

        public ImmutableClassToInstanceMap a() {
            ImmutableMap immutableMapD = this.f30407a.d();
            return immutableMapD.isEmpty() ? ImmutableClassToInstanceMap.of() : new ImmutableClassToInstanceMap(immutableMapD);
        }

        public b c(Map map) {
            for (Map.Entry entry : map.entrySet()) {
                Class cls = (Class) entry.getKey();
                this.f30407a.h(cls, b(cls, entry.getValue()));
            }
            return this;
        }
    }

    private ImmutableClassToInstanceMap(ImmutableMap<Class<? extends B>, B> immutableMap) {
        this.delegate = immutableMap;
    }

    public static <B> b builder() {
        return new b();
    }

    public static <B, S extends B> ImmutableClassToInstanceMap<B> copyOf(Map<? extends Class<? extends S>, ? extends S> map) {
        return map instanceof ImmutableClassToInstanceMap ? (ImmutableClassToInstanceMap) map : new b().c(map).a();
    }

    public static <B> ImmutableClassToInstanceMap<B> of() {
        return (ImmutableClassToInstanceMap<B>) EMPTY;
    }

    public static <B, T extends B> ImmutableClassToInstanceMap<B> of(Class<T> cls, T t11) {
        return new ImmutableClassToInstanceMap<>(ImmutableMap.of(cls, t11));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.q2
    /* JADX INFO: renamed from: delegate */
    public Map<Class<? extends B>, B> l() {
        return this.delegate;
    }

    public <T extends B> T getInstance(Class<T> cls) {
        return this.delegate.get(com.google.common.base.m.o(cls));
    }

    @Deprecated
    public <T extends B> T putInstance(Class<T> cls, T t11) {
        throw new UnsupportedOperationException();
    }

    Object readResolve() {
        return isEmpty() ? of() : this;
    }
}
