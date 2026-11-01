.class public Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# static fields
.field private static f:Z


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/cloud/hisavana/sdk/i1;

.field private c:J

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "HisavanaSplashActivity"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->d:Z

    return-void
.end method

.method private R()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->J()Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->c:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->setStartTime(I)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->start()V

    :cond_1
    return-void
.end method

.method public static T(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    sput-boolean p2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->f:Z

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "uniqueID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private U()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uniqueID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/cloud/hisavana/sdk/r4;->b()Lcom/cloud/hisavana/sdk/r4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/r4;->a(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/i1;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_hisavana_splash:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/a;->a(Landroid/app/Activity;)V

    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->splash_ad:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/i1;->l0(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/i1;->j0(Landroid/content/Context;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->f:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/cloud/hisavana/sdk/R$style;->InterstitialFullscreenStyle:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->U()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->m()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/r4;->b()Lcom/cloud/hisavana/sdk/r4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/r4;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->J()Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->getSupposeFinishTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->J()Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->getRemainder()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->c:J

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->R()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->d:Z

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "onResume"

    const-string v2, "HisavanaSplashActivity"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->T()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->R()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->C0()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->I()V

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->d:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->R()V

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->d:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v3, "close ad"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->b:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->P()V

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->d:Z

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->d:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->R()V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->d:Z

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "HisavanaSplashActivity"

    const-string v2, "onStart"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
