.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;
.super Ljava/lang/Object;

# interfaces
.implements Le7/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
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

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->n(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a(I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d()V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdClickTracking(Z)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V

    return-void
.end method
