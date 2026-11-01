.class abstract Lcom/google/common/collect/d2;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/stream/Collector;

.field private static final b:Ljava/util/stream/Collector;

.field private static final c:Ljava/util/stream/Collector;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/common/collect/h0;

    invoke-direct {v0}, Lcom/google/common/collect/h0;-><init>()V

    new-instance v1, Lcom/google/common/collect/m0;

    invoke-direct {v1}, Lcom/google/common/collect/m0;-><init>()V

    new-instance v2, Lcom/google/common/collect/n0;

    invoke-direct {v2}, Lcom/google/common/collect/n0;-><init>()V

    new-instance v3, Lcom/google/common/collect/o0;

    invoke-direct {v3}, Lcom/google/common/collect/o0;-><init>()V

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/d2;->a:Ljava/util/stream/Collector;

    new-instance v0, Lcom/google/common/collect/p0;

    invoke-direct {v0}, Lcom/google/common/collect/p0;-><init>()V

    new-instance v1, Lcom/google/common/collect/q0;

    invoke-direct {v1}, Lcom/google/common/collect/q0;-><init>()V

    new-instance v2, Lcom/google/common/collect/r0;

    invoke-direct {v2}, Lcom/google/common/collect/r0;-><init>()V

    new-instance v3, Lcom/google/common/collect/s0;

    invoke-direct {v3}, Lcom/google/common/collect/s0;-><init>()V

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/d2;->b:Ljava/util/stream/Collector;

    new-instance v0, Lcom/google/common/collect/i0;

    invoke-direct {v0}, Lcom/google/common/collect/i0;-><init>()V

    new-instance v1, Lcom/google/common/collect/j0;

    invoke-direct {v1}, Lcom/google/common/collect/j0;-><init>()V

    new-instance v2, Lcom/google/common/collect/k0;

    invoke-direct {v2}, Lcom/google/common/collect/k0;-><init>()V

    new-instance v3, Lcom/google/common/collect/l0;

    invoke-direct {v3}, Lcom/google/common/collect/l0;-><init>()V

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/d2;->c:Ljava/util/stream/Collector;

    return-void
.end method

.method private static synthetic A(Lcom/google/common/collect/j3;Lcom/google/common/collect/j3;)Lcom/google/common/collect/j3;
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/common/collect/j3;->putAll(Lcom/google/common/collect/j3;)Z

    return-object p0
.end method

