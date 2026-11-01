.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isAdImageRecycled()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v1, "bitmap is null"

    invoke-direct {v0, p1, v1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p2, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->O(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->O(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :cond_2
    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->O(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->M(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->O(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method
