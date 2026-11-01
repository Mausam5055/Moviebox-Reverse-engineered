.class public abstract Le0/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = true

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic a([F[FIZ)F
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le0/c;->f([F[FIZ)F

    move-result p0

    return p0
.end method

.method public static final synthetic b([Le0/a;IJF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le0/c;->j([Le0/a;IJF)V

    return-void
.end method

.method public static final c(Landroidx/compose/ui/input/pointer/util/a;Landroidx/compose/ui/input/pointer/w;)V
    .locals 1

    sget-boolean v0, Le0/c;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Le0/c;->e(Landroidx/compose/ui/input/pointer/util/a;Landroidx/compose/ui/input/pointer/w;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Le0/c;->d(Landroidx/compose/ui/input/pointer/util/a;Landroidx/compose/ui/input/pointer/w;)V

    :goto_0
    return-void
.end method

.method private static final d(Landroidx/compose/ui/input/pointer/util/a;Landroidx/compose/ui/input/pointer/w;)V
    .locals 10

    invoke-static {p1}, Landroidx/compose/ui/input/pointer/p;->b(Landroidx/compose/ui/input/pointer/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/input/pointer/util/a;->f(J)V

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/a;->e()V

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->k()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/input/pointer/e;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/e;->b()J

    move-result-wide v6

    invoke-static {v6, v7, v0, v1}, Ly/g;->q(JJ)J

    move-result-wide v0

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/e;->b()J

    move-result-wide v6

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/a;->c()J

    move-result-wide v8

    invoke-static {v8, v9, v0, v1}, Ly/g;->r(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/input/pointer/util/a;->f(J)V

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/e;->c()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/a;->c()J

    move-result-wide v8

    invoke-virtual {p0, v0, v1, v8, v9}, Landroidx/compose/ui/input/pointer/util/a;->a(JJ)V

    add-int/lit8 v4, v4, 0x1

    move-wide v0, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->h()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ly/g;->q(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ly/g;->r(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/input/pointer/util/a;->f(J)V

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->o()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/a;->c()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/input/pointer/util/a;->a(JJ)V

    return-void
.end method

.method private static final e(Landroidx/compose/ui/input/pointer/util/a;Landroidx/compose/ui/input/pointer/w;)V
    .locals 8

    invoke-static {p1}, Landroidx/compose/ui/input/pointer/p;->b(Landroidx/compose/ui/input/pointer/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/a;->e()V

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/p;->d(Landroidx/compose/ui/input/pointer/w;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/pointer/e;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/e;->c()J

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/e;->a()J

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Landroidx/compose/ui/input/pointer/util/a;->a(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->o()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->g()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/input/pointer/util/a;->a(JJ)V

    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/p;->d(Landroidx/compose/ui/input/pointer/w;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->o()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/a;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x28

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/a;->e()V

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/input/pointer/util/a;->g(J)V

    return-void
.end method

.method private static final f([F[FIZ)F
    .locals 8

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    const/4 v3, 0x2

    if-lez v2, :cond_3

    add-int/lit8 v4, v2, -0x1

    aget v5, p1, v4

    cmpg-float v6, v0, v5

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    aget v4, p0, v4

    neg-float v4, v4

    goto :goto_1

    :cond_1
    aget v6, p0, v2

    aget v4, p0, v4

    sub-float v4, v6, v4

    :goto_1
    sub-float/2addr v0, v5

    div-float/2addr v4, v0

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float/2addr v0, v3

    sub-float v0, v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    if-ne v2, p2, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    move v0, v5

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method private static final g([F[F)F
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    aget v4, p1, v2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static final h()Z
    .locals 1

    sget-boolean v0, Le0/c;->b:Z

    return v0
.end method

.method public static final i([F[FII[F)[F
    .locals 16

    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const-string v3, "The degree must be at positive integer"

    invoke-static {v3}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    const-string v3, "At least one point must be provided"

    invoke-static {v3}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_1
    if-lt v1, v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    :cond_2
    add-int/lit8 v3, v1, 0x1

    new-array v4, v3, [[F

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    new-array v7, v0, [F

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v6, v0, :cond_5

    aget-object v8, v4, v5

    aput v7, v8, v6

    move v7, v2

    :goto_2
    if-ge v7, v3, :cond_4

    add-int/lit8 v8, v7, -0x1

    aget-object v8, v4, v8

    aget v8, v8, v6

    aget v9, p0, v6

    mul-float/2addr v8, v9

    aget-object v9, v4, v7

    aput v8, v9, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    new-array v2, v3, [[F

    move v6, v5

    :goto_3
    if-ge v6, v3, :cond_6

    new-array v8, v0, [F

    aput-object v8, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    new-array v6, v3, [[F

    move v8, v5

    :goto_4
    if-ge v8, v3, :cond_7

    new-array v9, v3, [F

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    move v8, v5

    :goto_5
    if-ge v8, v3, :cond_e

    aget-object v9, v2, v8

    aget-object v10, v4, v8

    invoke-static {v10, v9, v5, v5, v0}, Lkotlin/collections/ArraysKt;->k([F[FIII)[F

    move v10, v5

    :goto_6
    if-ge v10, v8, :cond_9

    aget-object v11, v2, v10

    invoke-static {v9, v11}, Le0/c;->g([F[F)F

    move-result v12

    move v13, v5

    :goto_7
    if-ge v13, v0, :cond_8

    aget v14, v9, v13

    aget v15, v11, v13

    mul-float/2addr v15, v12

    sub-float/2addr v14, v15

    aput v14, v9, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    invoke-static {v9, v9}, Le0/c;->g([F[F)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    const v11, 0x358637bd    # 1.0E-6f

    cmpg-float v12, v10, v11

    if-gez v12, :cond_a

    move v10, v11

    :cond_a
    div-float v10, v7, v10

    move v11, v5

    :goto_8
    if-ge v11, v0, :cond_b

    aget v12, v9, v11

    mul-float/2addr v12, v10

    aput v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_b
    aget-object v10, v6, v8

    move v11, v5

    :goto_9
    if-ge v11, v3, :cond_d

    if-ge v11, v8, :cond_c

    const/4 v12, 0x0

    goto :goto_a

    :cond_c
    aget-object v12, v4, v11

    invoke-static {v9, v12}, Le0/c;->g([F[F)F

    move-result v12

    :goto_a
    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_e
    move v0, v1

    :goto_b
    const/4 v3, -0x1

    if-ge v3, v0, :cond_10

    aget-object v3, v2, v0

    move-object/from16 v4, p1

    invoke-static {v3, v4}, Le0/c;->g([F[F)F

    move-result v3

    aget-object v5, v6, v0

    add-int/lit8 v7, v0, 0x1

    if-gt v7, v1, :cond_f

    move v8, v1

    :goto_c
    aget v9, v5, v8

    aget v10, p4, v8

    mul-float/2addr v9, v10

    sub-float/2addr v3, v9

    if-eq v8, v7, :cond_f

    add-int/lit8 v8, v8, -0x1

    goto :goto_c

    :cond_f
    aget v5, v5, v0

    div-float/2addr v3, v5

    aput v3, p4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_10
    return-object p4
.end method

.method private static final j([Le0/a;IJF)V
    .locals 1

    aget-object v0, p0, p1

    if-nez v0, :cond_0

    new-instance v0, Le0/a;

    invoke-direct {v0, p2, p3, p4}, Le0/a;-><init>(JF)V

    aput-object v0, p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3}, Le0/a;->d(J)V

    invoke-virtual {v0, p4}, Le0/a;->c(F)V

    :goto_0
    return-void
.end method
