.class public abstract Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lxe/q;)Ljava/util/List;
    .locals 1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;

    invoke-direct {v0, p0, p2}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;-><init>(Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;Lxe/q;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public b(Ljava/util/List;Lxe/q;)Lxe/q;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->a(Ljava/util/List;Lxe/q;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Viewfinder size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preview in order of preference: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxe/q;

    return-object p1
.end method

.method protected c(Lxe/q;Lxe/q;)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public abstract d(Lxe/q;Lxe/q;)Landroid/graphics/Rect;
.end method
