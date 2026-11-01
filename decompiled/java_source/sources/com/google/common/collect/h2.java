package com.google.common.collect;

import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final h2 f30799a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final h2 f30800b = new b(-1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final h2 f30801c = new b(1);

    class a extends h2 {
        a() {
            super(null);
        }

        @Override // com.google.common.collect.h2
        public h2 d(int i11, int i12) {
            return l(Integer.compare(i11, i12));
        }

        @Override // com.google.common.collect.h2
        public h2 e(long j11, long j12) {
            return l(Long.compare(j11, j12));
        }

        @Override // com.google.common.collect.h2
        public h2 f(Comparable comparable, Comparable comparable2) {
            return l(comparable.compareTo(comparable2));
        }

        @Override // com.google.common.collect.h2
        public h2 g(Object obj, Object obj2, Comparator comparator) {
            return l(comparator.compare(obj, obj2));
        }

        @Override // com.google.common.collect.h2
        public h2 h(boolean z10, boolean z11) {
            return l(Boolean.compare(z10, z11));
        }

        @Override // com.google.common.collect.h2
        public h2 i(boolean z10, boolean z11) {
            return l(Boolean.compare(z11, z10));
        }

        @Override // com.google.common.collect.h2
        public int j() {
            return 0;
        }

        h2 l(int i11) {
            if (i11 < 0) {
                return h2.f30800b;
            }
            return i11 > 0 ? h2.f30801c : h2.f30799a;
        }
    }

    private static final class b extends h2 {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f30802d;

        b(int i11) {
            super(null);
            this.f30802d = i11;
        }

        @Override // com.google.common.collect.h2
        public h2 d(int i11, int i12) {
            return this;
        }

        @Override // com.google.common.collect.h2
        public h2 e(long j11, long j12) {
            return this;
        }

        @Override // com.google.common.collect.h2
        public h2 f(Comparable comparable, Comparable comparable2) {
            return this;
        }

        @Override // com.google.common.collect.h2
        public h2 g(Object obj, Object obj2, Comparator comparator) {
            return this;
        }

        @Override // com.google.common.collect.h2
        public h2 h(boolean z10, boolean z11) {
            return this;
        }

        @Override // com.google.common.collect.h2
        public h2 i(boolean z10, boolean z11) {
            return this;
        }

        @Override // com.google.common.collect.h2
        public int j() {
            return this.f30802d;
        }
    }

    private h2() {
    }

    /* synthetic */ h2(a aVar) {
        this();
    }

    public static h2 k() {
        return f30799a;
    }

    public abstract h2 d(int i11, int i12);

    public abstract h2 e(long j11, long j12);

    public abstract h2 f(Comparable comparable, Comparable comparable2);

    public abstract h2 g(Object obj, Object obj2, Comparator comparator);

    public abstract h2 h(boolean z10, boolean z11);

    public abstract h2 i(boolean z10, boolean z11);

    public abstract int j();
}
