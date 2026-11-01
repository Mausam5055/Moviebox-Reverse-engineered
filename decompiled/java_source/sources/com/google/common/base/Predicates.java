package com.google.common.base;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Predicates {

    private static class AndPredicate<T> implements n, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends n> components;

        private AndPredicate(List list) {
            this.components = list;
        }

        @Override // com.google.common.base.n
        public boolean apply(T t11) {
            for (int i11 = 0; i11 < this.components.size(); i11++) {
                if (!this.components.get(i11).apply(t11)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.base.n
        public boolean equals(Object obj) {
            if (obj instanceof AndPredicate) {
                return this.components.equals(((AndPredicate) obj).components);
            }
            return false;
        }

        public int hashCode() {
            return this.components.hashCode() + 306654252;
        }

        public String toString() {
            return Predicates.j("and", this.components);
        }
    }

    private static class CompositionPredicate<A, B> implements n, Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final f f30211f;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final n f30212p;

        private CompositionPredicate(n nVar, f fVar) {
            this.f30212p = (n) m.o(nVar);
            this.f30211f = (f) m.o(fVar);
        }

        @Override // com.google.common.base.n
        public boolean apply(A a11) {
            return this.f30212p.apply(this.f30211f.apply(a11));
        }

        @Override // com.google.common.base.n
        public boolean equals(Object obj) {
            if (!(obj instanceof CompositionPredicate)) {
                return false;
            }
            CompositionPredicate compositionPredicate = (CompositionPredicate) obj;
            return this.f30211f.equals(compositionPredicate.f30211f) && this.f30212p.equals(compositionPredicate.f30212p);
        }

        public int hashCode() {
            return this.f30211f.hashCode() ^ this.f30212p.hashCode();
        }

        public String toString() {
            return this.f30212p + "(" + this.f30211f + ")";
        }
    }

    private static class InPredicate<T> implements n, Serializable {
        private static final long serialVersionUID = 0;
        private final Collection<?> target;

        private InPredicate(Collection collection) {
            this.target = (Collection) m.o(collection);
        }

        @Override // com.google.common.base.n
        public boolean apply(T t11) {
            try {
                return this.target.contains(t11);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // com.google.common.base.n
        public boolean equals(Object obj) {
            if (obj instanceof InPredicate) {
                return this.target.equals(((InPredicate) obj).target);
            }
            return false;
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            return "Predicates.in(" + this.target + ")";
        }
    }

    private static class IsEqualToPredicate implements n, Serializable {
        private static final long serialVersionUID = 0;
        private final Object target;

        private IsEqualToPredicate(Object obj) {
            this.target = obj;
        }

        @Override // com.google.common.base.n
        public boolean apply(Object obj) {
            return this.target.equals(obj);
        }

        @Override // com.google.common.base.n
        public boolean equals(Object obj) {
            if (obj instanceof IsEqualToPredicate) {
                return this.target.equals(((IsEqualToPredicate) obj).target);
            }
            return false;
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            return "Predicates.equalTo(" + this.target + ")";
        }

        <T> n withNarrowedType() {
            return this;
        }
    }

    private static class NotPredicate<T> implements n, Serializable {
        private static final long serialVersionUID = 0;
        final n predicate;

        NotPredicate(n nVar) {
            this.predicate = (n) m.o(nVar);
        }

        @Override // com.google.common.base.n
        public boolean apply(T t11) {
            return !this.predicate.apply(t11);
        }

        @Override // com.google.common.base.n
        public boolean equals(Object obj) {
            if (obj instanceof NotPredicate) {
                return this.predicate.equals(((NotPredicate) obj).predicate);
            }
            return false;
        }

        public int hashCode() {
            return ~this.predicate.hashCode();
        }

        public String toString() {
            return "Predicates.not(" + this.predicate + ")";
        }
    }

    enum ObjectPredicate implements n {
        ALWAYS_TRUE { // from class: com.google.common.base.Predicates.ObjectPredicate.1
            @Override // com.google.common.base.Predicates.ObjectPredicate, com.google.common.base.n
            public boolean apply(Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        },
        ALWAYS_FALSE { // from class: com.google.common.base.Predicates.ObjectPredicate.2
            @Override // com.google.common.base.Predicates.ObjectPredicate, com.google.common.base.n
            public boolean apply(Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        },
        IS_NULL { // from class: com.google.common.base.Predicates.ObjectPredicate.3
            @Override // com.google.common.base.Predicates.ObjectPredicate, com.google.common.base.n
            public boolean apply(Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.isNull()";
            }
        },
        NOT_NULL { // from class: com.google.common.base.Predicates.ObjectPredicate.4
            @Override // com.google.common.base.Predicates.ObjectPredicate, com.google.common.base.n
            public boolean apply(Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.notNull()";
            }
        };

        @Override // com.google.common.base.n
        public abstract /* synthetic */ boolean apply(Object obj);

        <T> n withNarrowedType() {
            return this;
        }
    }

    public static n b() {
        return ObjectPredicate.ALWAYS_TRUE.withNarrowedType();
    }

    public static n c(n nVar, n nVar2) {
        return new AndPredicate(d((n) m.o(nVar), (n) m.o(nVar2)));
    }

    private static List d(n nVar, n nVar2) {
        return Arrays.asList(nVar, nVar2);
    }

    public static n e(n nVar, f fVar) {
        return new CompositionPredicate(nVar, fVar);
    }

    public static n f(Object obj) {
        return obj == null ? h() : new IsEqualToPredicate(obj).withNarrowedType();
    }

    public static n g(Collection collection) {
        return new InPredicate(collection);
    }

    public static n h() {
        return ObjectPredicate.IS_NULL.withNarrowedType();
    }

    public static n i(n nVar) {
        return new NotPredicate(nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String j(String str, Iterable iterable) {
        StringBuilder sb2 = new StringBuilder("Predicates.");
        sb2.append(str);
        sb2.append('(');
        boolean z10 = true;
        for (Object obj : iterable) {
            if (!z10) {
                sb2.append(',');
            }
            sb2.append(obj);
            z10 = false;
        }
        sb2.append(')');
        return sb2.toString();
    }
}
