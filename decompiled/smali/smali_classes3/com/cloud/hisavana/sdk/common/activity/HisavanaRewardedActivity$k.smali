.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->B(J)V
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

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$k;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$k;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->V()Lcom/cloud/hisavana/sdk/o0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/o0;->j()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$k;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->E(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$k;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->p(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;J)V

    return-void
.end method
