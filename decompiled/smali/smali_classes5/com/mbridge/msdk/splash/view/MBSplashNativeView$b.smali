.class Lcom/mbridge/msdk/splash/view/MBSplashNativeView$b;
.super Lcom/mbridge/msdk/shake/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/view/MBSplashNativeView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/mbridge/msdk/splash/view/MBSplashNativeView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/MBSplashNativeView;II)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView$b;->g:Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    invoke-direct {p0, p2, p3}, Lcom/mbridge/msdk/shake/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView$b;->g:Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    iget-boolean v1, v0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->J:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->I:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->a(I)V

    invoke-static {}, Lcom/mbridge/msdk/shake/a;->a()Lcom/mbridge/msdk/shake/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/shake/a;->b(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
