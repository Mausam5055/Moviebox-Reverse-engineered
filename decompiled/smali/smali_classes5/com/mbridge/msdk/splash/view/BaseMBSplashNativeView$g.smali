.class Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/feedback/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$g;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$g;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->J:Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$g;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->J:Z

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;Z)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$g;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->J:Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;Z)V

    return-void
.end method