.method private static synthetic B(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$a;

    return-void
.end method

.method private static synthetic C(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$a;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;

    return-void
.end method

.method private static synthetic D(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    return-void
.end method

.method private static synthetic E(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/l3;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/common/collect/t;->a(Ljava/util/function/ToIntFunction;Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/google/common/collect/l3;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method private static synthetic F(Lcom/google/common/collect/l3;Lcom/google/common/collect/l3;)Lcom/google/common/collect/l3;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private static synthetic G(Lcom/google/common/collect/l3;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/l3;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic H(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Range;

    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableRangeMap$a;->c(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$a;

    return-void
.end method

.method private static synthetic I(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    return-void
.end method

.method private static synthetic J(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static synthetic K(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$a;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$a;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static synthetic L(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$a;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$a;

    return-void
.end method

.method private static synthetic M(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$a;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet$a;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static N(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/d0;

    invoke-direct {v0}, Lcom/google/common/collect/d0;-><init>()V

    new-instance v1, Lcom/google/common/collect/e0;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/e0;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lcom/google/common/collect/f0;

    invoke-direct {p0}, Lcom/google/common/collect/f0;-><init>()V

    new-instance p1, Lcom/google/common/collect/g0;

    invoke-direct {p1}, Lcom/google/common/collect/g0;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static O()Ljava/util/stream/Collector;
    .locals 1

    sget-object v0, Lcom/google/common/collect/d2;->a:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static P(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    const-string v0, "keyFunction"

    invoke-static {p0, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/p1;

    invoke-direct {v0}, Lcom/google/common/collect/p1;-><init>()V

    new-instance v1, Lcom/google/common/collect/q1;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/q1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lcom/google/common/collect/r1;

    invoke-direct {p0}, Lcom/google/common/collect/r1;-><init>()V

    new-instance p1, Lcom/google/common/collect/s1;

    invoke-direct {p1}, Lcom/google/common/collect/s1;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static Q(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/h1;

    invoke-direct {v0}, Lcom/google/common/collect/h1;-><init>()V

    new-instance v1, Lcom/google/common/collect/i1;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/i1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lcom/google/common/collect/j1;

    invoke-direct {p0}, Lcom/google/common/collect/j1;-><init>()V

    new-instance p1, Lcom/google/common/collect/k1;

    invoke-direct {p1}, Lcom/google/common/collect/k1;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static R(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/x1;

    invoke-direct {v0}, Lcom/google/common/collect/x1;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/o;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, Lcom/google/common/collect/y1;

    invoke-direct {p1}, Lcom/google/common/collect/y1;-><init>()V

    invoke-static {p0, p1}, Lcom/google/common/collect/n;->a(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static S(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/x0;

    invoke-direct {v0}, Lcom/google/common/collect/x0;-><init>()V

    new-instance v1, Lcom/google/common/collect/y0;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/y0;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    new-instance p0, Lcom/google/common/collect/z0;

    invoke-direct {p0}, Lcom/google/common/collect/z0;-><init>()V

    new-instance p1, Lcom/google/common/collect/a1;

    invoke-direct {p1}, Lcom/google/common/collect/a1;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static T(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/v;

    invoke-direct {v0}, Lcom/google/common/collect/v;-><init>()V

    new-instance v1, Lcom/google/common/collect/w;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/w;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lcom/google/common/collect/x;

    invoke-direct {p0}, Lcom/google/common/collect/x;-><init>()V

    new-instance p1, Lcom/google/common/collect/y;

    invoke-direct {p1}, Lcom/google/common/collect/y;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static U()Ljava/util/stream/Collector;
    .locals 1

    sget-object v0, Lcom/google/common/collect/d2;->c:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static V()Ljava/util/stream/Collector;
    .locals 1

    sget-object v0, Lcom/google/common/collect/d2;->b:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static W(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    const-string v0, "keyFunction"

    invoke-static {p0, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/t1;

    invoke-direct {v0}, Lcom/google/common/collect/t1;-><init>()V

    new-instance v1, Lcom/google/common/collect/u1;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/u1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lcom/google/common/collect/v1;

    invoke-direct {p0}, Lcom/google/common/collect/v1;-><init>()V

    new-instance p1, Lcom/google/common/collect/w1;

    invoke-direct {p1}, Lcom/google/common/collect/w1;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static X(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/z;

    invoke-direct {v0, p0}, Lcom/google/common/collect/z;-><init>(Ljava/util/Comparator;)V

    new-instance p0, Lcom/google/common/collect/a0;

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/a0;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p1, Lcom/google/common/collect/b0;

    invoke-direct {p1}, Lcom/google/common/collect/b0;-><init>()V

    new-instance p2, Lcom/google/common/collect/c0;

    invoke-direct {p2}, Lcom/google/common/collect/c0;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/stream/Collector$Characteristics;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/common/collect/m;->a()Ljava/util/stream/Collector$Characteristics;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p1, p2, v1}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static Y(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/f1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f1;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1, p2, p3, v0}, Lcom/google/common/collect/o;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, Lcom/google/common/collect/g1;

    invoke-direct {p1}, Lcom/google/common/collect/g1;-><init>()V

    invoke-static {p0, p1}, Lcom/google/common/collect/n;->a(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static Z(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/l1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l1;-><init>(Ljava/util/Comparator;)V

    new-instance p0, Lcom/google/common/collect/m1;

    invoke-direct {p0}, Lcom/google/common/collect/m1;-><init>()V

    new-instance v1, Lcom/google/common/collect/n1;

    invoke-direct {v1}, Lcom/google/common/collect/n1;-><init>()V

    new-instance v2, Lcom/google/common/collect/o1;

    invoke-direct {v2}, Lcom/google/common/collect/o1;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p0, v1, v2, v3}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->w(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$a;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/d2;->K(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/l3;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->E(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/l3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->x(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->C(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$a;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/d2;->M(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->v(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/google/common/collect/l3;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/d2;->G(Lcom/google/common/collect/l3;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->y(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/google/common/collect/l3;Lcom/google/common/collect/l3;)Lcom/google/common/collect/l3;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->F(Lcom/google/common/collect/l3;Lcom/google/common/collect/l3;)Lcom/google/common/collect/l3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/d2;->J(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->H(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->L(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/j3;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->z(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/j3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic o(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->I(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic p(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->B(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic q(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->D(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic r(Lcom/google/common/collect/j3;Lcom/google/common/collect/j3;)Lcom/google/common/collect/j3;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->A(Lcom/google/common/collect/j3;Lcom/google/common/collect/j3;)Lcom/google/common/collect/j3;

    move-result-object p0

    return-object p0
.end method

.method static s(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/t0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/t0;-><init>(Ljava/util/function/Function;)V

    new-instance p0, Lcom/google/common/collect/u0;

    invoke-direct {p0, p1}, Lcom/google/common/collect/u0;-><init>(Ljava/util/function/Function;)V

    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->c()Lcom/google/common/collect/MultimapBuilder$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$e;->a()Lcom/google/common/collect/MultimapBuilder$d;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/common/collect/v0;

    invoke-direct {v1, p1}, Lcom/google/common/collect/v0;-><init>(Lcom/google/common/collect/MultimapBuilder$d;)V

    invoke-static {v0, p0, v1}, Lcom/google/common/collect/d2;->u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, Lcom/google/common/collect/w0;

    invoke-direct {p1}, Lcom/google/common/collect/w0;-><init>()V

    invoke-static {p0, p1}, Lcom/google/common/collect/n;->a(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static t(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/b1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b1;-><init>(Ljava/util/function/Function;)V

    new-instance p0, Lcom/google/common/collect/c1;

    invoke-direct {p0, p1}, Lcom/google/common/collect/c1;-><init>(Ljava/util/function/Function;)V

    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->c()Lcom/google/common/collect/MultimapBuilder$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$e;->d()Lcom/google/common/collect/MultimapBuilder$f;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/common/collect/d1;

    invoke-direct {v1, p1}, Lcom/google/common/collect/d1;-><init>(Lcom/google/common/collect/MultimapBuilder$f;)V

    invoke-static {v0, p0, v1}, Lcom/google/common/collect/d2;->u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, Lcom/google/common/collect/e1;

    invoke-direct {p1}, Lcom/google/common/collect/e1;-><init>()V

    invoke-static {p0, p1}, Lcom/google/common/collect/n;->a(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/z1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/z1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lcom/google/common/collect/a2;

    invoke-direct {p0}, Lcom/google/common/collect/a2;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, p0, p1}, Lcom/google/common/collect/q;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic v(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic w(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/r;->a(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/common/collect/b2;

    invoke-direct {p1}, Lcom/google/common/collect/b2;-><init>()V

    invoke-static {p0, p1}, Lcom/google/common/collect/s;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic x(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic y(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/r;->a(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/common/collect/b2;

    invoke-direct {p1}, Lcom/google/common/collect/b2;-><init>()V

    invoke-static {p0, p1}, Lcom/google/common/collect/s;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic z(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/j3;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/common/collect/j3;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/r;->a(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/common/collect/c2;

    invoke-direct {p2, p0}, Lcom/google/common/collect/c2;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, p2}, Lcom/google/common/collect/u;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V

    return-void
.end method
