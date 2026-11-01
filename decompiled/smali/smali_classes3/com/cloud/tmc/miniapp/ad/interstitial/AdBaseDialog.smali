.class public abstract Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

# interfaces
.implements Landroidx/lifecycle/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;",
        ">;",
        "Landroidx/lifecycle/t;"
    }
.end annotation


# instance fields
.field public OooO00o:J

.field public OooO0O0:I

.field public OooO0OO:Z

.field public final OooO0Oo:Landroid/os/Handler;

.field public final OooO0o:Ljava/lang/Runnable;

.field public OooO0o0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0Oo:Landroid/os/Handler;

    new-instance v0, Lcom/cloud/tmc/miniapp/ad/interstitial/a;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/a;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0o:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Landroid/content/Context;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    new-instance p1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO0O0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;)V
    .locals 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0OO:Z

    new-instance v0, Lcom/cloud/tmc/ad/bean/AdShowBean;

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setImageWidth(I)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setImageHeight(I)V

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowTs(J)V

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0OO:Z

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setEffectiveShow(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowDuration(J)V

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/AdShowBean;->getImageWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/AdShowBean;->getImageHeight()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowArea(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowReportTimeType(I)V

    iget v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowTimes(I)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Lcom/cloud/tmc/ad/bean/AdShowBean;)V

    return-void
.end method


# virtual methods
.method public abstract OooO00o()I
.end method

.method public final OooO00o(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    :cond_0
    return-void
.end method

.method public abstract OooO00o(Lcom/cloud/tmc/ad/bean/AdShowBean;)V
.end method

.method public final OooO00o(Z)V
    .locals 16

    move-object/from16 v0, p0

    new-instance v15, Lcom/cloud/tmc/ad/bean/AdShowBean;

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setImageWidth(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setImageHeight(I)V

    iget-wide v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    invoke-virtual {v15, v1, v2}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowTs(J)V

    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0OO:Z

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setEffectiveShow(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    sub-long/2addr v1, v3

    invoke-virtual {v15, v1, v2}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowDuration(J)V

    invoke-virtual {v15}, Lcom/cloud/tmc/ad/bean/AdShowBean;->getImageWidth()I

    move-result v1

    invoke-virtual {v15}, Lcom/cloud/tmc/ad/bean/AdShowBean;->getImageHeight()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowArea(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowReportTimeType(I)V

    iget v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowTimes(I)V

    move/from16 v1, p1

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setClose(Z)V

    invoke-virtual {v0, v15}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Lcom/cloud/tmc/ad/bean/AdShowBean;)V

    return-void
.end method

.method public abstract OooO0O0()I
.end method

.method public final OooO0OO()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    iget v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0Oo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onLifeCycleOnPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Z)V

    :cond_0
    return-void
.end method

.method public final onLifeCycleOnResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0OO()V

    :cond_0
    return-void
.end method
