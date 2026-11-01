.class public Lcom/cloud/hisavana/sdk/i1;
.super Lcom/cloud/hisavana/sdk/G;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/i1$e;
    }
.end annotation


# instance fields
.field protected A:I

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/Float;

.field private final E:Ljava/lang/Runnable;

.field private final i:Ljava/lang/String;

.field private j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/View;

.field private m:Lcom/cloud/hisavana/sdk/u2;

.field private n:Landroid/content/Context;

.field protected volatile o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private p:Z

.field private q:Landroid/os/Handler;

.field private r:J

.field private s:J

.field private t:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private u:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

.field private v:Landroid/widget/LinearLayout;

.field private w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

.field private x:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

.field private y:Lf7/d;

.field private z:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/q3;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/G;-><init>(Lcom/cloud/hisavana/sdk/q3;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->m:Lcom/cloud/hisavana/sdk/u2;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/i1;->r:J

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/i1;->B:Z

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/i1;->C:Z

    new-instance p1, Lcom/cloud/hisavana/sdk/i1$a;

    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/i1$a;-><init>(Lcom/cloud/hisavana/sdk/i1;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->E:Ljava/lang/Runnable;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->i:Ljava/lang/String;

    return-void
.end method

.method private A0()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getShowTime()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x5

    if-gt v2, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->setStartTime(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    new-instance v1, Lcom/cloud/hisavana/sdk/i1$d;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/i1$d;-><init>(Lcom/cloud/hisavana/sdk/i1;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->setCountDownTimerListener(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->ad_mark_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->ad_mark_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->ad_mark_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->ad_skip_view_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/hisavana/sdk/R$dimen;->ad_skip_view_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic F(Lcom/cloud/hisavana/sdk/i1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/i1;->h0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic G(Lcom/cloud/hisavana/sdk/i1;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/i1;->N()V

    return-void
.end method

.method private synthetic N()V
    .locals 4

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/i1;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->u:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->m:Lcom/cloud/hisavana/sdk/u2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/u2;->b()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->cancel()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->setCountDownTimerListener(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->u:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->x:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_4
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_5
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->l:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/i1;->S()V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "ssp_splash"

    const-string v3, "TranSplash\uff0cdestroy"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/i1;->D0()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->y:Lf7/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lf7/d;->f()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->y:Lf7/d;

    :cond_7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->z:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->z:Landroid/widget/PopupWindow;

    :cond_8
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/i1;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic U(Lcom/cloud/hisavana/sdk/i1;Lcom/cloud/hisavana/sdk/p;)Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->V(Lcom/cloud/hisavana/sdk/p;)Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    move-result-object p0

    return-object p0
.end method

.method private V(Lcom/cloud/hisavana/sdk/p;)Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;
    .locals 0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p;->a()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIDEO_PLAYER_UNKNOWN_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIDEO_PLAYER_UNAVAILABLE:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIDEO_PLAYER_DRM_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    return-object p1

    :pswitch_3
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIDEO_PLAYER_DECODE_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIDEO_PLAYER_IO_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1789
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic W(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    return-object p0
.end method

.method private X(J)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/i1;->s:J

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->q:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->q:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeAdDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranSplash"

    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Y(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/u2;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/u2;-><init>(Lcom/cloud/hisavana/sdk/i1;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->m:Lcom/cloud/hisavana/sdk/u2;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    return-void
.end method

.method private Z(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    const-string v1, "ssp_splash"

    if-nez v0, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "bg view is null"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_1

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "ad data is null"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillSplash renderView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranSplash"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const-string v1, "K01"

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setMaterialStyle(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->b0(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/i1;->y0()V

    return-void
.end method

.method private a0(Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    const-string v1, "ssp_splash"

    if-nez v0, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "bg view is null"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_1

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "ad data is null"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillSplash renderView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranSplash"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const-string v1, "K02"

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setMaterialStyle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->splash_style_k02_layout:I

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/cloud/hisavana/sdk/R$dimen;->hisavana_ad_dimen_180:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/cloud/hisavana/sdk/R$dimen;->hisavana_ad_dimen_400:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->iv_main_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/i1;->b0(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object p1

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2, v4, v5, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v6, 0x1

    invoke-static {v2, v4, v6, v5, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :cond_3
    :goto_0
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->tvDescription:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u00b7 "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/i0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    const p2, -0x878788

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private b0(Landroid/view/ViewGroup;)V
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/hisavana/sdk/R$dimen;->dimens_16:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/hisavana/sdk/R$dimen;->dimens_16:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->l:Landroid/view/View;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/hisavana/sdk/R$dimen;->dimens_82:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/hisavana/sdk/R$dimen;->dimens_48:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_1
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/cloud/hisavana/sdk/R$layout;->hs_include_ad_flag:I

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ad_choices_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/i1;->u:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ad_badge_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    sget v5, Lcom/cloud/hisavana/sdk/R$id;->ad_close_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/i1;->u:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/i1;->d0(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v5

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v6}, Lcom/cloud/hisavana/sdk/common/util/f0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;I)V

    :cond_4
    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v3

    sget-object v5, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->EXPAND:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    invoke-virtual {v4, v3, v5}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/t2;->p()Lcom/cloud/hisavana/sdk/t2;

    move-result-object v3

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3, v5, v4, p0, v6}, Lcom/cloud/hisavana/sdk/t2;->f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_5
    if-eqz p1, :cond_6

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private d0(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setACReady(Ljava/lang/Boolean;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, v1, v2, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :goto_0
    new-instance v0, Lcom/cloud/hisavana/sdk/i1$c;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/i1$c;-><init>(Lcom/cloud/hisavana/sdk/i1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic h0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lf7/d;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lf7/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lf7/d;->j(Ljava/lang/String;)Lf7/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lf7/d;->h(Ljava/lang/String;)Lf7/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lf7/d;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lf7/d;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->y:Lf7/d;

    invoke-virtual {p1}, Lf7/d;->k()V

    return-void
.end method

.method static synthetic i0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-object p0
.end method

.method static synthetic n0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-object p0
.end method

.method static synthetic q0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-object p0
.end method

.method static synthetic r0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-object p0
.end method

.method static synthetic s0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-object p0
.end method

.method static synthetic t0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-object p0
.end method

.method static synthetic u0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-object p0
.end method

.method static synthetic v0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-object p0
.end method

.method static synthetic w0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-object p0
.end method

.method private x0()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->l:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Li7/c;->j()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/i1;->D:Ljava/lang/Float;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_0

    :cond_3
    const v3, 0x3e0f5c29    # 0.14f

    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ssp sdk addLogoLayout heightRatio = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TranSplash"

    invoke-virtual {v4, v6, v5}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-nez v1, :cond_5

    return-void

    :cond_5
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v2, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/i1;->l:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->l:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private y0()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/i0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->dimens_16:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private z0()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cloud/hisavana/sdk/R$dimen;->ad_disclaimer_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/f0;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/f0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->updateHeightWith(Ljava/lang/String;I)V

    new-instance v0, Lcom/cloud/hisavana/sdk/a4;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/a4;-><init>(Lcom/cloud/hisavana/sdk/i1;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setListener(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView$b;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->x:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public B0()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "TranSplash"

    const-string v2, "splash ad close"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/i1;->S()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/i1;->D0()V

    return-void
.end method

.method public C0()V
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/i1;->r:J

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/i1;->X(J)V

    return-void
.end method

.method public D0()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "closeSplashPage"

    const-string v2, "TranSplash"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    check-cast v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    check-cast v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "closeSplashPage activity is finishing or destroyed"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/r4;->b()Lcom/cloud/hisavana/sdk/r4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/r4;->d(Ljava/lang/String;)V

    return-void
.end method

.method public H()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    return-object v0
.end method

.method public I()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->m:Lcom/cloud/hisavana/sdk/u2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/u2;->z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method public J()Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    return-object v0
.end method

.method public K()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public L()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/i1;->p:Z

    return v0
.end method

.method public O()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->m()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method public P()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method Q()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->f()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/G;->k(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->s()V

    :cond_0
    return-void
.end method

.method public R()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->m:Lcom/cloud/hisavana/sdk/u2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/u2;->D(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method public S()V
    .locals 6

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/i1;->r:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cloud/hisavana/sdk/i1;->s:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/i1;->r:J

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCloseMsg remainForceCloseAdTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/i1;->r:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranSplash"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/i1;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/i1;->r:J

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->q:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public T()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object v0
.end method

.method public c0(Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->z:Landroid/widget/PopupWindow;

    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/G;->d(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;)V

    :cond_0
    return-void
.end method

.method public f0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->u(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public g0(Ljava/lang/Float;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->D:Ljava/lang/Float;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->D:Ljava/lang/Float;

    :goto_1
    return-void
.end method

.method public j0(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->Y(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    const-string v0, "ssp_splash"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/util/b;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result p1

    iput p1, p0, Lcom/cloud/hisavana/sdk/i1;->A:I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->m:Lcom/cloud/hisavana/sdk/u2;

    if-nez p1, :cond_1

    new-instance p1, Lcom/cloud/hisavana/sdk/u2;

    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/u2;-><init>(Lcom/cloud/hisavana/sdk/i1;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->m:Lcom/cloud/hisavana/sdk/u2;

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->m:Lcom/cloud/hisavana/sdk/u2;

    new-instance v1, Lcom/cloud/hisavana/sdk/i1$e;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {v1, p0, v2}, Lcom/cloud/hisavana/sdk/i1$e;-><init>(Lcom/cloud/hisavana/sdk/i1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/u2;->k(Lcom/cloud/hisavana/sdk/q4;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->m:Lcom/cloud/hisavana/sdk/u2;

    iget v1, p0, Lcom/cloud/hisavana/sdk/i1;->A:I

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/u2;->c(I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->z()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->m:Lcom/cloud/hisavana/sdk/u2;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/u2;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const-wide/16 v0, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/i1;->X(J)V

    return-void

    :cond_3
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v1, "Ad is not ready"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/i1;->D0()V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_4
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v1, "contex is null or mAdBean is null"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/i1;->D0()V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public k0(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->l:Landroid/view/View;

    return-void
.end method

.method public l0(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    return-void
.end method

.method public m()V
    .locals 2

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/G;->m()V

    :try_start_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/b4;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/b4;-><init>(Lcom/cloud/hisavana/sdk/i1;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method m0(Z)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "TranSplash"

    const-string v2, "fillSplash"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    const-string v1, "ssp_splash"

    if-nez v0, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "bg view is null"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/i1;->x0()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->m:Lcom/cloud/hisavana/sdk/u2;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/u2;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_SPLASH_VIEW_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "Splash view is null"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/i1;->a0(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/i1;->Z(Landroid/view/View;)V

    :goto_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/i1;->z0()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/i1;->A0()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    new-instance v1, Lcom/cloud/hisavana/sdk/i1$b;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/i1$b;-><init>(Lcom/cloud/hisavana/sdk/i1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->x:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->v:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->w:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->j:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->v()Lcom/cloud/hisavana/sdk/J0;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i1;->k:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2, p1}, Lcom/cloud/hisavana/sdk/m0;->a(Lcom/cloud/hisavana/sdk/J0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public o0(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->Y(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/r4;->b()Lcom/cloud/hisavana/sdk/r4;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/cloud/hisavana/sdk/r4;->c(Ljava/lang/String;Lcom/cloud/hisavana/sdk/i1;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i1;->n:Landroid/content/Context;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1;->i:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/i1;->B:Z

    invoke-static {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaSplashActivity;->T(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/i1;->D0()V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_3
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "ssp_splash"

    const-string v1, "contex is null or mAdBean is null"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/i1;->D0()V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public p0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/i1;->B:Z

    return-void
.end method
