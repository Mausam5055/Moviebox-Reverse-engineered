.class Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/view/BaseSplashPopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    iget-object v1, v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e:Lcom/mbridge/msdk/splash/middle/d;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/mbridge/msdk/out/MBridgeIds;

    iget-object v3, v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$f;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {v4}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/mbridge/msdk/splash/middle/d;->a(Lcom/mbridge/msdk/out/MBridgeIds;III)V

    :cond_0
    return-void
.end method
