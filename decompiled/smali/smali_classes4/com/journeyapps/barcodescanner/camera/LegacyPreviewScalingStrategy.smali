.class public Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;
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

.method public static e(Lxe/q;Lxe/q;)Lxe/q;
    .locals 6

    invoke-virtual {p1, p0}, Lxe/q;->b(Lxe/q;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0, v2, v3}, Lxe/q;->e(II)Lxe/q;

    move-result-object v0

    invoke-virtual {p0, v3, v1}, Lxe/q;->e(II)Lxe/q;

    move-result-object p0

    invoke-virtual {p1, v0}, Lxe/q;->b(Lxe/q;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1, p0}, Lxe/q;->b(Lxe/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0, v3, v2}, Lxe/q;->e(II)Lxe/q;

    move-result-object v0

    invoke-virtual {p0, v1, v3}, Lxe/q;->e(II)Lxe/q;

    move-result-object v4

    invoke-virtual {p1, v4}, Lxe/q;->b(Lxe/q;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1, v0}, Lxe/q;->b(Lxe/q;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    move-object p0, v4

    goto :goto_0
.end method


# virtual methods
.method public b(Ljava/util/List;Lxe/q;)Lxe/q;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxe/q;

    return-object p1

    :cond_0
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;

    invoke-direct {v1, p0, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;-><init>(Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;Lxe/q;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewfinder size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preview in order of preference: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxe/q;

    return-object p1
.end method

.method public d(Lxe/q;Lxe/q;)Landroid/graphics/Rect;
    .locals 5

    invoke-static {p1, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->e(Lxe/q;Lxe/q;)Lxe/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; Scaled: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; Want: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget p1, v0, Lxe/q;->a:I

    iget v1, p2, Lxe/q;->a:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iget v1, v0, Lxe/q;->b:I

    iget p2, p2, Lxe/q;->b:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    new-instance p2, Landroid/graphics/Rect;

    neg-int v2, p1

    neg-int v3, v1

    iget v4, v0, Lxe/q;->a:I

    sub-int/2addr v4, p1

    iget p1, v0, Lxe/q;->b:I

    sub-int/2addr p1, v1

    invoke-direct {p2, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method
