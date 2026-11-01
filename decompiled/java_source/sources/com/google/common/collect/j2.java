package com.google.common.collect;

import com.google.common.base.Optional;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class j2 implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Optional f30816a;

    class a extends j2 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Iterable f30817b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Iterable iterable, Iterable iterable2) {
            super(iterable);
            this.f30817b = iterable2;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return this.f30817b.iterator();
        }
    }

    class b extends j2 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Iterable[] f30818b;

        class a extends com.google.common.collect.a {
            a(int i11) {
                super(i11);
            }

            @Override // com.google.common.collect.a
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Iterator a(int i11) {
                return b.this.f30818b[i11].iterator();
            }
        }

        b(Iterable[] iterableArr) {
            this.f30818b = iterableArr;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return Iterators.e(new a(this.f30818b.length));
        }
    }

    protected j2() {
        this.f30816a = Optional.absent();
    }

    j2(Iterable iterable) {
        this.f30816a = Optional.of(iterable);
    }

    public static j2 a(Iterable iterable, Iterable iterable2) {
        return b(iterable, iterable2);
    }

    private static j2 b(Iterable... iterableArr) {
        for (Iterable iterable : iterableArr) {
            com.google.common.base.m.o(iterable);
        }
        return new b(iterableArr);
    }

    public static j2 e(Iterable iterable) {
        return iterable instanceof j2 ? (j2) iterable : new a(iterable, iterable);
    }

    private Iterable f() {
        return (Iterable) this.f30816a.or(this);
    }

    public final j2 c(com.google.common.base.n nVar) {
        return e(g3.e(f(), nVar));
    }

    public final ImmutableSet g() {
        return ImmutableSet.copyOf(f());
    }

    public String toString() {
        return g3.r(f());
    }
}
