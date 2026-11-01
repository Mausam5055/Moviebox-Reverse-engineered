.class abstract Lcom/google/common/collect/l4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/l4$b;,
        Lcom/google/common/collect/l4$c;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/l4$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/common/collect/l4;->h(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/l4$b;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/common/collect/l4$b;)Lcom/google/common/collect/ImmutableTable;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/l4;->j(Lcom/google/common/collect/l4$b;)Lcom/google/common/collect/ImmutableTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/l4$b;Lcom/google/common/collect/l4$b;)Lcom/google/common/collect/l4$b;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/l4;->i(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/l4$b;Lcom/google/common/collect/l4$b;)Lcom/google/common/collect/l4$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()Lcom/google/common/collect/l4$b;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/l4;->g()Lcom/google/common/collect/l4$b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/collect/l4;->f(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$a;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic f(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p4}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p4}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p4}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p0, p1, p2}, Lcom/google/common/collect/ImmutableTable$a;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable$a;

    return-void
.end method

.method private static synthetic g()Lcom/google/common/collect/l4$b;
    .locals 2

    new-instance v0, Lcom/google/common/collect/l4$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/l4$b;-><init>(Lcom/google/common/collect/l4$a;)V

    return-object v0
.end method

.method private static synthetic h(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/l4$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p5}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p5}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p5}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/google/common/collect/l4$b;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    return-void
.end method

.method private static synthetic i(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/l4$b;Lcom/google/common/collect/l4$b;)Lcom/google/common/collect/l4$b;
    .locals 0

    invoke-virtual {p1, p2, p0}, Lcom/google/common/collect/l4$b;->a(Lcom/google/common/collect/l4$b;Ljava/util/function/BinaryOperator;)Lcom/google/common/collect/l4$b;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic j(Lcom/google/common/collect/l4$b;)Lcom/google/common/collect/ImmutableTable;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/l4$b;->c()Lcom/google/common/collect/ImmutableTable;

    move-result-object p0

    return-object p0
.end method

.method static k(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2

    const-string v0, "rowFunction"

    invoke-static {p0, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "columnFunction"

    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    invoke-static {p2, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/h4;

    invoke-direct {v0}, Lcom/google/common/collect/h4;-><init>()V

    new-instance v1, Lcom/google/common/collect/i4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/collect/i4;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lcom/google/common/collect/j4;

    invoke-direct {p0}, Lcom/google/common/collect/j4;-><init>()V

    new-instance p1, Lcom/google/common/collect/k4;

    invoke-direct {p1}, Lcom/google/common/collect/k4;-><init>()V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static l(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 2

    const-string v0, "rowFunction"

    invoke-static {p0, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "columnFunction"

    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    invoke-static {p2, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mergeFunction"

    invoke-static {p3, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/d4;

    invoke-direct {v0}, Lcom/google/common/collect/d4;-><init>()V

    new-instance v1, Lcom/google/common/collect/e4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/common/collect/e4;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    new-instance p0, Lcom/google/common/collect/f4;

    invoke-direct {p0, p3}, Lcom/google/common/collect/f4;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance p1, Lcom/google/common/collect/g4;

    invoke-direct {p1}, Lcom/google/common/collect/g4;-><init>()V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method
