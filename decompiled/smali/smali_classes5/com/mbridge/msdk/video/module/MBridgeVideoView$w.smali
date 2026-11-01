.class final Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;
.super Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/module/MBridgeVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "w"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private g:Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private n:I

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 1

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->g:Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->h:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->i:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->j:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->p:Z

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->getUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->getCampaign()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;Lcom/iab/omid/library/mmadbridge/adsession/media/a;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->f:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    const-string v0, "drawable"

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_reward_video_time_count_num_bg"

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, -0x2

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_native_endcard_feed_btn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_reward_shape_progress"

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private a(II)V
    .locals 3

    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->n:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_4

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->p:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->o:I

    if-le v2, v0, :cond_1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->o:I

    :cond_1
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->o:I

    if-ltz v0, :cond_4

    mul-int/2addr p2, v0

    div-int/2addr p2, v1

    if-lt p1, p2, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x11f

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/download/a;->v()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->p:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CDRate is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and start download !"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultVideoPlayerStatusListener"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private a(III)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->k:Z

    const-string v4, "string"

    if-eqz v3, :cond_1

    sub-int v2, p2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v0, "%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_1
    if-le p1, p2, :cond_2

    move p1, p2

    :cond_2
    if-gtz p1, :cond_3

    sub-int v3, p2, p3

    goto :goto_0

    :cond_3
    sub-int v3, p1, p3

    :goto_0
    if-gtz v3, :cond_5

    if-gtz p1, :cond_4

    const-string v2, "0"

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v3

    const-string v5, "mbridge_reward_video_view_reward_time_complete"

    invoke-static {v3, v5, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-gtz p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v3

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v5

    const-string v6, "mbridge_reward_video_view_reward_time_left"

    invoke-static {v5, v6, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v3}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v3}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->U(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v3}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v3}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->U(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;->onTimeLessThanReduce(I)V

    :cond_7
    move-object v0, v2

    :goto_3
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getUseSkipTime()I

    move-result v2

    if-ne v2, v1, :cond_b

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x4

    const-string v2, "mbridge_reward_video_view_reward_time_left_skip_time"

    if-ge p2, p1, :cond_9

    if-ltz p2, :cond_9

    sub-int/2addr p2, p3

    if-lez p2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->k:Z

    if-eqz p1, :cond_b

    if-nez p2, :cond_b

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_9
    sub-int/2addr p1, p3

    iget-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->k:Z

    if-eqz p2, :cond_b

    if-lez p1, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_c
    return-void
.end method

.method private b(I)V
    .locals 6

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v0

    const-string v1, "drawable"

    const/4 v2, 0x1

    const/4 v3, 0x5

    const-string v4, "mbridge_reward_video_time_count_num_bg"

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v5, v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrPlayNum:I

    if-le v5, v2, :cond_1

    if-gtz p1, :cond_1

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->e()V

    return-void

    :cond_1
    if-lez p1, :cond_3

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->k:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result p1

    if-ne p1, v3, :cond_4

    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->e()V

    goto :goto_0

    :cond_3
    const-string v4, "mbridge_reward_shape_progress"

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getUseSkipTime()I

    move-result p1

    if-ne p1, v2, :cond_5

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->k:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->e()V

    :cond_5
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private b(III)V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_reward_video_view_reward_time_complete"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    const-string v4, "mbridge_reward_video_view_reward_time_left"

    invoke-static {v2, v4, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-ltz p1, :cond_7

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getUseSkipTime()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-string v2, "mbridge_reward_video_view_reward_time_left_skip_time"

    const/4 v4, 0x4

    if-ge p2, p1, :cond_2

    if-lez p2, :cond_2

    sub-int/2addr p2, p3

    if-gtz p2, :cond_1

    sub-int p2, p1, p3

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->k:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    sub-int p2, p1, p3

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->k:Z

    if-eqz p1, :cond_5

    if-gtz p2, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_4
    sub-int p2, p1, p3

    :cond_5
    :goto_0
    if-gtz p2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    sub-int/2addr p2, p3

    if-gtz p2, :cond_8

    if-gtz p1, :cond_a

    const-string v0, "0"

    goto :goto_2

    :cond_8
    if-gtz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->g:Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;

    iput p3, p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;->a:I

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_b
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result p1

    if-ge p2, p1, :cond_c

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->U(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->U(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;->onTimeLessThanReduce(I)V

    :cond_c
    return-void
.end method

.method private c()V
    .locals 4

    const-string v0, "DefaultVideoPlayerStatusListener"

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v1

    const-string v2, "h_c_r_w_p_c"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->n:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_4

    iget v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->o:I

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->p:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x11f

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->v()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->p:Z

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "CDRate is : 0  and start download when player create!"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->b:I

    return v0
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->l:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->k:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->d:I

    return v0
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->n:I

    iput p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->o:I

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b(Z)Z

    return-void
.end method

.method public onBufferingEnd()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onBufferingEnd()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->f:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->b()V

    const-string v0, "omsdk"

    const-string v1, "play:  videoEvents.bufferFinish()"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const-string v1, ""

    const/16 v2, 0xe

    invoke-interface {v0, v2, v1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onBufferingStart(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onBufferingStart(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->f:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz p1, :cond_0

    const-string p1, "omsdk"

    const-string v0, "play:  videoEvents.bufferStart()"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->f:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onBufferingTimeOut(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const-string v0, ""

    const/16 v1, 0xd

    invoke-interface {p1, v1, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPlayCompleted()V
    .locals 7

    invoke-super {p0}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayCompleted()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const-string v2, "0"

    const v3, 0x4c531a

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-boolean v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->k:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    const-string v5, "mbridge_reward_video_view_reward_time_complete"

    const-string v6, "string"

    invoke-static {v2, v5, v6}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoPlayProgress(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/widget/FeedBackButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/widget/FeedBackButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mSoundImageView:Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->f:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->d()V

    const-string v0, "omsdk"

    const-string v2, "play:  videoEvents.complete()"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    :cond_5
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/video/dynview/listener/a;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v3, v2, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCampaignSize:I

    iget v2, v2, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrPlayNum:I

    if-le v3, v2, :cond_7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v1, v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrPlayNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v1, v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mMuteSwitch:I

    if-eqz v1, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mute"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/video/dynview/listener/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mbridge/msdk/video/dynview/listener/a;->a(Ljava/util/Map;)V

    return-void

    :cond_7
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 v3, 0x79

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 v3, 0xb

    invoke-interface {v2, v3, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_8
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->c:I

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->b:I

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iput v0, v2, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrentPlayProgressTime:I

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b(Z)Z

    return-void
.end method

.method public onPlayError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorStr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultVideoPlayerStatusListener"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 v1, 0xc

    invoke-interface {v0, v1, p1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPlayProgress(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayProgress(II)V

    invoke-static {}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->a(J)J

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->M(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/video/dynview/listener/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->M(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/video/dynview/listener/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/dynview/listener/f;->a()V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-boolean v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    const-string v2, "DefaultVideoPlayerStatusListener"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCompleteTime()I

    move-result v0

    if-gtz v0, :cond_2

    move v0, p2

    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v3}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->b(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0, p2, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a(III)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->g:Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;

    iput p1, v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;->a:I

    :cond_5
    :goto_1
    iput p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->c:I

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->g:Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;

    iput p2, v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;->b:I

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v3}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->j(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;->c:Z

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->b:I

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iput p1, v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrentPlayProgressTime:I

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->g:Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;

    const/16 v4, 0xf

    invoke-interface {v0, v4, v3}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->f:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_9

    mul-int/lit8 v3, p1, 0x64

    div-int/2addr v3, p2

    add-int/lit8 v4, p1, 0x1

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, p2

    const/16 v5, 0x19

    const-string v6, "omsdk"

    if-gt v3, v5, :cond_7

    if-ge v5, v4, :cond_7

    iget-boolean v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->h:Z

    if-nez v5, :cond_7

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->h:Z

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->h()V

    const-string v0, "play:  videoEvents.firstQuartile()"

    invoke-static {v6, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/16 v5, 0x32

    if-gt v3, v5, :cond_8

    if-ge v5, v4, :cond_8

    iget-boolean v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->i:Z

    if-nez v5, :cond_8

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->i:Z

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->i()V

    const-string v0, "play:  videoEvents.midpoint()"

    invoke-static {v6, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/16 v5, 0x4b

    if-gt v3, v5, :cond_9

    if-ge v5, v4, :cond_9

    iget-boolean v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->j:Z

    if-nez v3, :cond_9

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->j:Z

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->o()V

    const-string v0, "play:  videoEvents.thirdQuartile()"

    invoke-static {v6, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->i(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v0

    sget v3, Lcom/mbridge/msdk/foundation/same/a;->I:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    :cond_a
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    move-result-object v0

    if-eqz v0, :cond_b

    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v3}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v4, v4, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrPlayNum:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v0, v4}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;->setProgress(II)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoPlayProgress(I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Y(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Y(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v0

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->T(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v0

    :goto_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCTALayoutVisibleOrGone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_6
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a(II)V

    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlaySetDataSourceError(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayStarted(I)V
    .locals 5

    const-string v0, "omsdk"

    invoke-super {p0, p1}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayStarted(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    :cond_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->e:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->g:Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;

    const/16 v4, 0xa

    invoke-interface {v1, v4, v3}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_1
    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->e:Z

    :cond_2
    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->d:I

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCompleteTime()I

    move-result v1

    if-gtz v1, :cond_3

    move v1, p1

    :cond_3
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->b(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a(I)V

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_6
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    :cond_8
    invoke-static {v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b(Z)Z

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Y(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Y(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCTALayoutVisibleOrGone()V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->T(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCTALayoutVisibleOrGone()V

    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->showMoreOfferInPlayTemplate()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->showBaitClickView()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->G(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    :cond_b
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->f:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v1, :cond_d

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/PlayerView;->getVolume()F

    move-result v1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->f:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    int-to-float p1, p1

    invoke-virtual {v2, p1, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->n(FF)V

    const-string p1, "play video view:  videoEvents.start"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_4
    return-void
.end method
