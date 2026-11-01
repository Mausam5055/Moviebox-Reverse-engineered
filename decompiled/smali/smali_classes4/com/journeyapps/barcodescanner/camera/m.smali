.class public Lcom/journeyapps/barcodescanner/camera/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Lxe/q;

.field private b:I

.field private c:Z

.field private d:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILxe/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/m;->c:Z

    new-instance v0, Lcom/journeyapps/barcodescanner/camera/n;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/n;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/m;->d:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/m;->b:I

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/m;->a:Lxe/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Z)Lxe/q;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/journeyapps/barcodescanner/camera/m;->b(Z)Lxe/q;

    move-result-object p2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/m;->d:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->b(Ljava/util/List;Lxe/q;)Lxe/q;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lxe/q;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/m;->a:Lxe/q;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lxe/q;->d()Lxe/q;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/m;->b:I

    return v0
.end method

.method public d(Lxe/q;)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/m;->d:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/m;->a:Lxe/q;

    invoke-virtual {v0, p1, v1}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->d(Lxe/q;Lxe/q;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/m;->d:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    return-void
.end method
