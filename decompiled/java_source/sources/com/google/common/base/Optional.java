package com.google.common.base;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Optional<T> implements Serializable {
    private static final long serialVersionUID = 0;

    class a implements Iterable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Iterable f30208a;

        /* JADX INFO: renamed from: com.google.common.base.Optional$a$a, reason: collision with other inner class name */
        class C0401a extends AbstractIterator {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final Iterator f30209c;

            C0401a() {
                this.f30209c = (Iterator) m.o(a.this.f30208a.iterator());
            }

            @Override // com.google.common.base.AbstractIterator
            protected Object a() {
                while (this.f30209c.hasNext()) {
                    Optional optional = (Optional) this.f30209c.next();
                    if (optional.isPresent()) {
                        return optional.get();
                    }
                }
                return b();
            }
        }

        a(Iterable iterable) {
            this.f30208a = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return new C0401a();
        }
    }

    Optional() {
    }

    public static <T> Optional<T> absent() {
        return Absent.withType();
    }

    public static <T> Optional<T> fromNullable(T t11) {
        return t11 == null ? absent() : new Present(t11);
    }

    public static <T> Optional<T> of(T t11) {
        return new Present(m.o(t11));
    }

    public static <T> Iterable<T> presentInstances(Iterable<? extends Optional<? extends T>> iterable) {
        m.o(iterable);
        return new a(iterable);
    }

    public abstract Set<T> asSet();

    public abstract boolean equals(Object obj);

    public abstract T get();

    public abstract int hashCode();

    public abstract boolean isPresent();

    public abstract Optional<T> or(Optional<? extends T> optional);

    public abstract T or(q qVar);

    public abstract T or(T t11);

    public abstract T orNull();

    public abstract String toString();

    public abstract <V> Optional<V> transform(f fVar);
}
