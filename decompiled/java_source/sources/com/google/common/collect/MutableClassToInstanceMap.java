package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class MutableClassToInstanceMap<B> extends n2 implements Map, Serializable {
    private final Map<Class<? extends B>, B> delegate;

    private static final class SerializedForm<B> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Map<Class<? extends B>, B> backingMap;

        SerializedForm(Map<Class<? extends B>, B> map) {
            this.backingMap = map;
        }

        Object readResolve() {
            return MutableClassToInstanceMap.create(this.backingMap);
        }
    }

    class a extends o2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map.Entry f30620a;

        a(Map.Entry entry) {
            this.f30620a = entry;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.q2
        public Map.Entry l() {
            return this.f30620a;
        }

        @Override // com.google.common.collect.o2, java.util.Map.Entry
        public Object setValue(Object obj) {
            MutableClassToInstanceMap.cast((Class) getKey(), obj);
            return super.setValue(obj);
        }
    }

    class b extends s2 {

        class a extends o4 {
            a(Iterator it) {
                super(it);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.o4
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry a(Map.Entry entry) {
                return MutableClassToInstanceMap.checkedEntry(entry);
            }
        }

        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.k2, com.google.common.collect.q2
        /* JADX INFO: renamed from: delegate */
        public Set l() {
            return MutableClassToInstanceMap.this.l().entrySet();
        }

        @Override // com.google.common.collect.k2, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new a(l().iterator());
        }

        @Override // com.google.common.collect.k2, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.k2, java.util.Collection, java.util.Set
        public Object[] toArray(Object[] objArr) {
            return standardToArray(objArr);
        }
    }

    private MutableClassToInstanceMap(Map<Class<? extends B>, B> map) {
        this.delegate = (Map) com.google.common.base.m.o(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T cast(Class<T> cls, Object obj) {
        return (T) com.google.common.primitives.d.d(cls).cast(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <B> Map.Entry<Class<? extends B>, B> checkedEntry(Map.Entry<Class<? extends B>, B> entry) {
        return new a(entry);
    }

    public static <B> MutableClassToInstanceMap<B> create() {
        return new MutableClassToInstanceMap<>(new HashMap());
    }

    public static <B> MutableClassToInstanceMap<B> create(Map<Class<? extends B>, B> map) {
        return new MutableClassToInstanceMap<>(map);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    private Object writeReplace() {
        return new SerializedForm(l());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.q2
    /* JADX INFO: renamed from: delegate */
    public Map<Class<? extends B>, B> l() {
        return this.delegate;
    }

    @Override // com.google.common.collect.n2, java.util.Map
    public Set<Map.Entry<Class<? extends B>, B>> entrySet() {
        return new b();
    }

    public <T extends B> T getInstance(Class<T> cls) {
        return (T) cast(cls, get(cls));
    }

    @Override // com.google.common.collect.n2, java.util.Map
    public B put(Class<? extends B> cls, B b11) {
        cast(cls, b11);
        return (B) super.put((Object) cls, (Object) b11);
    }

    @Override // com.google.common.collect.n2, java.util.Map
    public void putAll(Map<? extends Class<? extends B>, ? extends B> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry<Object, Object> entry : linkedHashMap.entrySet()) {
            cast((Class) entry.getKey(), entry.getValue());
        }
        super.putAll(linkedHashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends B> T putInstance(Class<T> cls, T t11) {
        return (T) cast(cls, put((Class<? extends T>) cls, t11));
    }
}
