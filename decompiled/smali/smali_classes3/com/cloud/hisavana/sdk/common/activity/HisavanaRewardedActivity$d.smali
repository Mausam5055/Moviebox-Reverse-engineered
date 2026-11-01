.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interactiveEvent, eventId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 10

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleClick"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->V()Lcom/cloud/hisavana/sdk/o0;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v8, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->R(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result v2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->T(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result v3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result v4

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result v5

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->W(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    move-result-object v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v9

    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->W(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v9

    :goto_1
    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->W(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    move-result-object v1

    invoke-virtual {v0, v9, v8, v1}, Lcom/cloud/hisavana/sdk/o0;->e(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeoutShutdown"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
