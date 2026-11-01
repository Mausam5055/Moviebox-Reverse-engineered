.class public final Landroidx/compose/animation/core/c1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/animation/core/b1;


# instance fields
.field private final a:Landroidx/compose/animation/core/q;

.field private b:Landroidx/compose/animation/core/o;

.field private c:Landroidx/compose/animation/core/o;

.field private d:Landroidx/compose/animation/core/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/d0;)V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/c1$a;

    invoke-direct {v0, p1}, Landroidx/compose/animation/core/c1$a;-><init>(Landroidx/compose/animation/core/d0;)V

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/c1;-><init>(Landroidx/compose/animation/core/q;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/c1;->a:Landroidx/compose/animation/core/q;

    return-void
.end method


# virtual methods
.method public synthetic a()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/animation/core/a1;->a(Landroidx/compose/animation/core/b1;)Z

    move-result v0

    return v0
.end method

.method public c(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 9

    iget-object v0, p0, Landroidx/compose/animation/core/c1;->d:Landroidx/compose/animation/core/o;

    if-nez v0, :cond_0

    invoke-static {p3}, Landroidx/compose/animation/core/p;->g(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/c1;->d:Landroidx/compose/animation/core/o;

    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/c1;->d:Landroidx/compose/animation/core/o;

    const/4 v1, 0x0

    const-string v2, "endVelocityVector"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/animation/core/o;->b()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Landroidx/compose/animation/core/c1;->d:Landroidx/compose/animation/core/o;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    iget-object v5, p0, Landroidx/compose/animation/core/c1;->a:Landroidx/compose/animation/core/q;

    invoke-interface {v5, v3}, Landroidx/compose/animation/core/q;->get(I)Landroidx/compose/animation/core/d0;

    move-result-object v5

    invoke-virtual {p1, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v6

    invoke-virtual {p2, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v7

    invoke-virtual {p3, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Landroidx/compose/animation/core/d0;->b(FFF)F

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/compose/animation/core/o;->e(IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/compose/animation/core/c1;->d:Landroidx/compose/animation/core/o;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    return-object v1
.end method

.method public e(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/animation/core/c1;->c:Landroidx/compose/animation/core/o;

    if-nez v1, :cond_0

    invoke-static/range {p5 .. p5}, Landroidx/compose/animation/core/p;->g(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/animation/core/c1;->c:Landroidx/compose/animation/core/o;

    :cond_0
    iget-object v1, v0, Landroidx/compose/animation/core/c1;->c:Landroidx/compose/animation/core/o;

    const/4 v2, 0x0

    const-string v3, "velocityVector"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/animation/core/o;->b()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    iget-object v5, v0, Landroidx/compose/animation/core/c1;->c:Landroidx/compose/animation/core/o;

    if-nez v5, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v5, v2

    :cond_2
    iget-object v6, v0, Landroidx/compose/animation/core/c1;->a:Landroidx/compose/animation/core/q;

    invoke-interface {v6, v4}, Landroidx/compose/animation/core/q;->get(I)Landroidx/compose/animation/core/d0;

    move-result-object v7

    move-object/from16 v6, p3

    invoke-virtual {v6, v4}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v10

    move-object/from16 v13, p4

    invoke-virtual {v13, v4}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v11

    move-object/from16 v14, p5

    invoke-virtual {v14, v4}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v12

    move-wide/from16 v8, p1

    invoke-interface/range {v7 .. v12}, Landroidx/compose/animation/core/d0;->d(JFFF)F

    move-result v7

    invoke-virtual {v5, v4, v7}, Landroidx/compose/animation/core/o;->e(IF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Landroidx/compose/animation/core/c1;->c:Landroidx/compose/animation/core/o;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method public f(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)J
    .locals 7

    invoke-virtual {p1}, Landroidx/compose/animation/core/o;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->t(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->a()I

    move-result v3

    iget-object v4, p0, Landroidx/compose/animation/core/c1;->a:Landroidx/compose/animation/core/q;

    invoke-interface {v4, v3}, Landroidx/compose/animation/core/q;->get(I)Landroidx/compose/animation/core/d0;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v5

    invoke-virtual {p2, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v6

    invoke-virtual {p3, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v3

    invoke-interface {v4, v5, v6, v3}, Landroidx/compose/animation/core/d0;->e(FFF)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public g(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/animation/core/c1;->b:Landroidx/compose/animation/core/o;

    if-nez v1, :cond_0

    invoke-static/range {p3 .. p3}, Landroidx/compose/animation/core/p;->g(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/animation/core/c1;->b:Landroidx/compose/animation/core/o;

    :cond_0
    iget-object v1, v0, Landroidx/compose/animation/core/c1;->b:Landroidx/compose/animation/core/o;

    const/4 v2, 0x0

    const-string v3, "valueVector"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/animation/core/o;->b()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    iget-object v5, v0, Landroidx/compose/animation/core/c1;->b:Landroidx/compose/animation/core/o;

    if-nez v5, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v5, v2

    :cond_2
    iget-object v6, v0, Landroidx/compose/animation/core/c1;->a:Landroidx/compose/animation/core/q;

    invoke-interface {v6, v4}, Landroidx/compose/animation/core/q;->get(I)Landroidx/compose/animation/core/d0;

    move-result-object v7

    move-object/from16 v6, p3

    invoke-virtual {v6, v4}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v10

    move-object/from16 v13, p4

    invoke-virtual {v13, v4}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v11

    move-object/from16 v14, p5

    invoke-virtual {v14, v4}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v12

    move-wide/from16 v8, p1

    invoke-interface/range {v7 .. v12}, Landroidx/compose/animation/core/d0;->c(JFFF)F

    move-result v7

    invoke-virtual {v5, v4, v7}, Landroidx/compose/animation/core/o;->e(IF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Landroidx/compose/animation/core/c1;->b:Landroidx/compose/animation/core/o;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    return-object v2
.end method
