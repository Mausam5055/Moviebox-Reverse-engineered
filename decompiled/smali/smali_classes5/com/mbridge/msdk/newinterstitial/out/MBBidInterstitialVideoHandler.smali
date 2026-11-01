.class public Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/out/BaseExtraInterfaceForHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/mbridge/msdk/reward/controller/a;

.field private g:Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field public mUnitId:Ljava/lang/String;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->i:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->j:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->k:Z

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/controller/a;->b(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->i:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->j:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->k:Z

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->mUnitId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/t0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->mUnitId:Ljava/lang/String;

    iput-object p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->a()V

    return-void
.end method

.method private b()V
    .locals 6

    iget-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/mbridge/msdk/newinterstitial/listener/a;

    iget-object v3, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->g:Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;

    invoke-direct {v2, v3}, Lcom/mbridge/msdk/newinterstitial/listener/a;-><init>(Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;)V

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    :cond_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->i:Z

    :cond_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-boolean v1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->j:Z

    :cond_3
    iget-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->l:I

    iget v3, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->n:I

    iget v4, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->m:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/mbridge/msdk/reward/controller/a;->a(III)V

    iput-boolean v1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->k:Z

    :cond_4
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/reward/controller/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/reward/controller/a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->d(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->e(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/reward/controller/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MBBidInterstitialVideoHandler"

    invoke-static {v0, p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->l:I

    iget v2, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->n:I

    iget v3, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->m:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/reward/controller/a;->a(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearVideoCache()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCreativeIdWithUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isBidReady()Z
    .locals 2

    invoke-direct {p0}, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->c(Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadFormSelfFilling()V
    .locals 7

    invoke-direct {p0}, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->mUnitId:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v2, 0x1

    const/16 v3, 0x11f

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(ZLcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method

.method public loadFromBid(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->mUnitId:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x11f

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v1, v2, p1, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(ZLjava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method

.method public playVideoMute(I)V
    .locals 1

    iput p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->h:I

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/reward/controller/a;->a(I)V

    :cond_0
    return-void
.end method

.method public setAlertDialogText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->j:Z

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->mUnitId:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/mbridge/msdk/newreward/function/common/MBridgeGlobalCommon;->setAlertDialogText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExtraInfo(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->mUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public setIVRewardEnable(ID)V
    .locals 2

    iput p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->l:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p2, v0

    double-to-int p1, p2

    iput p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->m:I

    sget p1, Lcom/mbridge/msdk/foundation/same/a;->J:I

    iput p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->n:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->k:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->c()V

    return-void
.end method

.method public setIVRewardEnable(II)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->l:I

    iput p2, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->m:I

    sget p1, Lcom/mbridge/msdk/foundation/same/a;->K:I

    iput p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->n:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->k:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->c()V

    return-void
.end method

.method public setInterstitialVideoListener(Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;)V
    .locals 2

    iput-object p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->g:Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->i:Z

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    new-instance v1, Lcom/mbridge/msdk/newinterstitial/listener/a;

    invoke-direct {v1, p1}, Lcom/mbridge/msdk/newinterstitial/listener/a;-><init>(Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->i:Z

    :cond_0
    return-void
.end method

.method public setRewardVideoListener(Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->g:Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->i:Z

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    new-instance v1, Lcom/mbridge/msdk/newinterstitial/listener/a;

    invoke-direct {v1, p1}, Lcom/mbridge/msdk/newinterstitial/listener/a;-><init>(Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->i:Z

    :cond_0
    return-void
.end method

.method public showFromBid()V
    .locals 7

    invoke-direct {p0}, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->mUnitId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x11f

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;->f:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method
