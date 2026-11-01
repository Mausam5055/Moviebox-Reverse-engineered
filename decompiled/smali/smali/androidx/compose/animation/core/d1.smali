.class final Landroidx/compose/animation/core/d1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/animation/core/x0;


# instance fields
.field private final a:Landroidx/compose/animation/core/e0;

.field private b:Landroidx/compose/animation/core/o;

.field private c:Landroidx/compose/animation/core/o;

.field private d:Landroidx/compose/animation/core/o;

.field private final e:F


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/d1;->a:Landroidx/compose/animation/core/e0;

    invoke-interface {p1}, Landroidx/compose/animation/core/e0;->a()F

    move-result p1

    iput p1, p0, Landroidx/compose/animation/core/d1;->e:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Landroidx/compose/animation/core/d1;->e:F

    return v0
.end method

.method public b(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 8

    iget-object v0, p0, Landroidx/compose/animation/core/d1;->c:Landroidx/compose/animation/core/o;

    if-nez v0, :cond_0

    invoke-static {p3}, Landroidx/compose/animation/core/p;->g(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/d1;->c:Landroidx/compose/animation/core/o;

    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/d1;->c:Landroidx/compose/animation/core/o;

    const/4 v1, 0x0

    const-string v2, "velocityVector"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/animation/core/o;->b()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Landroidx/compose/animation/core/d1;->c:Landroidx/compose/animation/core/o;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    iget-object v5, p0, Landroidx/compose/animation/core/d1;->a:Landroidx/compose/animation/core/e0;

    invoke-virtual {p3, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v6

    invoke-virtual {p4, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v7

    invoke-interface {v5, p1, p2, v6, v7}, Landroidx/compose/animation/core/e0;->b(JFF)F

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/compose/animation/core/o;->e(IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/compose/animation/core/d1;->c:Landroidx/compose/animation/core/o;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    return-object v1
.end method

.method public c(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)J
    .locals 7

    iget-object v0, p0, Landroidx/compose/animation/core/d1;->c:Landroidx/compose/animation/core/o;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/compose/animation/core/p;->g(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/d1;->c:Landroidx/compose/animation/core/o;

    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/d1;->c:Landroidx/compose/animation/core/o;

    if-nez v0, :cond_1

    const-string v0, "velocityVector"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/animation/core/o;->b()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroidx/compose/animation/core/d1;->a:Landroidx/compose/animation/core/e0;

    invoke-virtual {p1, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v5

    invoke-virtual {p2, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v6

    invoke-interface {v4, v5, v6}, Landroidx/compose/animation/core/e0;->c(FF)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public d(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 8

    iget-object v0, p0, Landroidx/compose/animation/core/d1;->d:Landroidx/compose/animation/core/o;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/compose/animation/core/p;->g(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/d1;->d:Landroidx/compose/animation/core/o;

    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/d1;->d:Landroidx/compose/animation/core/o;

    const/4 v1, 0x0

    const-string v2, "targetVector"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/animation/core/o;->b()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Landroidx/compose/animation/core/d1;->d:Landroidx/compose/animation/core/o;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    iget-object v5, p0, Landroidx/compose/animation/core/d1;->a:Landroidx/compose/animation/core/e0;

    invoke-virtual {p1, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v6

    invoke-virtual {p2, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v7

    invoke-interface {v5, v6, v7}, Landroidx/compose/animation/core/e0;->d(FF)F

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/compose/animation/core/o;->e(IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/compose/animation/core/d1;->d:Landroidx/compose/animation/core/o;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    return-object v1
.end method

.method public e(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 8

    iget-object v0, p0, Landroidx/compose/animation/core/d1;->b:Landroidx/compose/animation/core/o;

    if-nez v0, :cond_0

    invoke-static {p3}, Landroidx/compose/animation/core/p;->g(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/d1;->b:Landroidx/compose/animation/core/o;

    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/d1;->b:Landroidx/compose/animation/core/o;

    const/4 v1, 0x0

    const-string v2, "valueVector"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/animation/core/o;->b()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Landroidx/compose/animation/core/d1;->b:Landroidx/compose/animation/core/o;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    iget-object v5, p0, Landroidx/compose/animation/core/d1;->a:Landroidx/compose/animation/core/e0;

    invoke-virtual {p3, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v6

    invoke-virtual {p4, v3}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v7

    invoke-interface {v5, p1, p2, v6, v7}, Landroidx/compose/animation/core/e0;->e(JFF)F

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/compose/animation/core/o;->e(IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/compose/animation/core/d1;->b:Landroidx/compose/animation/core/o;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    return-object v1
.end method
