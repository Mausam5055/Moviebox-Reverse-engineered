package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {
    static final RegularImmutableMultiset<Object> EMPTY = new RegularImmutableMultiset<>(o3.b());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final transient int f30645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private transient ImmutableSet f30646b;
    final transient o3 contents;

    private final class ElementSet extends IndexedImmutableSet<E> {
        private ElementSet() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return RegularImmutableMultiset.this.contains(obj);
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        E get(int i11) {
            return (E) RegularImmutableMultiset.this.contents.i(i11);
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return RegularImmutableMultiset.this.contents.C();
        }

        @Override // com.google.common.collect.IndexedImmutableSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    private static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final int[] counts;
        final Object[] elements;

        SerializedForm(l3 l3Var) {
            int size = l3Var.entrySet().size();
            this.elements = new Object[size];
            this.counts = new int[size];
            int i11 = 0;
            for (l3.a aVar : l3Var.entrySet()) {
                this.elements[i11] = aVar.getElement();
                this.counts[i11] = aVar.getCount();
                i11++;
            }
        }

        Object readResolve() {
            ImmutableMultiset.b bVar = new ImmutableMultiset.b(this.elements.length);
            int i11 = 0;
            while (true) {
                Object[] objArr = this.elements;
                if (i11 >= objArr.length) {
                    return bVar.e();
                }
                bVar.k(objArr[i11], this.counts[i11]);
                i11++;
            }
        }
    }

    RegularImmutableMultiset(o3 o3Var) {
        this.contents = o3Var;
        long jK = 0;
        for (int i11 = 0; i11 < o3Var.C(); i11++) {
            jK += (long) o3Var.k(i11);
        }
        this.f30645a = Ints.n(jK);
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.l3
    public int count(Object obj) {
        return this.contents.f(obj);
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.l3
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.f30646b;
        if (immutableSet != null) {
            return immutableSet;
        }
        ElementSet elementSet = new ElementSet();
        this.f30646b = elementSet;
        return elementSet;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    l3.a getEntry(int i11) {
        return this.contents.g(i11);
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
    public int size() {
        return this.f30645a;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(this);
    }
}
