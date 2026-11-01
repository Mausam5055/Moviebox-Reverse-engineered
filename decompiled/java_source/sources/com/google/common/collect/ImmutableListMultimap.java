package com.google.common.collect;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes4.dex */
public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V> implements i3 {
    private static final long serialVersionUID = 0;
    private transient ImmutableListMultimap<V, K> inverse;

    public static final class a extends ImmutableMultimap.c {
        public a() {
        }

        a(int i11) {
            super(i11);
        }

        public ImmutableListMultimap j() {
            return (ImmutableListMultimap) super.a();
        }

        a k(ImmutableMultimap.c cVar) {
            super.b(cVar);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public a f(Object obj, Object obj2) {
            super.f(obj, obj2);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public a g(Map.Entry entry) {
            super.g(entry);
            return this;
        }

        public a n(Iterable iterable) {
            super.h(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public a i(Object obj, Iterable iterable) {
            super.i(obj, iterable);
            return this;
        }
    }

    ImmutableListMultimap(ImmutableMap<K, ImmutableList<V>> immutableMap, int i11) {
        super(immutableMap, i11);
    }

    public static <K, V> a builder() {
        return new a();
    }

    public static <K, V> a builderWithExpectedKeys(int i11) {
        e2.b(i11, "expectedKeys");
        return new a(i11);
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(j3 j3Var) {
        if (j3Var.isEmpty()) {
            return of();
        }
        if (j3Var instanceof ImmutableListMultimap) {
            ImmutableListMultimap<K, V> immutableListMultimap = (ImmutableListMultimap) j3Var;
            if (!immutableListMultimap.isPartialView()) {
                return immutableListMultimap;
            }
        }
        return fromMapEntries(j3Var.asMap().entrySet(), null);
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().n(iterable).j();
    }

    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> flatteningToImmutableListMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends Stream<? extends V>> function2) {
        return d2.s(function, function2);
    }

    static <K, V> ImmutableListMultimap<K, V> fromMapBuilderEntries(Collection<? extends Map.Entry<K, ImmutableCollection.b>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int size = 0;
        for (Map.Entry<K, ImmutableCollection.b> entry : collection) {
            K key = entry.getKey();
            ImmutableList.a aVar = (ImmutableList.a) entry.getValue();
            ImmutableList immutableListE = comparator == null ? aVar.e() : aVar.o(comparator);
            bVar.h(key, immutableListE);
            size += immutableListE.size();
        }
        return new ImmutableListMultimap<>(bVar.d(), size);
    }

    static <K, V> ImmutableListMultimap<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int size = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            Collection<? extends V> value = entry.getValue();
            ImmutableList immutableListCopyOf = comparator == null ? ImmutableList.copyOf((Collection) value) : ImmutableList.sortedCopyOf(comparator, value);
            if (!immutableListCopyOf.isEmpty()) {
                bVar.h(key, immutableListCopyOf);
                size += immutableListCopyOf.size();
            }
        }
        return new ImmutableListMultimap<>(bVar.d(), size);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableListMultimap<V, K> invert() {
        a aVarBuilder = builder();
        r4 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            aVarBuilder.f(entry.getValue(), entry.getKey());
        }
        ImmutableListMultimap<V, K> immutableListMultimapJ = aVarBuilder.j();
        immutableListMultimapJ.inverse = this;
        return immutableListMultimapJ;
    }

    public static <K, V> ImmutableListMultimap<K, V> of() {
        return EmptyImmutableListMultimap.INSTANCE;
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k11, V v11) {
        a aVarBuilder = builder();
        aVarBuilder.f(k11, v11);
        return aVarBuilder.j();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k11, V v11, K k12, V v12) {
        a aVarBuilder = builder();
        aVarBuilder.f(k11, v11);
        aVarBuilder.f(k12, v12);
        return aVarBuilder.j();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13) {
        a aVarBuilder = builder();
        aVarBuilder.f(k11, v11);
        aVarBuilder.f(k12, v12);
        aVarBuilder.f(k13, v13);
        return aVarBuilder.j();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        a aVarBuilder = builder();
        aVarBuilder.f(k11, v11);
        aVarBuilder.f(k12, v12);
        aVarBuilder.f(k13, v13);
        aVarBuilder.f(k14, v14);
        return aVarBuilder.j();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15) {
        a aVarBuilder = builder();
        aVarBuilder.f(k11, v11);
        aVarBuilder.f(k12, v12);
        aVarBuilder.f(k13, v13);
        aVarBuilder.f(k14, v14);
        aVarBuilder.f(k15, v15);
        return aVarBuilder.j();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i11 = objectInputStream.readInt();
        if (i11 < 0) {
            throw new InvalidObjectException("Invalid key count " + i11);
        }
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            int i14 = objectInputStream.readInt();
            if (i14 <= 0) {
                throw new InvalidObjectException("Invalid value count " + i14);
            }
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i15 = 0; i15 < i14; i15++) {
                Object object2 = objectInputStream.readObject();
                Objects.requireNonNull(object2);
                aVarBuilder.a(object2);
            }
            bVarBuilder.h(object, aVarBuilder.e());
            i12 += i14;
        }
        try {
            ImmutableMultimap.d.f30441a.b(this, bVarBuilder.d());
            ImmutableMultimap.d.f30442b.a(this, i12);
        } catch (IllegalArgumentException e11) {
            throw ((InvalidObjectException) new InvalidObjectException(e11.getMessage()).initCause(e11));
        }
    }

    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> toImmutableListMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return d2.P(function, function2);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        w3.j(this, objectOutputStream);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.j3
    public ImmutableList<V> get(K k11) {
        ImmutableList<V> immutableList = (ImmutableList) this.map.get(k11);
        return immutableList == null ? ImmutableList.of() : immutableList;
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public ImmutableListMultimap<V, K> inverse() {
        ImmutableListMultimap<V, K> immutableListMultimap = this.inverse;
        if (immutableListMultimap != null) {
            return immutableListMultimap;
        }
        ImmutableListMultimap<V, K> immutableListMultimapInvert = invert();
        this.inverse = immutableListMultimapInvert;
        return immutableListMultimapInvert;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.j3
    @Deprecated
    public final ImmutableList<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap
    @Deprecated
    /* JADX INFO: renamed from: replaceValues, reason: merged with bridge method [inline-methods] */
    public final ImmutableList<V> mo282replaceValues(K k11, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }
}
