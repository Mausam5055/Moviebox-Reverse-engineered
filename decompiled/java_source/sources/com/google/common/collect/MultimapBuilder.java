package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MultimapBuilder {

    private static final class ArrayListSupplier<V> implements com.google.common.base.q, Serializable {
        private final int expectedValuesPerKey;

        ArrayListSupplier(int i11) {
            this.expectedValuesPerKey = e2.b(i11, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.q
        public List<V> get() {
            return new ArrayList(this.expectedValuesPerKey);
        }
    }

    private static final class LinkedHashSetSupplier<V> implements com.google.common.base.q, Serializable {
        private final int expectedValuesPerKey;

        LinkedHashSetSupplier(int i11) {
            this.expectedValuesPerKey = e2.b(i11, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.q
        public Set<V> get() {
            return r3.g(this.expectedValuesPerKey);
        }
    }

    class a extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f30601a;

        a(int i11) {
            this.f30601a = i11;
        }

        @Override // com.google.common.collect.MultimapBuilder.e
        Map c() {
            return r3.d(this.f30601a);
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f30602a;

        b(int i11) {
            this.f30602a = i11;
        }

        @Override // com.google.common.collect.MultimapBuilder.e
        Map c() {
            return r3.f(this.f30602a);
        }
    }

    class c extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Comparator f30603a;

        c(Comparator comparator) {
            this.f30603a = comparator;
        }

        @Override // com.google.common.collect.MultimapBuilder.e
        Map c() {
            return new TreeMap(this.f30603a);
        }
    }

    public static abstract class d extends MultimapBuilder {
        d() {
            super(null);
        }

        public abstract i3 g();
    }

    public static abstract class e {

        class a extends d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f30604a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ e f30605b;

            a(e eVar, int i11) {
                this.f30604a = i11;
                this.f30605b = eVar;
            }

            @Override // com.google.common.collect.MultimapBuilder.d
            public i3 g() {
                return Multimaps.b(this.f30605b.c(), new ArrayListSupplier(this.f30604a));
            }
        }

        class b extends f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f30606a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ e f30607b;

            b(e eVar, int i11) {
                this.f30606a = i11;
                this.f30607b = eVar;
            }

            @Override // com.google.common.collect.MultimapBuilder.f
            public x3 g() {
                return Multimaps.c(this.f30607b.c(), new LinkedHashSetSupplier(this.f30606a));
            }
        }

        e() {
        }

        public d a() {
            return b(2);
        }

        public d b(int i11) {
            e2.b(i11, "expectedValuesPerKey");
            return new a(this, i11);
        }

        abstract Map c();

        public f d() {
            return e(2);
        }

        public f e(int i11) {
            e2.b(i11, "expectedValuesPerKey");
            return new b(this, i11);
        }
    }

    public static abstract class f extends MultimapBuilder {
        f() {
            super(null);
        }

        public abstract x3 g();
    }

    private MultimapBuilder() {
    }

    /* synthetic */ MultimapBuilder(a aVar) {
        this();
    }

    public static e a() {
        return b(8);
    }

    public static e b(int i11) {
        e2.b(i11, "expectedKeys");
        return new a(i11);
    }

    public static e c() {
        return d(8);
    }

    public static e d(int i11) {
        e2.b(i11, "expectedKeys");
        return new b(i11);
    }

    public static e e() {
        return f(Ordering.natural());
    }

    public static e f(Comparator comparator) {
        com.google.common.base.m.o(comparator);
        return new c(comparator);
    }
}
