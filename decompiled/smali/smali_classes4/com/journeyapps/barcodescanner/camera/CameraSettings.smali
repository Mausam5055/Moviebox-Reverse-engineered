.class public Lcom/journeyapps/barcodescanner/camera/CameraSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->b:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->c:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->e:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->f:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->g:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->h:Z

    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->i:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-void
.end method


# virtual methods
.method public a()Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->i:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->a:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->e:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->h:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->c:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->g:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->b:Z

    return v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->a:I

    return-void
.end method
