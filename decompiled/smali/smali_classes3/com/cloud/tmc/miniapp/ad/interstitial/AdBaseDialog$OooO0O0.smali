.class public final Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0OO()V

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    new-instance v15, Lcom/cloud/tmc/ad/bean/AdShowBean;

    const/16 v14, 0x1ff

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v15

    move-object/from16 p1, v1

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setImageWidth(I)V

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setImageHeight(I)V

    iget-wide v3, v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    invoke-virtual {v1, v3, v4}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowTs(J)V

    iget-boolean v3, v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0OO:Z

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setEffectiveShow(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowDuration(J)V

    invoke-virtual {v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->getImageWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->getImageHeight()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowArea(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowReportTimeType(I)V

    iget v2, v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowTimes(I)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Lcom/cloud/tmc/ad/bean/AdShowBean;)V

    return-void
.end method
