.class public final Lcom/transsion/rewardscenter/ui/ClaimRewardActivity$b;
.super Landroidx/activity/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/ui/ClaimRewardActivity$b;->a:Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/ui/ClaimRewardActivity$b;->a:Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    return-void
.end method
