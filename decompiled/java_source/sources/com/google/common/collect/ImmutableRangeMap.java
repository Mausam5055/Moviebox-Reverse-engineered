package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.function.Function;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
public class ImmutableRangeMap<K extends Comparable<?>, V> implements t3, Serializable {
    private static final ImmutableRangeMap<Comparable<?>, Object> EMPTY = new ImmutableRangeMap<>(ImmutableList.of(), ImmutableList.of());
    private static final long serialVersionUID = 0;
    private final transient ImmutableList<Range<K>> ranges;
    private final transient ImmutableList<V> values;

    private static class SerializedForm<K extends Comparable<?>, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final ImmutableMap<Range<K>, V> mapOfRanges;

        SerializedForm(ImmutableMap<Range<K>, V> immutableMap) {
            this.mapOfRanges = immutableMap;
        }

        Object createRangeMap() {
            a aVar = new a();
            r4 it = this.mapOfRanges.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                aVar.c((Range) entry.getKey(), entry.getValue());
            }
            return aVar.a();
        }

        Object readResolve() {
            return this.mapOfRanges.isEmpty() ? ImmutableRangeMap.of() : createRangeMap();
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f30450a = Lists.i();

        public ImmutableRangeMap a() {
            Collections.sort(this.f30450a, Range.rangeLexOrdering().onKeys());
            ImmutableList.a aVar = new ImmutableList.a(this.f30450a.size());
            ImmutableList.a aVar2 = new ImmutableList.a(this.f30450a.size());
            for (int i11 = 0; i11 < this.f30450a.size(); i11++) {
                Range range = (Range) ((Map.Entry) this.f30450a.get(i11)).getKey();
                if (i11 > 0) {
                    Range range2 = (Range) ((Map.Entry) this.f30450a.get(i11 - 1)).getKey();
                    if (range.isConnected(range2) && !range.intersection(range2).isEmpty()) {
                        throw new IllegalArgumentException("Overlapping ranges: range " + range2 + " overlaps with entry " + range);
                    }
                }
                aVar.a(range);
                aVar2.a(((Map.Entry) this.f30450a.get(i11)).getValue());
            }
            return new ImmutableRangeMap(aVar.e(), aVar2.e());
        }

        a b(a aVar) {
            this.f30450a.addAll(aVar.f30450a);
            return this;
        }

        public a c(Range range, Object obj) {
            com.google.common.base.m.o(range);
            com.google.common.base.m.o(obj);
            com.google.common.base.m.j(!range.isEmpty(), "Range must not be empty, but was %s", range);
            this.f30450a.add(Maps.i(range, obj));
            return this;
        }
    }

    ImmutableRangeMap(ImmutableList<Range<K>> immutableList, ImmutableList<V> immutableList2) {
        this.ranges = immutableList;
        this.values = immutableList2;
    }

    public static <K extends Comparable<?>, V> a builder() {
        return new a();
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> copyOf(t3 t3Var) {
        if (t3Var instanceof ImmutableRangeMap) {
            return (ImmutableRangeMap) t3Var;
        }
        Map mapAsMapOfRanges = t3Var.asMapOfRanges();
        ImmutableList.a aVar = new ImmutableList.a(mapAsMapOfRanges.size());
        ImmutableList.a aVar2 = new ImmutableList.a(mapAsMapOfRanges.size());
        for (Map.Entry entry : mapAsMapOfRanges.entrySet()) {
            aVar.a((Range) entry.getKey());
            aVar2.a(entry.getValue());
        }
        return new ImmutableRangeMap<>(aVar.e(), aVar2.e());
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of() {
        return (ImmutableRangeMap<K, V>) EMPTY;
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of(Range<K> range, V v11) {
        return new ImmutableRangeMap<>(ImmutableList.of(range), ImmutableList.of(v11));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <T, K extends Comparable<? super K>, V> Collector<T, ?, ImmutableRangeMap<K, V>> toImmutableRangeMap(Function<? super T, Range<K>> function, Function<? super T, ? extends V> function2) {
        return d2.T(function, function2);
    }

    @Override // 
    /* JADX INFO: renamed from: asDescendingMapOfRanges, reason: merged with bridge method [inline-methods] */
    public ImmutableMap<Range<K>, V> mo283asDescendingMapOfRanges() {
        return this.ranges.isEmpty() ? ImmutableMap.of() : new ImmutableSortedMap(new RegularImmutableSortedSet(this.ranges.reverse(), Range.rangeLexOrdering().reverse()), this.values.reverse());
    }

    @Override // com.google.common.collect.t3
    public ImmutableMap<Range<K>, V> asMapOfRanges() {
        return this.ranges.isEmpty() ? ImmutableMap.of() : new ImmutableSortedMap(new RegularImmutableSortedSet(this.ranges, Range.rangeLexOrdering()), this.values);
    }

    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        if (obj instanceof t3) {
            return asMapOfRanges().equals(((t3) obj).asMapOfRanges());
        }
        return false;
    }

    public V get(K k11) {
        int iA = SortedLists.a(this.ranges, new z2(), Cut.belowValue(k11), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        if (iA != -1 && this.ranges.get(iA).contains(k11)) {
            return this.values.get(iA);
        }
        return null;
    }

    public Map.Entry<Range<K>, V> getEntry(K k11) {
        int iA = SortedLists.a(this.ranges, new z2(), Cut.belowValue(k11), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        if (iA == -1) {
            return null;
        }
        Range<K> range = this.ranges.get(iA);
        if (range.contains(k11)) {
            return Maps.i(range, this.values.get(iA));
        }
        return null;
    }

    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Deprecated
    public final void put(Range<K> range, V v11) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void putAll(t3 t3Var) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void putCoalescing(Range<K> range, V v11) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void remove(Range<K> range) {
        throw new UnsupportedOperationException();
    }

    public Range<K> span() {
        if (this.ranges.isEmpty()) {
            throw new NoSuchElementException();
        }
        Range<K> range = this.ranges.get(0);
        ImmutableList<Range<K>> immutableList = this.ranges;
        return Range.create(range.lowerBound, immutableList.get(immutableList.size() - 1).upperBound);
    }

    @Override // 
    /* JADX INFO: renamed from: subRangeMap */
    public ImmutableRangeMap<K, V> mo284subRangeMap(final Range<K> range) {
        if (((Range) com.google.common.base.m.o(range)).isEmpty()) {
            return of();
        }
        if (this.ranges.isEmpty() || range.encloses(span())) {
            return this;
        }
        ImmutableList<Range<K>> immutableList = this.ranges;
        y2 y2Var = new y2();
        Comparable comparable = range.lowerBound;
        SortedLists.KeyPresentBehavior keyPresentBehavior = SortedLists.KeyPresentBehavior.FIRST_AFTER;
        SortedLists.KeyAbsentBehavior keyAbsentBehavior = SortedLists.KeyAbsentBehavior.NEXT_HIGHER;
        final int iA = SortedLists.a(immutableList, y2Var, comparable, keyPresentBehavior, keyAbsentBehavior);
        int iA2 = SortedLists.a(this.ranges, new z2(), range.upperBound, SortedLists.KeyPresentBehavior.ANY_PRESENT, keyAbsentBehavior);
        if (iA >= iA2) {
            return of();
        }
        final int i11 = iA2 - iA;
        return (ImmutableRangeMap<K, V>) new ImmutableRangeMap<K, V>(this, new ImmutableList<Range<K>>(this) { // from class: com.google.common.collect.ImmutableRangeMap.1
            final /* synthetic */ ImmutableRangeMap this$0;

            {
                this.this$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.List
            public Range<K> get(int i12) {
                com.google.common.base.m.m(i12, i11);
                return (i12 == 0 || i12 == i11 + (-1)) ? ((Range) this.this$0.ranges.get(i12 + iA)).intersection(range) : (Range) this.this$0.ranges.get(i12 + iA);
            }

            @Override // com.google.common.collect.ImmutableCollection
            boolean isPartialView() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return i11;
            }

            @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
            Object writeReplace() {
                return super.writeReplace();
            }
        }, this.values.subList(iA, iA2)) { // from class: com.google.common.collect.ImmutableRangeMap.2
            final /* synthetic */ ImmutableRangeMap this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.common.collect.ImmutableRangeMap
            /* JADX INFO: renamed from: asDescendingMapOfRanges */
            public /* bridge */ /* synthetic */ Map mo283asDescendingMapOfRanges() {
                return super.mo283asDescendingMapOfRanges();
            }

            @Override // com.google.common.collect.ImmutableRangeMap, com.google.common.collect.t3
            public /* bridge */ /* synthetic */ Map asMapOfRanges() {
                return super.asMapOfRanges();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.google.common.collect.ImmutableRangeMap
            /* JADX INFO: renamed from: subRangeMap, reason: merged with bridge method [inline-methods] */
            public ImmutableRangeMap<K, V> mo284subRangeMap(Range<K> range2) {
                return range.isConnected(range2) ? this.mo284subRangeMap((Range) range2.intersection(range)) : ImmutableRangeMap.of();
            }

            @Override // com.google.common.collect.ImmutableRangeMap
            Object writeReplace() {
                return super.writeReplace();
            }
        };
    }

    public String toString() {
        return asMapOfRanges().toString();
    }

    Object writeReplace() {
        return new SerializedForm(asMapOfRanges());
    }
}
