.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i()V
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

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->I(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->X(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/util/v;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setShowRetainDialog(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->X(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/util/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->I(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getCountdownRemainDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->resumeCountdown(J)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->Q(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->resume()V

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setShowRetainDialog(Z)V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/v$a$a;->a(Lcom/cloud/hisavana/sdk/common/util/v$a;)V

    return-void
.end method
