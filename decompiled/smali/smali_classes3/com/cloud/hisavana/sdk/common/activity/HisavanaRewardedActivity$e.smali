.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;
.super Lcom/cloud/hisavana/sdk/f4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

.field final synthetic f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->e:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-direct {p0, p3}, Lcom/cloud/hisavana/sdk/f4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/p;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/f4;->a(Lcom/cloud/hisavana/sdk/p;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->e:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->showRepeatButton(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/f4;->b()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setPlayStart(Z)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/f4;->onComplete()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setPlayComplete(Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/f4;->onIsPlayingChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->e:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->showRepeatButton(Z)V

    :cond_0
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/f4;->onVolumeChanged(F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setVideoVolume(F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->P(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V

    return-void
.end method
