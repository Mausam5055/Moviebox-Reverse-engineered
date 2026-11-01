.class public final Lcom/transsion/ad/bidding/splash/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/common/interfacz/OnSkipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/splash/a;->e()Lce/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/bidding/splash/a;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/splash/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/splash/a$b;->a:Lcom/transsion/ad/bidding/splash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 7

    sget-object v0, Loi/a;->a:Loi/a;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "ad_s"

    const-string v2, "BiddingHisavanaSplashActivity --> onSkipClick()"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/splash/a$b;->a:Lcom/transsion/ad/bidding/splash/a;

    invoke-static {v0}, Lcom/transsion/ad/bidding/splash/a;->w(Lcom/transsion/ad/bidding/splash/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->R()V

    :cond_2
    return-void
.end method

.method public onTimeReach()V
    .locals 7

    sget-object v0, Loi/a;->a:Loi/a;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "ad_s"

    const-string v2, "BiddingHisavanaSplashActivity --> onTimeReach()"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/splash/a$b;->a:Lcom/transsion/ad/bidding/splash/a;

    invoke-static {v0}, Lcom/transsion/ad/bidding/splash/a;->w(Lcom/transsion/ad/bidding/splash/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;->T()V

    :cond_2
    return-void
.end method
