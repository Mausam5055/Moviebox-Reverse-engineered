.class public final Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CustomSplashScreen"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\r\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\r\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "onStop",
        "onDestroy",
        "R",
        "T",
        "finish",
        "Lji/i;",
        "a",
        "Lji/i;",
        "binding",
        "Lcom/transsion/ad/bidding/splash/a;",
        "b",
        "Lcom/transsion/ad/bidding/splash/a;",
        "splashProvider",
        "",
        "c",
        "Z",
        "isTimeReached",
        "d",
        "isForeground",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lji/i;

.field private b:Lcom/transsion/ad/bidding/splash/a;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final R()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->finish()V

    return-void
.end method

.method public final T()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->c:Z

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    sget-object v0, Lcom/transsion/ad/bidding/base/v;->a:Lcom/transsion/ad/bidding/base/v;

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/v;->c()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lji/i;->c(Landroid/view/LayoutInflater;)Lji/i;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->a:Lji/i;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lji/i;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->transparentBar()Lcom/gyf/immersionbar/ImmersionBar;

    sget-object v1, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    invoke-virtual {p1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "key_scene_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/transsion/ad/bidding/splash/a;->n:Lcom/transsion/ad/bidding/splash/a$a;

    invoke-virtual {v1, p1}, Lcom/transsion/ad/bidding/splash/a$a;->a(Ljava/lang/String;)Lcom/transsion/ad/bidding/splash/a;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->b:Lcom/transsion/ad/bidding/splash/a;

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->a:Lji/i;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lji/i;->b:Lcom/hisavana/mediation/ad/TSplashView;

    :cond_1
    move-object v4, v0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/transsion/ad/bidding/splash/a;->A(Lcom/transsion/ad/bidding/splash/a;Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;Lcom/hisavana/mediation/ad/TSplashView;Landroid/view/View;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->b:Lcom/transsion/ad/bidding/splash/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->onClosed(I)V

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->d:Z

    iget-boolean v0, p0, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->d:Z

    return-void
.end method
