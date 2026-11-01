.class public Lcom/journeyapps/barcodescanner/camera/o;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    return-void
.end method

.method private static e(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    div-float/2addr v0, p0

    return v0

    :cond_0
    return p0
.end method


# virtual methods
.method protected c(Lxe/q;Lxe/q;)F
    .locals 4

    iget v0, p1, Lxe/q;->a:I

    if-lez v0, :cond_1

    iget v1, p1, Lxe/q;->b:I

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p2, Lxe/q;->a:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/o;->e(F)F

    move-result v0

    iget v2, p1, Lxe/q;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p2, Lxe/q;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/camera/o;->e(F)F

    move-result v2

    div-float v0, v1, v0

    div-float/2addr v0, v2

    iget v2, p1, Lxe/q;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget p1, p1, Lxe/q;->b:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    iget p1, p2, Lxe/q;->a:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    iget p2, p2, Lxe/q;->b:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    div-float/2addr v2, p1

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/camera/o;->e(F)F

    move-result p1

    div-float/2addr v1, p1

    div-float/2addr v1, p1

    div-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Lxe/q;Lxe/q;)Landroid/graphics/Rect;
    .locals 2

    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Lxe/q;->a:I

    iget p2, p2, Lxe/q;->b:I

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method
