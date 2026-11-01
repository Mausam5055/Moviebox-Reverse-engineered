.class public Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;
.super Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Ljava/lang/Runnable;

.field private C:Ljava/lang/Runnable;

.field private D:Landroid/widget/RelativeLayout;

.field private E:Lcom/mbridge/msdk/video/signal/factory/b;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Landroid/view/animation/AlphaAnimation;

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:Landroid/graphics/Bitmap;

.field private Q:Landroid/view/View;

.field private R:Lcom/mbridge/msdk/widget/FeedBackButton;

.field private S:Ljava/lang/String;

.field private T:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

.field private U:Lcom/mbridge/msdk/shake/MBShakeView;

.field private V:Lcom/mbridge/msdk/shake/b;

.field private W:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

.field private a0:Z

.field private b0:I

.field private c0:Ljava/lang/String;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->F:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->G:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->I:Z

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->J:I

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->F:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->G:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->I:Z

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->J:I

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZIZII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZIZII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->F:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->G:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->I:Z

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->J:I

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b0:I

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->P:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->c(I)V

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x6

    const/4 v8, 0x0

    :try_start_0
    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_native_ec_layout"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o:Landroid/widget/RelativeLayout;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_iv_adbanner"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q:Landroid/widget/ImageView;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_iv_icon"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->r:Landroid/widget/ImageView;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_iv_flag"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->s:Landroid/widget/ImageView;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_tv_flag"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->t:Landroid/widget/TextView;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_iv_logo"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->u:Landroid/widget/ImageView;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_iv_link"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->v:Landroid/widget/ImageView;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_tv_apptitle"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->w:Landroid/widget/TextView;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_sv_starlevel"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Landroid/widget/LinearLayout;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_sv_heat_count_level"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->A:Landroid/widget/LinearLayout;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_iv_close"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->Q:Landroid/view/View;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_tv_cta"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;->ctaView:Landroid/widget/TextView;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_native_endcard_feed_btn"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/mbridge/msdk/widget/FeedBackButton;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->R:Lcom/mbridge/msdk/widget/FeedBackButton;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_native_ec_controller"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->D:Landroid/widget/RelativeLayout;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_iv_adbanner_bg"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->p:Landroid/widget/ImageView;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_animation_click_view"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->W:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_tv_appdesc"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->x:Landroid/widget/TextView;

    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->h:Z

    if-eqz v9, :cond_2

    iget-object v0, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q:Landroid/widget/ImageView;

    const/16 v9, 0xa

    if-eqz v0, :cond_0

    instance-of v10, v0, Lcom/mbridge/msdk/videocommon/view/RoundImageView;

    if-eqz v10, :cond_0

    check-cast v0, Lcom/mbridge/msdk/videocommon/view/RoundImageView;

    invoke-virtual {v0, v9}, Lcom/mbridge/msdk/videocommon/view/RoundImageView;->setBorderRadius(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    instance-of v10, v0, Lcom/mbridge/msdk/videocommon/view/RoundImageView;

    if-eqz v10, :cond_1

    check-cast v0, Lcom/mbridge/msdk/videocommon/view/RoundImageView;

    invoke-virtual {v0, v9}, Lcom/mbridge/msdk/videocommon/view/RoundImageView;->setBorderRadius(I)V

    :cond_1
    iget-object v0, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->r:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->w:Landroid/widget/TextView;

    iget-object v11, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->Q:Landroid/view/View;

    iget-object v13, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;->ctaView:Landroid/widget/TextView;

    new-array v7, v7, [Landroid/view/View;

    aput-object v0, v7, v8

    aput-object v9, v7, v6

    aput-object v10, v7, v5

    aput-object v11, v7, v4

    aput-object v12, v7, v3

    aput-object v13, v7, v2

    invoke-virtual {v1, v7}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->isNotNULL([Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_2
    iget-boolean v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v10, "mbridge_tv_number"

    invoke-virtual {v1, v9, v10}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->y:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->r:Landroid/widget/ImageView;

    iget-object v11, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->w:Landroid/widget/TextView;

    iget-object v12, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->x:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Landroid/widget/LinearLayout;

    iget-object v14, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->Q:Landroid/view/View;

    iget-object v15, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;->ctaView:Landroid/widget/TextView;

    const/16 v7, 0x8

    new-array v7, v7, [Landroid/view/View;

    aput-object v9, v7, v8

    aput-object v10, v7, v6

    aput-object v11, v7, v5

    aput-object v12, v7, v4

    aput-object v0, v7, v3

    aput-object v13, v7, v2

    const/4 v0, 0x6

    aput-object v14, v7, v0

    const/4 v0, 0x7

    aput-object v15, v7, v0

    invoke-virtual {v1, v7}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->isNotNULL([Landroid/view/View;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MBridgeBaseView"

    invoke-static {v3, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v8
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->G:Z

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->G:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->Q:Landroid/view/View;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->setLayout()V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->E:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Landroid/view/View;)Z

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->d()V

    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o()V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->setBannerBackGroundBlurBimap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private b(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->n:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->n:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->m:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->m:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    return p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->P:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private c(I)V
    .locals 9

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v8, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "end_card_click"

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->j:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    const-string p1, "camp_position"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickTempSource(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 v1, 0x69

    invoke-interface {p1, v1, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->I:Z

    return p1
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->F:Z

    return p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->D:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private e()V
    .locals 7

    const-string v0, "MBridgeBaseView"

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const-string v2, "bait_click"

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->W:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->W:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    const/high16 v4, 0x50000000

    invoke-virtual {v1, v4, v2}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->init(II)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEcTemplateId()J

    move-result-wide v1

    const-wide/16 v5, 0x516

    cmp-long v1, v1, v5

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, -0x10000

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->W:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->W:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->startAnimation()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->W:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    new-instance v2, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$f;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$f;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->L:I

    return p0
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x2

    const-string v2, "_"

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->S:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->S:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v3, v4}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/feedback/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->S:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$c;

    invoke-direct {v4, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$c;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, v3, v4}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->S:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->R:Lcom/mbridge/msdk/widget/FeedBackButton;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->S:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->R:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/widget/FeedBackButton;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->R:Lcom/mbridge/msdk/widget/FeedBackButton;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->N:I

    return p0
.end method

.method private g()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :goto_0
    const-string v1, "shake_show"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shake_strength"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shake_time"

    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->U:Lcom/mbridge/msdk/shake/MBShakeView;

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->W:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    if-eqz v1, :cond_3

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    new-instance v1, Lcom/mbridge/msdk/shake/MBShakeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mbridge/msdk/shake/MBShakeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->U:Lcom/mbridge/msdk/shake/MBShakeView;

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getAdCall()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/mbridge/msdk/shake/MBShakeView;->initView(Ljava/lang/String;Z)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->isLandscape()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    const-string v4, "mbridge_iv_logo"

    invoke-virtual {p0, v3, v4}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->U:Lcom/mbridge/msdk/shake/MBShakeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->U:Lcom/mbridge/msdk/shake/MBShakeView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->U:Lcom/mbridge/msdk/shake/MBShakeView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;->ctaView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->U:Lcom/mbridge/msdk/shake/MBShakeView;

    new-instance v3, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$d;

    invoke-direct {v3, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$d;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0xa

    if-nez v1, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_8

    goto :goto_2

    :cond_8
    move v3, v1

    :cond_9
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x1388

    if-nez v1, :cond_b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_3

    :cond_a
    mul-int/lit16 v2, v0, 0x3e8

    :cond_b
    :goto_3
    new-instance v0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$e;

    invoke-direct {v0, p0, v3, v2}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$e;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;II)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->V:Lcom/mbridge/msdk/shake/b;

    invoke-static {}, Lcom/mbridge/msdk/shake/a;->a()Lcom/mbridge/msdk/shake/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->V:Lcom/mbridge/msdk/shake/b;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/shake/a;->a(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->M:I

    return p0
.end method

.method private h()V
    .locals 8

    new-instance v0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$k;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$k;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    new-instance v0, Lcom/mbridge/msdk/video/module/listener/impl/j;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->r:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/impl/j;-><init>(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;->ctaView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getAdCall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getAppDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getNumberRating()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getRating()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    :cond_3
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Landroid/widget/LinearLayout;

    instance-of v3, v2, Lcom/mbridge/msdk/videocommon/view/StarLevelView;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/mbridge/msdk/videocommon/view/StarLevelView;

    invoke-virtual {v2, v0, v1}, Lcom/mbridge/msdk/videocommon/view/StarLevelView;->initScore(D)V

    :cond_4
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Landroid/widget/LinearLayout;

    instance-of v3, v2, Lcom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getNumberRating()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->setRatingAndUser(DI)V

    :cond_5
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Landroid/widget/LinearLayout;

    instance-of v3, v2, Lcom/mbridge/msdk/dycreator/baseview/MBStarLevelLayoutView;

    if-eqz v3, :cond_6

    check-cast v2, Lcom/mbridge/msdk/dycreator/baseview/MBStarLevelLayoutView;

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/dycreator/baseview/MBStarLevelLayoutView;->setRating(I)V

    :cond_6
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->A:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    instance-of v1, v0, Lcom/mbridge/msdk/dycreator/baseview/MBHeatLevelLayoutView;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/MBHeatLevelLayoutView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getNumberRating()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/baseview/MBHeatLevelLayoutView;->setHeatCount(I)V

    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alecfc=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->F:Z

    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "drawable"

    if-nez v1, :cond_9

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->s:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mbridge_reward_flag_cn"

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "\u5e7f\u544a"

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->c0:Ljava/lang/String;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->s:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mbridge_reward_flag_en"

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "AD"

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->c0:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b0:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->s:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->c0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->v:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    new-instance v7, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$l;

    invoke-direct {v7, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$l;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    const/4 v2, 0x2

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/tools/t0;->a(ILandroid/widget/ImageView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;ZLcom/mbridge/msdk/foundation/feedback/a;)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->G:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->Q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->O:I

    return p0
.end method

.method private i()V
    .locals 5

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cn_"

    goto :goto_0

    :cond_0
    const-string v0, "en_"

    :goto_0
    new-instance v1, Lcom/mbridge/msdk/video/dynview/wrapper/c;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/wrapper/c;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v4, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->i:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/mbridge/msdk/video/dynview/wrapper/c;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILjava/lang/String;)Lcom/mbridge/msdk/video/dynview/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/dynview/c;->o()I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b0:I

    invoke-static {}, Lcom/mbridge/msdk/video/dynview/b;->a()Lcom/mbridge/msdk/video/dynview/b;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$j;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$j;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/video/dynview/b;->a(Lcom/mbridge/msdk/video/dynview/c;Lcom/mbridge/msdk/video/dynview/listener/h;)V

    return-void
.end method

.method static synthetic j(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->K:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method private j()V
    .locals 2

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->k()I

    move-result v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->l()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setECTemplateRenderSucc(Z)V

    :cond_0
    return-void
.end method

.method private k()I
    .locals 6

    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->k:I

    const-string v1, "mbridge_reward_endcard_native_land"

    const-string v2, "mbridge_reward_endcard_native_half_landscape"

    const-string v3, "mbridge_reward_endcard_native_hor"

    const-string v4, "mbridge_reward_endcard_native_half_portrait"

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->j:Z

    if-eqz v0, :cond_0

    move-object v3, v4

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->j:Z

    if-eqz v0, :cond_5

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    iget-boolean v5, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->j:Z

    if-eqz v5, :cond_4

    move-object v3, v4

    goto :goto_1

    :cond_3
    const-string v3, ""

    :cond_4
    :goto_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->j:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findLayout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->f()V

    return-void
.end method

.method private l()V
    .locals 3

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->d()V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 v1, 0x68

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->K:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method static synthetic l(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    return p0
.end method

.method private m()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "alac"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAutoShowStoreMiniCard()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$g;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$g;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic m(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Z

    return p0
.end method

.method private n()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAutoShowStoreMiniCard()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getShowStoreMiniCardDelayTime()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    const-wide/16 v0, 0x1

    :cond_3
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->C:Ljava/lang/Runnable;

    if-nez v2, :cond_4

    new-instance v2, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$h;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$h;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->C:Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->C:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic n(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->l()V

    return-void
.end method

.method private o()V
    .locals 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->D:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$b;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->j()V

    return-void
.end method

.method static synthetic p(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic q(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->p:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic r(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->I:Z

    return p0
.end method

.method private setBannerBackGroundBlurBimap(Landroid/graphics/Bitmap;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public blurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    invoke-static {v1, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public canBackPress()Z
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->Q:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearMoreOfferBitmap()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->T:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->T:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->T:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected d()V
    .locals 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$n;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$n;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->Q:Landroid/view/View;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$o;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$o;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;->ctaView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$p;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$p;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->r:Landroid/widget/ImageView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$q;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$q;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q:Landroid/widget/ImageView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$a;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isDyXmlSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a0:Z

    return v0
.end method

.method public notifyShowListener()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 v1, 0x6e

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->B:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$i;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$i;-><init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->B:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->B:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->J:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Z

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->m()V

    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->e()V

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->g()V

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->n()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->B:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->C:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->V:Lcom/mbridge/msdk/shake/b;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/shake/a;->a()Lcom/mbridge/msdk/shake/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->V:Lcom/mbridge/msdk/shake/b;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/shake/a;->b(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->V:Lcom/mbridge/msdk/shake/b;

    :cond_2
    return-void
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->D:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->d:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->m:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->n:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->n:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->m:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->E:Lcom/mbridge/msdk/video/signal/factory/b;

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->K:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->B:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setCloseBtnDelay(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->J:I

    return-void
.end method

.method public setLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->i()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->j()V

    :goto_0
    return-void
.end method

.method public setMoreOfferCampaignUnit(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->T:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->T:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->U:Lcom/mbridge/msdk/shake/MBShakeView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOTCH NativeEndCard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    const-string v1, "%1s-%2s-%3s-%4s"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->L:I

    iput p2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->M:I

    iput p3, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->N:I

    iput p4, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->O:I

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o()V

    return-void
.end method

.method public setOnPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Z

    return-void
.end method

.method public setOnResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Z

    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->S:Ljava/lang/String;

    return-void
.end method
