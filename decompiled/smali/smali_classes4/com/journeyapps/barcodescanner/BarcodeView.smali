.class public Lcom/journeyapps/barcodescanner/BarcodeView;
.super Lcom/journeyapps/barcodescanner/CameraPreview;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    }
.end annotation


# instance fields
.field private B:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field private C:Lxe/a;

.field private D:Lxe/j;

.field private E:Lxe/h;

.field private F:Landroid/os/Handler;

.field private final G:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxe/a;

    new-instance p1, Lcom/journeyapps/barcodescanner/BarcodeView$a;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$a;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->G:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->C()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxe/a;

    new-instance p1, Lcom/journeyapps/barcodescanner/BarcodeView$a;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$a;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->G:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->C()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxe/a;

    new-instance p1, Lcom/journeyapps/barcodescanner/BarcodeView$a;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$a;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->G:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->C()V

    return-void
.end method

.method private A()Lxe/g;
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxe/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->B()Lxe/h;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxe/h;

    :cond_0
    new-instance v0, Lxe/i;

    invoke-direct {v0}, Lxe/i;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxe/h;

    invoke-interface {v2, v1}, Lxe/h;->a(Ljava/util/Map;)Lxe/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxe/i;->b(Lxe/g;)V

    return-object v1
.end method

.method private C()V
    .locals 2

    new-instance v0, Lxe/k;

    invoke-direct {v0}, Lxe/k;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxe/h;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->G:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->F:Landroid/os/Handler;

    return-void
.end method

.method private D()V
    .locals 4

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->E()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->isPreviewActive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lxe/j;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getCameraInstance()Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    move-result-object v1

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->A()Lxe/g;

    move-result-object v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->F:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lxe/j;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lxe/g;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lxe/j;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getPreviewFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxe/j;->i(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lxe/j;

    invoke-virtual {v0}, Lxe/j;->k()V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lxe/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lxe/j;->l()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lxe/j;

    :cond_0
    return-void
.end method

.method static synthetic y(Lcom/journeyapps/barcodescanner/BarcodeView;)Lxe/a;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxe/a;

    return-object p0
.end method

.method static synthetic z(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    return-object p0
.end method


# virtual methods
.method protected B()Lxe/h;
    .locals 1

    new-instance v0, Lxe/k;

    invoke-direct {v0}, Lxe/k;-><init>()V

    return-object v0
.end method

.method public decodeContinuous(Lxe/a;)V
    .locals 1

    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxe/a;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->D()V

    return-void
.end method

.method public decodeSingle(Lxe/a;)V
    .locals 1

    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->SINGLE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxe/a;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->D()V

    return-void
.end method

.method public getDecoderFactory()Lxe/h;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxe/h;

    return-object v0
.end method

.method public pause()V
    .locals 0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->E()V

    invoke-super {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->pause()V

    return-void
.end method

.method protected s()V
    .locals 0

    invoke-super {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->s()V

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->D()V

    return-void
.end method

.method public setDecoderFactory(Lxe/h;)V
    .locals 1

    invoke-static {}, Lxe/s;->a()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxe/h;

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lxe/j;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->A()Lxe/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lxe/j;->j(Lxe/g;)V

    :cond_0
    return-void
.end method

.method public stopDecoding()V
    .locals 1

    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxe/a;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->E()V

    return-void
.end method
