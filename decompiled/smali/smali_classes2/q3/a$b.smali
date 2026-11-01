.class final Lq3/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/a$b$a;
    }
.end annotation


# instance fields
.field private final a:[I

.field private b:Z

.field private c:Z

.field private d:[I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lq3/a$b;->a:[I

    const/4 v0, -0x1

    iput v0, p0, Lq3/a$b;->h:I

    iput v0, p0, Lq3/a$b;->i:I

    return-void
.end method

.method private static b([II)I
    .locals 1

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget p0, p0, p1

    :goto_0
    return p0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x10

    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private d([ILandroidx/media3/common/util/j0;I)V
    .locals 1

    :cond_0
    :pswitch_0
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    if-ge v0, p3, :cond_1

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lq3/a$b;->h(Landroidx/media3/common/util/j0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_2
    invoke-direct {p0, p2}, Lq3/a$b;->f(Landroidx/media3/common/util/j0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_3
    invoke-direct {p0, p2}, Lq3/a$b;->e(Landroidx/media3/common/util/j0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lq3/a$b;->g([ILandroidx/media3/common/util/j0;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private e(Landroidx/media3/common/util/j0;)Z
    .locals 7

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    iget-boolean v0, p0, Lq3/a$b;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result p1

    iget-object v3, p0, Lq3/a$b;->a:[I

    const/4 v4, 0x3

    aget v5, v3, v4

    shr-int/lit8 v6, v0, 0x4

    invoke-static {v5, v6}, Lq3/a$b;->n(II)I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lq3/a$b;->a:[I

    aget v4, v3, v2

    and-int/lit8 v0, v0, 0xf

    invoke-static {v4, v0}, Lq3/a$b;->n(II)I

    move-result v0

    aput v0, v3, v2

    iget-object v0, p0, Lq3/a$b;->a:[I

    const/4 v2, 0x1

    aget v3, v0, v2

    shr-int/lit8 v4, p1, 0x4

    invoke-static {v3, v4}, Lq3/a$b;->n(II)I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lq3/a$b;->a:[I

    aget v3, v0, v1

    and-int/lit8 p1, p1, 0xf

    invoke-static {v3, p1}, Lq3/a$b;->n(II)I

    move-result p1

    aput p1, v0, v1

    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method private f(Landroidx/media3/common/util/j0;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v2

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v3

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result p1

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v2, v4

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr p1, v3

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x1

    add-int/2addr v1, v4

    add-int/2addr p1, v4

    invoke-direct {v3, v0, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lq3/a$b;->g:Landroid/graphics/Rect;

    return v4
.end method

.method private g([ILandroidx/media3/common/util/j0;)Z
    .locals 6

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->H()I

    move-result p2

    iget-object v3, p0, Lq3/a$b;->a:[I

    shr-int/lit8 v4, v0, 0x4

    invoke-static {p1, v4}, Lq3/a$b;->b([II)I

    move-result v4

    const/4 v5, 0x3

    aput v4, v3, v5

    iget-object v3, p0, Lq3/a$b;->a:[I

    and-int/lit8 v0, v0, 0xf

    invoke-static {p1, v0}, Lq3/a$b;->b([II)I

    move-result v0

    aput v0, v3, v2

    iget-object v0, p0, Lq3/a$b;->a:[I

    shr-int/lit8 v2, p2, 0x4

    invoke-static {p1, v2}, Lq3/a$b;->b([II)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v0, p0, Lq3/a$b;->a:[I

    and-int/lit8 p2, p2, 0xf

    invoke-static {p1, p2}, Lq3/a$b;->b([II)I

    move-result p1

    aput p1, v0, v1

    iput-boolean v3, p0, Lq3/a$b;->c:Z

    return v3
.end method

.method private h(Landroidx/media3/common/util/j0;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    move-result v0

    iput v0, p0, Lq3/a$b;->h:I

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    move-result p1

    iput p1, p0, Lq3/a$b;->i:I

    const/4 p1, 0x1

    return p1
.end method

.method private j(Landroidx/media3/common/util/i0;ZLandroid/graphics/Rect;[I)V
    .locals 9

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    xor-int/lit8 p2, p2, 0x1

    mul-int v1, p2, v0

    new-instance v2, Lq3/a$b$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lq3/a$b$a;-><init>(Lq3/a$a;)V

    const/4 v3, 0x0

    :goto_0
    move v4, v3

    :cond_0
    invoke-static {p1, v0, v2}, Lq3/a$b;->k(Landroidx/media3/common/util/i0;ILq3/a$b$a;)V

    iget v5, v2, Lq3/a$b$a;->b:I

    sub-int v6, v0, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v5, :cond_1

    add-int v6, v1, v5

    iget-object v7, p0, Lq3/a$b;->a:[I

    iget v8, v2, Lq3/a$b$a;->a:I

    aget v7, v7, v8

    invoke-static {p4, v1, v6, v7}, Ljava/util/Arrays;->fill([IIII)V

    add-int/2addr v4, v5

    move v1, v6

    :cond_1
    if-lt v4, v0, :cond_0

    add-int/lit8 p2, p2, 0x2

    if-lt p2, p3, :cond_2

    return-void

    :cond_2
    mul-int v1, p2, v0

    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->c()V

    goto :goto_0
.end method

.method private static k(Landroidx/media3/common/util/i0;ILq3/a$b$a;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v1, :cond_1

    const/16 v4, 0x40

    if-gt v1, v4, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->b()I

    move-result v4

    if-ge v4, v3, :cond_0

    const/4 p0, -0x1

    iput p0, p2, Lq3/a$b$a;->a:I

    iput v0, p2, Lq3/a$b$a;->b:I

    return-void

    :cond_0
    shl-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v3

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    and-int/lit8 p0, v2, 0x3

    iput p0, p2, Lq3/a$b$a;->a:I

    if-ge v2, v3, :cond_2

    goto :goto_1

    :cond_2
    shr-int/lit8 p1, v2, 0x2

    :goto_1
    iput p1, p2, Lq3/a$b$a;->b:I

    return-void
.end method

.method private static n(II)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    mul-int/lit8 p1, p1, 0x11

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)Lu1/a;
    .locals 5

    iget-object v0, p0, Lq3/a$b;->d:[I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lq3/a$b;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lq3/a$b;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq3/a$b;->g:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget v1, p0, Lq3/a$b;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lq3/a$b;->i:I

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lq3/a$b;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lq3/a$b;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    new-instance v2, Landroidx/media3/common/util/i0;

    invoke-direct {v2}, Landroidx/media3/common/util/i0;-><init>()V

    iget v3, p0, Lq3/a$b;->h:I

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v2, p1}, Landroidx/media3/common/util/i0;->m(Landroidx/media3/common/util/j0;)V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v0, v1}, Lq3/a$b;->j(Landroidx/media3/common/util/i0;ZLandroid/graphics/Rect;[I)V

    iget v3, p0, Lq3/a$b;->i:I

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v2, p1}, Landroidx/media3/common/util/i0;->m(Landroidx/media3/common/util/j0;)V

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1, v0, v1}, Lq3/a$b;->j(Landroidx/media3/common/util/i0;ZLandroid/graphics/Rect;[I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lu1/a$b;

    invoke-direct {v2}, Lu1/a$b;-><init>()V

    invoke-virtual {v2, v1}, Lu1/a$b;->f(Landroid/graphics/Bitmap;)Lu1/a$b;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lq3/a$b;->e:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lu1/a$b;->k(F)Lu1/a$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lu1/a$b;->l(I)Lu1/a$b;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lq3/a$b;->f:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, p1}, Lu1/a$b;->h(FI)Lu1/a$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lu1/a$b;->i(I)Lu1/a$b;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lq3/a$b;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lu1/a$b;->n(F)Lu1/a$b;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lq3/a$b;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lu1/a$b;->g(F)Lu1/a$b;

    move-result-object p1

    invoke-virtual {p1}, Lu1/a$b;->a()Lu1/a;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\r?\\n"

    invoke-static {p1, v0}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "palette: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-static {v3, v4}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lq3/a$b;->d:[I

    move v4, v1

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lq3/a$b;->d:[I

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lq3/a$b;->c(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-string v4, "size: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x"

    invoke-static {v3, v4}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :try_start_0
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lq3/a$b;->e:I

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lq3/a$b;->f:I

    iput-boolean v4, p0, Lq3/a$b;->b:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "VobsubParser"

    const-string v5, "Parsing IDX failed"

    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l(Landroidx/media3/common/util/j0;)V
    .locals 2

    iget-object v0, p0, Lq3/a$b;->d:[I

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lq3/a$b;->b:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lq3/a$b;->d([ILandroidx/media3/common/util/j0;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq3/a$b;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lq3/a$b;->g:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lq3/a$b;->h:I

    iput v0, p0, Lq3/a$b;->i:I

    return-void
.end method
