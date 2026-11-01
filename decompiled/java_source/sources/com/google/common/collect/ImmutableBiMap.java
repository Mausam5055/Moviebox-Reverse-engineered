package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V> implements k {
    private static final long serialVersionUID = 912559;

    private static class SerializedForm<K, V> extends ImmutableMap.SerializedForm<K, V> {
        private static final long serialVersionUID = 0;

        SerializedForm(ImmutableBiMap<K, V> immutableBiMap) {
            super(immutableBiMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.SerializedForm
        public a makeBuilder(int i11) {
            return new a(i11);
        }
    }

    public static final class a extends ImmutableMap.b {
        public a() {
        }

        a(int i11) {
            super(i11);
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ImmutableBiMap a() {
            return d();
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ImmutableBiMap c() {
            throw new UnsupportedOperationException("Not supported for bimaps");
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ImmutableBiMap d() {
            int i11 = this.f30421c;
            if (i11 == 0) {
                return ImmutableBiMap.of();
            }
            if (this.f30419a != null) {
                if (this.f30422d) {
                    this.f30420b = Arrays.copyOf(this.f30420b, i11 * 2);
                }
                ImmutableMap.b.l(this.f30420b, this.f30421c, this.f30419a);
            }
            this.f30422d = true;
            return new RegularImmutableBiMap(this.f30420b, this.f30421c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public a e(ImmutableMap.b bVar) {
            super.e(bVar);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public a h(Object obj, Object obj2) {
            super.h(obj, obj2);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public a i(Map.Entry entry) {
            super.i(entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public a j(Iterable iterable) {
            super.j(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public a k(Map map) {
            super.k(map);
            return this;
        }
    }

    ImmutableBiMap() {
    }

    public static <K, V> a builder() {
        return new a();
    }

    public static <K, V> a builderWithExpectedSize(int i11) {
        e2.b(i11, "expectedSize");
        return new a(i11);
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a(iterable instanceof Collection ? ((Collection) iterable).size() : 4).j(iterable).a();
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if (map instanceof ImmutableBiMap) {
            ImmutableBiMap<K, V> immutableBiMap = (ImmutableBiMap) map;
            if (!immutableBiMap.isPartialView()) {
                return immutableBiMap;
            }
        }
        return copyOf((Iterable) map.entrySet());
    }

    public static <K, V> ImmutableBiMap<K, V> of() {
        return RegularImmutableBiMap.EMPTY;
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k11, V v11) {
        e2.a(k11, v11);
        return new RegularImmutableBiMap(new Object[]{k11, v11}, 1);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k11, V v11, K k12, V v12) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        return new RegularImmutableBiMap(new Object[]{k11, v11, k12, v12}, 2);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        return new RegularImmutableBiMap(new Object[]{k11, v11, k12, v12, k13, v13}, 3);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        return new RegularImmutableBiMap(new Object[]{k11, v11, k12, v12, k13, v13, k14, v14}, 4);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        return new RegularImmutableBiMap(new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15}, 5);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        return new RegularImmutableBiMap(new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16}, 6);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        return new RegularImmutableBiMap(new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17}, 7);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        e2.a(k18, v18);
        return new RegularImmutableBiMap(new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18}, 8);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18, K k19, V v19) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        e2.a(k18, v18);
        e2.a(k19, v19);
        return new RegularImmutableBiMap(new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18, k19, v19}, 9);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18, K k19, V v19, K k20, V v20) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        e2.a(k18, v18);
        e2.a(k19, v19);
        e2.a(k20, v20);
        return new RegularImmutableBiMap(new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18, k19, v19, k20, v20}, 10);
    }

    @SafeVarargs
    public static <K, V> ImmutableBiMap<K, V> ofEntries(Map.Entry<? extends K, ? extends V>... entryArr) {
        return copyOf((Iterable) Arrays.asList(entryArr));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <T, K, V> Collector<T, ?, ImmutableBiMap<K, V>> toImmutableBiMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return d2.N(function, function2);
    }

    @Deprecated
    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet<V> createValues() {
        throw new AssertionError("should never be called");
    }

    @Deprecated
    public final V forcePut(K k11, V v11) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.k
    public abstract ImmutableBiMap<V, K> inverse();

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableSet<V> values() {
        return inverse().keySet();
    }

    @Override // com.google.common.collect.ImmutableMap
    Object writeReplace() {
        return new SerializedForm(this);
    }
}
