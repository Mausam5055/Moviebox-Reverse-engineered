package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class u2 extends s2 implements SortedSet {
    protected u2() {
    }

    @Override // java.util.SortedSet
    public Comparator<Object> comparator() {
        return l().comparator();
    }

    @Override // com.google.common.collect.s2, com.google.common.collect.k2, com.google.common.collect.q2
    /* JADX INFO: renamed from: delegate */
    protected abstract SortedSet l();

    @Override // java.util.SortedSet
    public Object first() {
        return l().first();
    }

    @Override // java.util.SortedSet
    public SortedSet<Object> headSet(Object obj) {
        return l().headSet(obj);
    }

    @Override // java.util.SortedSet
    public Object last() {
        return l().last();
    }

    @Override // com.google.common.collect.k2
    protected boolean standardContains(Object obj) {
        try {
            return t2.l(comparator(), tailSet(obj).first(), obj) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // com.google.common.collect.k2
    protected boolean standardRemove(Object obj) {
        try {
            Iterator it = tailSet(obj).iterator();
            if (it.hasNext()) {
                if (t2.l(comparator(), it.next(), obj) == 0) {
                    it.remove();
                    return true;
                }
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    protected SortedSet<Object> standardSubSet(Object obj, Object obj2) {
        return tailSet(obj).headSet(obj2);
    }

    @Override // java.util.SortedSet
    public SortedSet<Object> subSet(Object obj, Object obj2) {
        return l().subSet(obj, obj2);
    }

    @Override // java.util.SortedSet
    public SortedSet<Object> tailSet(Object obj) {
        return l().tailSet(obj);
    }
}
