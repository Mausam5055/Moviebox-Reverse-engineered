.class Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->j()V
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

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    iget-boolean v0, p1, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->H:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    iget-object p1, p1, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    iget-object p1, p1, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/splash/middle/a;->close()V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    iget-object p1, p1, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->f:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    iget-object p1, p1, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method
