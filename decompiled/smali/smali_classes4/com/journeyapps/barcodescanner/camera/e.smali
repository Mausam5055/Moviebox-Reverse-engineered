.class public final synthetic Lcom/journeyapps/barcodescanner/camera/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/e;->a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iput-boolean p2, p0, Lcom/journeyapps/barcodescanner/camera/e;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/e;->a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/e;->b:Z

    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V

    return-void
.end method
