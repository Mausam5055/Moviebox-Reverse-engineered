package com.google.common.collect;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ImmutableTable<R, C, V> extends i implements Serializable {
    private static final long serialVersionUID = 912559;

    static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final int[] cellColumnIndices;
        private final int[] cellRowIndices;
        private final Object[] cellValues;
        private final Object[] columnKeys;
        private final Object[] rowKeys;

        private SerializedForm(Object[] objArr, Object[] objArr2, Object[] objArr3, int[] iArr, int[] iArr2) {
            this.rowKeys = objArr;
            this.columnKeys = objArr2;
            this.cellValues = objArr3;
            this.cellRowIndices = iArr;
            this.cellColumnIndices = iArr2;
        }

        static SerializedForm create(ImmutableTable<?, ?, ?> immutableTable, int[] iArr, int[] iArr2) {
            return new SerializedForm(immutableTable.rowKeySet().toArray(), immutableTable.columnKeySet().toArray(), immutableTable.values().toArray(), iArr, iArr2);
        }

        Object readResolve() {
            Object[] objArr = this.cellValues;
            if (objArr.length == 0) {
                return ImmutableTable.of();
            }
            int i11 = 0;
            if (objArr.length == 1) {
                return ImmutableTable.of(this.rowKeys[0], this.columnKeys[0], objArr[0]);
            }
            ImmutableList.a aVar = new ImmutableList.a(objArr.length);
            while (true) {
                Object[] objArr2 = this.cellValues;
                if (i11 >= objArr2.length) {
                    return RegularImmutableTable.forOrderedComponents(aVar.e(), ImmutableSet.copyOf(this.rowKeys), ImmutableSet.copyOf(this.columnKeys));
                }
                aVar.a(ImmutableTable.cellOf(this.rowKeys[this.cellRowIndices[i11]], this.columnKeys[this.cellColumnIndices[i11]], objArr2[i11]));
                i11++;
            }
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f30472a = Lists.i();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Comparator f30473b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Comparator f30474c;

        public ImmutableTable a() {
            return b();
        }

        public ImmutableTable b() {
            int size = this.f30472a.size();
            if (size != 0) {
                return size != 1 ? RegularImmutableTable.forCells(this.f30472a, this.f30473b, this.f30474c) : new SingletonImmutableTable((c4.a) g3.j(this.f30472a));
            }
            return ImmutableTable.of();
        }

        a c(a aVar) {
            this.f30472a.addAll(aVar.f30472a);
            return this;
        }

        public a d(c4.a aVar) {
            if (aVar instanceof Tables.ImmutableCell) {
                com.google.common.base.m.p(aVar.getRowKey(), "row");
                com.google.common.base.m.p(aVar.getColumnKey(), "column");
                com.google.common.base.m.p(aVar.getValue(), AppMeasurementSdk.ConditionalUserProperty.VALUE);
                this.f30472a.add(aVar);
            } else {
                e(aVar.getRowKey(), aVar.getColumnKey(), aVar.getValue());
            }
            return this;
        }

        public a e(Object obj, Object obj2, Object obj3) {
            this.f30472a.add(ImmutableTable.cellOf(obj, obj2, obj3));
            return this;
        }
    }

    ImmutableTable() {
    }

    public static <R, C, V> a builder() {
        return new a();
    }

    static <R, C, V> c4.a cellOf(R r11, C c11, V v11) {
        return Tables.b(com.google.common.base.m.p(r11, "rowKey"), com.google.common.base.m.p(c11, "columnKey"), com.google.common.base.m.p(v11, AppMeasurementSdk.ConditionalUserProperty.VALUE));
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(c4 c4Var) {
        return c4Var instanceof ImmutableTable ? (ImmutableTable) c4Var : copyOf(c4Var.cellSet());
    }

    static <R, C, V> ImmutableTable<R, C, V> copyOf(Iterable<? extends c4.a> iterable) {
        a aVarBuilder = builder();
        Iterator<? extends c4.a> it = iterable.iterator();
        while (it.hasNext()) {
            aVarBuilder.d(it.next());
        }
        return aVarBuilder.a();
    }

    public static <R, C, V> ImmutableTable<R, C, V> of() {
        return (ImmutableTable<R, C, V>) SparseImmutableTable.EMPTY;
    }

    public static <R, C, V> ImmutableTable<R, C, V> of(R r11, C c11, V v11) {
        return new SingletonImmutableTable(r11, c11, v11);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> toImmutableTable(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3) {
        return l4.k(function, function2, function3);
    }

    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> toImmutableTable(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3, BinaryOperator<V> binaryOperator) {
        return l4.l(function, function2, function3, binaryOperator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.i
    public final r4 cellIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.i, com.google.common.collect.c4
    public ImmutableSet<c4.a> cellSet() {
        return (ImmutableSet) super.cellSet();
    }

    @Override // com.google.common.collect.i
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // 
    /* JADX INFO: renamed from: column */
    public ImmutableMap<R, V> mo287column(C c11) {
        com.google.common.base.m.p(c11, "columnKey");
        return (ImmutableMap) com.google.common.base.h.a((ImmutableMap) columnMap().get(c11), ImmutableMap.of());
    }

    @Override // com.google.common.collect.c4
    public ImmutableSet<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.c4
    public abstract ImmutableMap<C, Map<R, V>> columnMap();

    @Override // com.google.common.collect.i
    public boolean contains(Object obj, Object obj2) {
        return get(obj, obj2) != null;
    }

    @Override // com.google.common.collect.i
    public /* bridge */ /* synthetic */ boolean containsColumn(Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.i
    public /* bridge */ /* synthetic */ boolean containsRow(Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.i
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.i
    public abstract ImmutableSet<c4.a> createCellSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.i
    public abstract ImmutableCollection<V> createValues();

    @Override // com.google.common.collect.i
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.i, com.google.common.collect.c4
    public /* bridge */ /* synthetic */ Object get(Object obj, Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.i
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.i
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.i, com.google.common.collect.c4
    @Deprecated
    public final V put(R r11, C c11, V v11) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.i
    @Deprecated
    public final void putAll(c4 c4Var) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: renamed from: row, reason: merged with bridge method [inline-methods] */
    public ImmutableMap<C, V> m288row(R r11) {
        com.google.common.base.m.p(r11, "rowKey");
        return (ImmutableMap) com.google.common.base.h.a((ImmutableMap) rowMap().get(r11), ImmutableMap.of());
    }

    @Override // com.google.common.collect.c4
    public ImmutableSet<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.c4
    public abstract ImmutableMap<R, Map<C, V>> rowMap();

    @Override // com.google.common.collect.c4
    public abstract /* synthetic */ int size();

    @Override // com.google.common.collect.i
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.i
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    @Override // com.google.common.collect.i
    final Iterator<V> valuesIterator() {
        throw new AssertionError("should never be called");
    }

    abstract Object writeReplace();
}
