.class Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;
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

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;I)I

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->h(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    iget-object v1, v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->i(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    iget-object v1, v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e:Lcom/mbridge/msdk/splash/middle/d;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/mbridge/msdk/out/MBridgeIds;

    iget-object v3, v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/splash/middle/d;->a(Lcom/mbridge/msdk/out/MBridgeIds;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->g(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)I

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->e(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->f(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$e;->a:Lcom/mbridge/msdk/splash/view/BaseSplashPopView;

    iget-object v1, v0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->n:Landroid/os/Handler;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseSplashPopView;->i(Lcom/mbridge/msdk/splash/view/BaseSplashPopView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
