.class public abstract Landroidx/compose/ui/graphics/vector/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/List;

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:J

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/vector/k;->a:Ljava/util/List;

    sget-object v0, Landroidx/compose/ui/graphics/c5;->a:Landroidx/compose/ui/graphics/c5$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/c5$a;->a()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/k;->b:I

    sget-object v0, Landroidx/compose/ui/graphics/d5;->a:Landroidx/compose/ui/graphics/d5$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/d5$a;->b()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/k;->c:I

    sget-object v0, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/c1$a;->z()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/k;->d:I

    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->d()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/graphics/vector/k;->e:J

    sget-object v0, Landroidx/compose/ui/graphics/q4;->a:Landroidx/compose/ui/graphics/q4$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/q4$a;->b()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/k;->f:I

    return-void
.end method

.method public static final a()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/vector/k;->f:I

    return v0
.end method

.method public static final b()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/vector/k;->b:I

    return v0
.end method

.method public static final c()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/vector/k;->c:I

    return v0
.end method

.method public static final d()Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/vector/k;->a:Ljava/util/List;

    return-object v0
.end method

.method public static final e(JJ)Z
    .locals 2

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/u1;->r(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/u1;->r(J)F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/u1;->q(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/u1;->q(J)F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/u1;->o(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/u1;->o(J)F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final f(Landroidx/compose/ui/graphics/v1;)Z
    .locals 5

    instance-of v0, p0, Landroidx/compose/ui/graphics/d1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/compose/ui/graphics/d1;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/d1;->b()I

    move-result v0

    sget-object v3, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/c1$a;->z()I

    move-result v4

    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/d1;->b()I

    move-result p0

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/c1$a;->B()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-nez p0, :cond_0

    :cond_2
    :goto_0
    return v1
.end method
