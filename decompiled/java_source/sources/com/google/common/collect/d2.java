package com.google.common.collect;

import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes4.dex */
abstract class d2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Collector f30773a = Collector.of(new Supplier() { // from class: com.google.common.collect.h0
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableList.builder();
        }
    }, new BiConsumer() { // from class: com.google.common.collect.m0
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableList.a) obj).a(obj2);
        }
    }, new BinaryOperator() { // from class: com.google.common.collect.n0
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableList.a) obj).p((ImmutableList.a) obj2);
        }
    }, new Function() { // from class: com.google.common.collect.o0
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableList.a) obj).e();
        }
    }, new Collector.Characteristics[0]);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Collector f30774b = Collector.of(new Supplier() { // from class: com.google.common.collect.p0
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableSet.builder();
        }
    }, new BiConsumer() { // from class: com.google.common.collect.q0
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableSet.a) obj).a(obj2);
        }
    }, new BinaryOperator() { // from class: com.google.common.collect.r0
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableSet.a) obj).p((ImmutableSet.a) obj2);
        }
    }, new Function() { // from class: com.google.common.collect.s0
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableSet.a) obj).e();
        }
    }, new Collector.Characteristics[0]);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Collector f30775c = Collector.of(new Supplier() { // from class: com.google.common.collect.i0
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableRangeSet.builder();
        }
    }, new BiConsumer() { // from class: com.google.common.collect.j0
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableRangeSet.a) obj).a((Range) obj2);
        }
    }, new BinaryOperator() { // from class: com.google.common.collect.k0
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableRangeSet.a) obj).d((ImmutableRangeSet.a) obj2);
        }
    }, new Function() { // from class: com.google.common.collect.l0
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableRangeSet.a) obj).c();
        }
    }, new Collector.Characteristics[0]);

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j3 A(j3 j3Var, j3 j3Var2) {
        j3Var.putAll(j3Var2);
        return j3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B(Function function, Function function2, ImmutableBiMap.a aVar, Object obj) {
        aVar.h(function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C(Function function, Function function2, ImmutableListMultimap.a aVar, Object obj) {
        aVar.f(function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D(Function function, Function function2, ImmutableMap.b bVar, Object obj) {
        bVar.h(function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E(Function function, ToIntFunction toIntFunction, l3 l3Var, Object obj) {
        l3Var.add(com.google.common.base.m.o(function.apply(obj)), toIntFunction.applyAsInt(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l3 F(l3 l3Var, l3 l3Var2) {
        l3Var.addAll(l3Var2);
        return l3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImmutableMultiset G(l3 l3Var) {
        return ImmutableMultiset.copyFromEntries(l3Var.entrySet());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H(Function function, Function function2, ImmutableRangeMap.a aVar, Object obj) {
        aVar.c((Range) function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I(Function function, Function function2, ImmutableSetMultimap.a aVar, Object obj) {
        aVar.f(function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TreeMap J(Comparator comparator) {
        return new TreeMap(comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImmutableSortedMap.a K(Comparator comparator) {
        return new ImmutableSortedMap.a(comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L(Function function, Function function2, ImmutableSortedMap.a aVar, Object obj) {
        aVar.h(function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImmutableSortedSet.a M(Comparator comparator) {
        return new ImmutableSortedSet.a(comparator);
    }

    static Collector N(final Function function, final Function function2) {
        com.google.common.base.m.o(function);
        com.google.common.base.m.o(function2);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.d0
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ImmutableBiMap.a();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.e0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                d2.B(function, function2, (ImmutableBiMap.a) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.f0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableBiMap.a) obj).e((ImmutableBiMap.a) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.g0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableBiMap.a) obj).d();
            }
        }, new Collector.Characteristics[0]);
    }

    static Collector O() {
        return f30773a;
    }

    static Collector P(final Function function, final Function function2) {
        com.google.common.base.m.p(function, "keyFunction");
        com.google.common.base.m.p(function2, "valueFunction");
        return Collector.of(new Supplier() { // from class: com.google.common.collect.p1
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableListMultimap.builder();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.q1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                d2.C(function, function2, (ImmutableListMultimap.a) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.r1
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableListMultimap.a) obj).k((ImmutableListMultimap.a) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.s1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableListMultimap.a) obj).j();
            }
        }, new Collector.Characteristics[0]);
    }

    static Collector Q(final Function function, final Function function2) {
        com.google.common.base.m.o(function);
        com.google.common.base.m.o(function2);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.h1
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ImmutableMap.b();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.i1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                d2.D(function, function2, (ImmutableMap.b) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.j1
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableMap.b) obj).e((ImmutableMap.b) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.k1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableMap.b) obj).d();
            }
        }, new Collector.Characteristics[0]);
    }

    static Collector R(Function function, Function function2, BinaryOperator binaryOperator) {
        com.google.common.base.m.o(function);
        com.google.common.base.m.o(function2);
        com.google.common.base.m.o(binaryOperator);
        return Collectors.collectingAndThen(Collectors.toMap(function, function2, binaryOperator, new Supplier() { // from class: com.google.common.collect.x1
            @Override // java.util.function.Supplier
            public final Object get() {
                return new LinkedHashMap();
            }
        }), new Function() { // from class: com.google.common.collect.y1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableMap.copyOf((Map) obj);
            }
        });
    }

    static Collector S(final Function function, final ToIntFunction toIntFunction) {
        com.google.common.base.m.o(function);
        com.google.common.base.m.o(toIntFunction);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.x0
            @Override // java.util.function.Supplier
            public final Object get() {
                return LinkedHashMultiset.create();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.y0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                d2.E(function, toIntFunction, (l3) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.z0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return d2.F((l3) obj, (l3) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.a1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return d2.G((l3) obj);
            }
        }, new Collector.Characteristics[0]);
    }

    static Collector T(final Function function, final Function function2) {
        com.google.common.base.m.o(function);
        com.google.common.base.m.o(function2);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.v
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableRangeMap.builder();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.w
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                d2.H(function, function2, (ImmutableRangeMap.a) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.x
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableRangeMap.a) obj).b((ImmutableRangeMap.a) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.y
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableRangeMap.a) obj).a();
            }
        }, new Collector.Characteristics[0]);
    }

    static Collector U() {
        return f30775c;
    }

    static Collector V() {
        return f30774b;
    }

    static Collector W(final Function function, final Function function2) {
        com.google.common.base.m.p(function, "keyFunction");
        com.google.common.base.m.p(function2, "valueFunction");
        return Collector.of(new Supplier() { // from class: com.google.common.collect.t1
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableSetMultimap.builder();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.u1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                d2.I(function, function2, (ImmutableSetMultimap.a) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.v1
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSetMultimap.a) obj).k((ImmutableSetMultimap.a) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.w1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSetMultimap.a) obj).j();
            }
        }, new Collector.Characteristics[0]);
    }

    static Collector X(final Comparator comparator, final Function function, final Function function2) {
        com.google.common.base.m.o(comparator);
        com.google.common.base.m.o(function);
        com.google.common.base.m.o(function2);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.z
            @Override // java.util.function.Supplier
            public final Object get() {
                return d2.K(comparator);
            }
        }, new BiConsumer() { // from class: com.google.common.collect.a0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                d2.L(function, function2, (ImmutableSortedMap.a) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.b0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSortedMap.a) obj).p((ImmutableSortedMap.a) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.c0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSortedMap.a) obj).d();
            }
        }, Collector.Characteristics.UNORDERED);
    }

    static Collector Y(final Comparator comparator, Function function, Function function2, BinaryOperator binaryOperator) {
        com.google.common.base.m.o(comparator);
        com.google.common.base.m.o(function);
        com.google.common.base.m.o(function2);
        com.google.common.base.m.o(binaryOperator);
        return Collectors.collectingAndThen(Collectors.toMap(function, function2, binaryOperator, new Supplier() { // from class: com.google.common.collect.f1
            @Override // java.util.function.Supplier
            public final Object get() {
                return d2.J(comparator);
            }
        }), new Function() { // from class: com.google.common.collect.g1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableSortedMap.copyOfSorted((TreeMap) obj);
            }
        });
    }

    static Collector Z(final Comparator comparator) {
        com.google.common.base.m.o(comparator);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.l1
            @Override // java.util.function.Supplier
            public final Object get() {
                return d2.M(comparator);
            }
        }, new BiConsumer() { // from class: com.google.common.collect.m1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ImmutableSortedSet.a) obj).a(obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.n1
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSortedSet.a) obj).p((ImmutableSortedSet.a) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.o1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSortedSet.a) obj).e();
            }
        }, new Collector.Characteristics[0]);
    }

    static Collector s(final Function function, final Function function2) {
        com.google.common.base.m.o(function);
        com.google.common.base.m.o(function2);
        Function function3 = new Function() { // from class: com.google.common.collect.t0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return d2.v(function, obj);
            }
        };
        Function function4 = new Function() { // from class: com.google.common.collect.u0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return d2.w(function2, obj);
            }
        };
        final MultimapBuilder.d dVarA = MultimapBuilder.c().a();
        Objects.requireNonNull(dVarA);
        return Collectors.collectingAndThen(u(function3, function4, new Supplier() { // from class: com.google.common.collect.v0
            @Override // java.util.function.Supplier
            public final Object get() {
                return dVarA.g();
            }
        }), new Function() { // from class: com.google.common.collect.w0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableListMultimap.copyOf((j3) obj);
            }
        });
    }

    static Collector t(final Function function, final Function function2) {
        com.google.common.base.m.o(function);
        com.google.common.base.m.o(function2);
        Function function3 = new Function() { // from class: com.google.common.collect.b1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return d2.x(function, obj);
            }
        };
        Function function4 = new Function() { // from class: com.google.common.collect.c1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return d2.y(function2, obj);
            }
        };
        final MultimapBuilder.f fVarD = MultimapBuilder.c().d();
        Objects.requireNonNull(fVarD);
        return Collectors.collectingAndThen(u(function3, function4, new Supplier() { // from class: com.google.common.collect.d1
            @Override // java.util.function.Supplier
            public final Object get() {
                return fVarD.g();
            }
        }), new Function() { // from class: com.google.common.collect.e1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableSetMultimap.copyOf((j3) obj);
            }
        });
    }

    static Collector u(final Function function, final Function function2, Supplier supplier) {
        com.google.common.base.m.o(function);
        com.google.common.base.m.o(function2);
        com.google.common.base.m.o(supplier);
        return Collector.of(supplier, new BiConsumer() { // from class: com.google.common.collect.z1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                d2.z(function, function2, (j3) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.a2
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return d2.A((j3) obj, (j3) obj2);
            }
        }, new Collector.Characteristics[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object v(Function function, Object obj) {
        return com.google.common.base.m.o(function.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream w(Function function, Object obj) {
        return r.a(function.apply(obj)).peek(new b2());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object x(Function function, Object obj) {
        return com.google.common.base.m.o(function.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream y(Function function, Object obj) {
        return r.a(function.apply(obj)).peek(new b2());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z(Function function, Function function2, j3 j3Var, Object obj) {
        final Collection collection = j3Var.get(function.apply(obj));
        Stream streamA = r.a(function2.apply(obj));
        Objects.requireNonNull(collection);
        streamA.forEachOrdered(new Consumer() { // from class: com.google.common.collect.c2
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                collection.add(obj2);
            }
        });
    }
}
