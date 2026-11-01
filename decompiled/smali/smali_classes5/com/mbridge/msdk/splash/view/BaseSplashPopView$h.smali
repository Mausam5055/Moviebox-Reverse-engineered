.class Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {p1}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)I

    move-result p1

    if-lez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$h;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    iget-object v0, p1, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e:Lcom/mbridge/msdk/splash/middle/d;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/mbridge/msdk/out/MBridgeIds;

    iget-object v2, p1, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/splash/middle/d;->a(Lcom/mbridge/msdk/out/MBridgeIds;I)V

    :cond_1
    return-void
.end method
