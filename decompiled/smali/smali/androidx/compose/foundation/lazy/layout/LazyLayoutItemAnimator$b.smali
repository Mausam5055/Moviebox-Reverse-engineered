.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private a:[Landroidx/compose/foundation/lazy/layout/k;

.field private b:Lo0/b;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field final synthetic h:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->h:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/l;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->e:I

    return-void
.end method

.method private final h()Z
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static synthetic l(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;IIIILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    iget-object p6, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->h:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-static {p6, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;)I

    move-result p6

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->k(Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;III)V

    return-void
.end method


# virtual methods
.method public final a()[Landroidx/compose/foundation/lazy/layout/k;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    return-object v0
.end method

.method public final b()Lo0/b;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->b:Lo0/b;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->g:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->f:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->e:I

    return v0
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->d:I

    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->e:I

    return-void
.end method

.method public final k(Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;III)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->h()Z

    move-result p2

    if-nez p2, :cond_0

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->f:I

    iput p5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->g:I

    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->b()I

    move-result p2

    iget-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    array-length p3, p3

    :goto_0
    if-ge p2, p3, :cond_1

    iget-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    aget-object p4, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    array-length p2, p2

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->b()I

    move-result p3

    if-eq p2, p3, :cond_2

    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->b()I

    move-result p3

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "copyOf(this, newSize)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [Landroidx/compose/foundation/lazy/layout/k;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    :cond_2
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->a()J

    move-result-wide p2

    invoke-static {p2, p3}, Lo0/b;->a(J)Lo0/b;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->b:Lo0/b;

    iput p6, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->c:I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->k()I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->d:I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->d()I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->e:I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->b()I

    move-result p2

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_3

    invoke-interface {p1, p3}, Landroidx/compose/foundation/lazy/layout/s;->i(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Landroidx/compose/foundation/lazy/layout/l;->b(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/d;

    iget-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    aget-object p4, p4, p3

    iget-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    const/4 p5, 0x0

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
