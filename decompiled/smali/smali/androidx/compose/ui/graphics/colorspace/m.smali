.class public final Landroidx/compose/ui/graphics/colorspace/m;
.super Landroidx/compose/ui/graphics/colorspace/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/m$a;
    }
.end annotation


# static fields
.field public static final e:Landroidx/compose/ui/graphics/colorspace/m$a;

.field private static final f:[F

.field private static final g:[F

.field private static final h:[F

.field private static final i:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/m;->e:Landroidx/compose/ui/graphics/colorspace/m$a;

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/a;->b:Landroidx/compose/ui/graphics/colorspace/a$d;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/a$d;->a()Landroidx/compose/ui/graphics/colorspace/a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/a;->b()[F

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/graphics/colorspace/k;->a:Landroidx/compose/ui/graphics/colorspace/k;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/k;->b()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/colorspace/y;->c()[F

    move-result-object v4

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/k;->e()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/y;->c()[F

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroidx/compose/ui/graphics/colorspace/d;->e([F[F[F)[F

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/colorspace/d;->l([F[F)[F

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/m;->f:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/m;->g:[F

    invoke-static {v1}, Landroidx/compose/ui/graphics/colorspace/d;->k([F)[F

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/m;->h:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/d;->k([F)[F

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/m;->i:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f51a598
        0x3d071acd
        0x3d456dae
        0x3eb94699
        0x3f6de762
        0x3e875b04
        -0x41fc0c33
        0x3d140d73
        0x3f22441b
    .end array-data

    :array_1
    .array-data 4
        0x3e578152
        0x3ffd2f0e
        0x3cd434b4
        0x3f4b2a89
        -0x3fe491f2
        0x3f4863bb
        -0x447a9132
        0x3ee6b438
        -0x40b0faa0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/b;->a:Landroidx/compose/ui/graphics/colorspace/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/b$a;->a()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/c;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public c(I)F
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    return p1
.end method

.method public d(I)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, -0x41000000    # -0.5f

    :goto_0
    return p1
.end method

.method public h(FFF)J
    .locals 10

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_2

    move p2, v0

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_3

    move p2, v1

    :cond_3
    cmpg-float v2, p3, v0

    if-gez v2, :cond_4

    move p3, v0

    :cond_4
    cmpl-float v0, p3, v1

    if-lez v0, :cond_5

    goto :goto_0

    :cond_5
    move v1, p3

    :goto_0
    sget-object p3, Landroidx/compose/ui/graphics/colorspace/m;->i:[F

    const/4 v0, 0x0

    aget v2, p3, v0

    mul-float/2addr v2, p1

    const/4 v3, 0x3

    aget v4, p3, v3

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    const/4 v4, 0x6

    aget v5, p3, v4

    mul-float/2addr v5, v1

    add-float/2addr v2, v5

    const/4 v5, 0x1

    aget v6, p3, v5

    mul-float/2addr v6, p1

    const/4 v7, 0x4

    aget v8, p3, v7

    mul-float/2addr v8, p2

    add-float/2addr v6, v8

    const/4 v8, 0x7

    aget v9, p3, v8

    mul-float/2addr v9, v1

    add-float/2addr v6, v9

    const/4 v9, 0x2

    aget v9, p3, v9

    mul-float/2addr v9, p1

    const/4 p1, 0x5

    aget p1, p3, p1

    mul-float/2addr p1, p2

    add-float/2addr v9, p1

    const/16 p1, 0x8

    aget p1, p3, p1

    mul-float/2addr p1, v1

    add-float/2addr v9, p1

    mul-float p1, v2, v2

    mul-float/2addr p1, v2

    mul-float p2, v6, v6

    mul-float/2addr p2, v6

    mul-float p3, v9, v9

    mul-float/2addr p3, v9

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/m;->h:[F

    aget v0, v1, v0

    mul-float/2addr v0, p1

    aget v2, v1, v3

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    aget v2, v1, v4

    mul-float/2addr v2, p3

    add-float/2addr v0, v2

    aget v2, v1, v5

    mul-float/2addr v2, p1

    aget p1, v1, v7

    mul-float/2addr p1, p2

    add-float/2addr v2, p1

    aget p1, v1, v8

    mul-float/2addr p1, p3

    add-float/2addr v2, p1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long v0, p3

    const/16 p3, 0x20

    shl-long/2addr p1, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public i(FFF)F
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_2

    move p2, v0

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_3

    move p2, v1

    :cond_3
    cmpg-float v2, p3, v0

    if-gez v2, :cond_4

    move p3, v0

    :cond_4
    cmpl-float v0, p3, v1

    if-lez v0, :cond_5

    goto :goto_0

    :cond_5
    move v1, p3

    :goto_0
    sget-object p3, Landroidx/compose/ui/graphics/colorspace/m;->i:[F

    const/4 v0, 0x0

    aget v0, p3, v0

    mul-float/2addr v0, p1

    const/4 v2, 0x3

    aget v2, p3, v2

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    const/4 v2, 0x6

    aget v2, p3, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    const/4 v2, 0x1

    aget v2, p3, v2

    mul-float/2addr v2, p1

    const/4 v3, 0x4

    aget v3, p3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/4 v3, 0x2

    aget v4, p3, v3

    mul-float/2addr v4, p1

    const/4 p1, 0x5

    aget v5, p3, p1

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    const/16 p2, 0x8

    aget p3, p3, p2

    mul-float/2addr p3, v1

    add-float/2addr v4, p3

    mul-float p3, v0, v0

    mul-float/2addr p3, v0

    mul-float v0, v2, v2

    mul-float/2addr v0, v2

    mul-float v1, v4, v4

    mul-float/2addr v1, v4

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/m;->h:[F

    aget v3, v2, v3

    mul-float/2addr v3, p3

    aget p1, v2, p1

    mul-float/2addr p1, v0

    add-float/2addr v3, p1

    aget p1, v2, p2

    mul-float/2addr p1, v1

    add-float/2addr v3, p1

    return v3
.end method

.method public j(FFFFLandroidx/compose/ui/graphics/colorspace/c;)J
    .locals 13

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/m;->f:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    const/4 v3, 0x3

    aget v4, v0, v3

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    const/4 v4, 0x6

    aget v5, v0, v4

    mul-float v5, v5, p3

    add-float/2addr v2, v5

    const/4 v5, 0x1

    aget v6, v0, v5

    mul-float/2addr v6, p1

    const/4 v7, 0x4

    aget v8, v0, v7

    mul-float/2addr v8, p2

    add-float/2addr v6, v8

    const/4 v8, 0x7

    aget v9, v0, v8

    mul-float v9, v9, p3

    add-float/2addr v6, v9

    const/4 v9, 0x2

    aget v10, v0, v9

    mul-float/2addr v10, p1

    const/4 v11, 0x5

    aget v12, v0, v11

    mul-float/2addr v12, p2

    add-float/2addr v10, v12

    const/16 v12, 0x8

    aget v0, v0, v12

    mul-float v0, v0, p3

    add-float/2addr v10, v0

    invoke-static {v2}, Lq0/b;->a(F)F

    move-result v0

    invoke-static {v6}, Lq0/b;->a(F)F

    move-result v2

    invoke-static {v10}, Lq0/b;->a(F)F

    move-result v6

    sget-object v10, Landroidx/compose/ui/graphics/colorspace/m;->g:[F

    aget v1, v10, v1

    mul-float/2addr v1, v0

    aget v3, v10, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    aget v3, v10, v4

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    aget v3, v10, v5

    mul-float/2addr v3, v0

    aget v4, v10, v7

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aget v4, v10, v8

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    aget v4, v10, v9

    mul-float/2addr v4, v0

    aget v0, v10, v11

    mul-float/2addr v0, v2

    add-float/2addr v4, v0

    aget v0, v10, v12

    mul-float/2addr v0, v6

    add-float/2addr v4, v0

    move/from16 v0, p4

    move-object/from16 v2, p5

    invoke-static {v1, v3, v4, v0, v2}, Landroidx/compose/ui/graphics/w1;->a(FFFFLandroidx/compose/ui/graphics/colorspace/c;)J

    move-result-wide v0

    return-wide v0
.end method
