.class public final Landroidx/compose/ui/graphics/colorspace/h$b;
.super Landroidx/compose/ui/graphics/colorspace/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final h:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private final i:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private final j:[F


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/colorspace/h;-><init>(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;I[FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->h:Landroidx/compose/ui/graphics/colorspace/Rgb;

    iput-object p2, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->i:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/h$b;->b(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->j:[F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/h$b;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)V

    return-void
.end method

.method private final b(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)[F
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v3

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/colorspace/d;->f(Landroidx/compose/ui/graphics/colorspace/y;Landroidx/compose/ui/graphics/colorspace/y;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->G()[F

    move-result-object p2

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->M()[F

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/colorspace/d;->l([F[F)[F

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->M()[F

    move-result-object v3

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->G()[F

    move-result-object v4

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/y;->c()[F

    move-result-object v5

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/colorspace/y;->c()[F

    move-result-object v6

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/graphics/colorspace/k;->a:Landroidx/compose/ui/graphics/colorspace/k;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/k;->b()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v9

    invoke-static {v7, v9}, Landroidx/compose/ui/graphics/colorspace/d;->f(Landroidx/compose/ui/graphics/colorspace/y;Landroidx/compose/ui/graphics/colorspace/y;)Z

    move-result v7

    const-string v9, "copyOf(this, size)"

    if-nez v7, :cond_1

    sget-object v3, Landroidx/compose/ui/graphics/colorspace/a;->b:Landroidx/compose/ui/graphics/colorspace/a$d;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/a$d;->a()Landroidx/compose/ui/graphics/colorspace/a;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/a;->b()[F

    move-result-object v3

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/k;->c()[F

    move-result-object v7

    array-length v10, v7

    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5, v7}, Landroidx/compose/ui/graphics/colorspace/d;->e([F[F[F)[F

    move-result-object v3

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->M()[F

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/compose/ui/graphics/colorspace/d;->l([F[F)[F

    move-result-object v3

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object p1

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/k;->b()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v7

    invoke-static {p1, v7}, Landroidx/compose/ui/graphics/colorspace/d;->f(Landroidx/compose/ui/graphics/colorspace/y;Landroidx/compose/ui/graphics/colorspace/y;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Landroidx/compose/ui/graphics/colorspace/a;->b:Landroidx/compose/ui/graphics/colorspace/a$d;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/a$d;->a()Landroidx/compose/ui/graphics/colorspace/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/a;->b()[F

    move-result-object p1

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/k;->c()[F

    move-result-object v4

    array-length v7, v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v6, v4}, Landroidx/compose/ui/graphics/colorspace/d;->e([F[F[F)[F

    move-result-object p1

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->M()[F

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/colorspace/d;->l([F[F)[F

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/graphics/colorspace/d;->k([F)[F

    move-result-object v4

    :cond_2
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/n;->a:Landroidx/compose/ui/graphics/colorspace/n$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/n$a;->a()I

    move-result p1

    invoke-static {p3, p1}, Landroidx/compose/ui/graphics/colorspace/n;->e(II)Z

    move-result p1

    if-eqz p1, :cond_3

    aget p1, v5, v2

    aget p2, v6, v2

    div-float/2addr p1, p2

    aget p2, v5, v1

    aget p3, v6, v1

    div-float/2addr p2, p3

    aget p3, v5, v0

    aget v5, v6, v0

    div-float/2addr p3, v5

    const/4 v5, 0x3

    new-array v5, v5, [F

    aput p1, v5, v2

    aput p2, v5, v1

    aput p3, v5, v0

    invoke-static {v5, v3}, Landroidx/compose/ui/graphics/colorspace/d;->m([F[F)[F

    move-result-object v3

    :cond_3
    invoke-static {v4, v3}, Landroidx/compose/ui/graphics/colorspace/d;->l([F[F)[F

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(J)J
    .locals 6

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->r(J)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->q(J)F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->o(J)F

    move-result v2

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->n(J)F

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->h:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->E()Landroidx/compose/ui/graphics/colorspace/j;

    move-result-object p2

    float-to-double v3, v0

    invoke-interface {p2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    move-result-wide v3

    double-to-float p2, v3

    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->h:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->E()Landroidx/compose/ui/graphics/colorspace/j;

    move-result-object v0

    float-to-double v3, v1

    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->h:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->E()Landroidx/compose/ui/graphics/colorspace/j;

    move-result-object v1

    float-to-double v2, v2

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->j:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    mul-float/2addr v3, p2

    const/4 v4, 0x3

    aget v4, v2, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    const/4 v4, 0x6

    aget v4, v2, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v2, v4

    mul-float/2addr v4, p2

    const/4 v5, 0x4

    aget v5, v2, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, v2, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v2, v5

    mul-float/2addr v5, p2

    const/4 p2, 0x5

    aget p2, v2, p2

    mul-float/2addr p2, v0

    add-float/2addr v5, p2

    const/16 p2, 0x8

    aget p2, v2, p2

    mul-float/2addr p2, v1

    add-float/2addr v5, p2

    iget-object p2, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->i:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->I()Landroidx/compose/ui/graphics/colorspace/j;

    move-result-object p2

    float-to-double v0, v3

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    move-result-wide v0

    double-to-float p2, v0

    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->i:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->I()Landroidx/compose/ui/graphics/colorspace/j;

    move-result-object v0

    float-to-double v1, v4

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->i:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->I()Landroidx/compose/ui/graphics/colorspace/j;

    move-result-object v1

    float-to-double v2, v5

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->i:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {p2, v0, v1, p1, v2}, Landroidx/compose/ui/graphics/w1;->a(FFFFLandroidx/compose/ui/graphics/colorspace/c;)J

    move-result-wide p1

    return-wide p1
.end method
