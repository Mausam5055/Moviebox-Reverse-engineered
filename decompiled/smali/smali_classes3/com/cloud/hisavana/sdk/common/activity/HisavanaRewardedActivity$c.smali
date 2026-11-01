.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Z

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->a:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->J(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {v0, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->N(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result p2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->R(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result v0

    sub-float/2addr p2, v0

    float-to-double v0, p2

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result p2

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->T(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result v2

    sub-float/2addr p2, v2

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_2

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->a:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->V()Lcom/cloud/hisavana/sdk/o0;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v7, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->R(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result v1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->T(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result v2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result v3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v7, v0}, Lcom/cloud/hisavana/sdk/o0;->e(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->a:Z

    return p1
.end method
