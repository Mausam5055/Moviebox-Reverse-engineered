.class public abstract Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
.implements Lcom/mbridge/msdk/video/signal/communication/IRewardCommunication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$y;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$x;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$u;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$v;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$t;
    }
.end annotation


# static fields
.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_1_LANDING_PAGE:I = 0x1

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_2_NORMAL_FULLSCREEN:I = 0x2

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_3_NORMAL_FULLSCREEN_ENDCARD:I = 0x3

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_4_NORMAL_FULLSCREEN_LP:I = 0x4

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_6_SMALLVIDEO:I = 0x6

.field public static final TAG:Ljava/lang/String; = "BaseMBMediaView"

.field public static final WHAT_VIEW_FULL_SCREEN:I = 0x2

.field public static final WHAT_VIEW_SMALL_SCREEN:I = 0x1

.field private static n0:I = 0x2

.field private static o0:I = 0x1


# instance fields
.field private A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

.field private B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

.field private C:Landroid/widget/ProgressBar;

.field private D:Landroid/view/View;

.field private E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

.field private F:Landroid/widget/RelativeLayout;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/ProgressBar;

.field private J:Landroid/widget/RelativeLayout;

.field private K:I

.field private L:Landroid/os/Handler;

.field private M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private N:I

.field private O:I

.field private P:D

.field private Q:D

.field private R:I

.field private S:I

.field private T:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;

.field private U:Landroid/hardware/SensorManager;

.field private V:Landroid/hardware/Sensor;

.field private W:Lcom/mbridge/msdk/videocommon/download/a;

.field private a:Z

.field private a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

.field private b:Z

.field private b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

.field private c:Z

.field private c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

.field private d:Z

.field private d0:I

.field private e:Z

.field private e0:Z

.field private f:Z

.field private f0:Z

.field private g:Z

.field private g0:Landroid/widget/RelativeLayout;

.field private h:Z

.field private h0:Landroid/widget/ImageView;

.field private volatile i:Z

.field private i0:I

.field private volatile j:Z

.field private j0:Z

.field private k:Z

.field private k0:Landroid/content/Context;

.field private l:Z

.field private l0:Z

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m0:Ljava/lang/Runnable;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field private r:Lcom/iab/omid/library/mmadbridge/adsession/a;

.field private s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private t:I

.field protected u:Z

.field private v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    iput v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->t:I

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->u:Z

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e0:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j0:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l0:Z

    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$h;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$h;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m0:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    iput v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->t:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->u:Z

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l0:Z

    new-instance p2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$h;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$h;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m0:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Landroid/content/Context;)V

    return-void
.end method

.method private A()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic A(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->u()V

    return-void
.end method

.method private B()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->U:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->V:Landroid/hardware/Sensor;

    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$j;)V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->T:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->U:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->V:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic B(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o()V

    return-void
.end method

.method private C()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic C(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->x()V

    return-void
.end method

.method static synthetic D(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    return-object p0
.end method

.method private D()V
    .locals 7

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReportClick(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->d()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->d()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbnative/report/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/mbnative/listener/a;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->l:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->l:Z

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_video=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "&is_video=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "?is_video=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    sget v7, Lcom/mbridge/msdk/click/retry/a;->m:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V

    :cond_2
    return-void
.end method

.method static synthetic E(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P()V

    return-void
.end method

.method private F()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->c()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->e:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f()V

    :cond_0
    return-void
.end method

.method static synthetic F(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R()V

    return-void
.end method

.method private G()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->m()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->f:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->m()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic G(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->U()V

    return-void
.end method

.method private H()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->g:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->n()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->g:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->n()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic H(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G()V

    return-void
.end method

.method private I()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->i()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->d:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->i()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic I(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L()V

    return-void
.end method

.method private J()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->p()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->i:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->p()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic J(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->K()V

    return-void
.end method

.method private K()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->j:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->s()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->j:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->s()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic K(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->H()V

    return-void
.end method

.method private L()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->t()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->k:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->t()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic L(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->J()V

    return-void
.end method

.method static synthetic M(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i0:I

    return p0
.end method

.method private M()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p:Z

    return-void
.end method

.method private N()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Z)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->changeNoticeURL()V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {v1, v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->d(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-static {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/a;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->g()V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "omsdk"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->V()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i()V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->U()V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->c:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R()V

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMBMediaView"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method static synthetic N(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A()V

    return-void
.end method

.method private O()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d0:I

    const/high16 v2, 0x41000000    # 8.0f

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->updateViewManger(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method static synthetic O(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0()V

    return-void
.end method

.method static synthetic P(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    return-object p0
.end method

.method private P()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->updateViewManger(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private Q()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$r;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$r;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$a;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$b;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$b;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->H:Landroid/widget/TextView;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$c;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$c;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic Q(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d:Z

    return p0
.end method

.method static synthetic R(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    return-object p0
.end method

.method private R()V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->X()V

    return-void
.end method

.method private S()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->s()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpReportType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    if-nez v1, :cond_3

    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_3
    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    :goto_2
    const-wide/16 v5, 0x12c

    add-long/2addr v3, v5

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b()V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getCampaign()Lcom/mbridge/msdk/out/Campaign;

    move-result-object v0

    if-eq v1, v0, :cond_7

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->release()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method static synthetic S(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l()V

    return-void
.end method

.method private T()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private U()V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Z()V

    return-void
.end method

.method private V()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private W()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->I:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private X()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private Y()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->C:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private Z()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R:I

    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    return-object p1
.end method

.method private a(Z)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->c:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    move-object v1, p1

    :cond_1
    new-instance p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$y;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$y;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j()V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getReadyRate()I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-static {v1, v0}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a:Z

    if-eqz p1, :cond_6

    new-instance p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$x;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$x;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/videocommon/listener/a;)V

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    :goto_2
    return-object v1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "BaseMBMediaView"

    const-string v0, "code to string is error"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->parseCamplistToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "campaignList"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "unit_id"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sdk_info"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(II)V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->h:Z

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->o()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, p2

    if-eqz v1, :cond_3

    const/4 p2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-gt v5, p1, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    add-int/2addr p2, v2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    iput-boolean v2, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    const-string p1, "BaseMBMediaView"

    const-string p2, "reportPlayPercentageData error"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h()V

    return-void
.end method

.method private a(Landroid/view/View;FF)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_9

    iget-wide v4, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q:D

    cmpg-double v6, v4, v2

    if-gtz v6, :cond_1

    goto/16 :goto_4

    :cond_1
    div-double/2addr v0, v4

    const/4 v4, 0x0

    cmpl-float v5, p2, v4

    if-lez v5, :cond_2

    cmpl-float v4, p3, v4

    if-lez v4, :cond_2

    div-float v2, p2, p3

    float-to-double v2, v2

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/Double;)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/Double;)D

    move-result-wide v2

    iget-object v6, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_3
    const/4 v8, 0x0

    :goto_0
    cmpl-double v9, v4, v2

    const/16 v10, 0xd

    const/4 v11, -0x1

    if-lez v9, :cond_5

    float-to-double p2, p2

    iget-wide v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q:D

    mul-double/2addr p2, v0

    iget-wide v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P:D

    div-double/2addr p2, v0

    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    double-to-int v11, p2

    :goto_1
    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    double-to-int p2, p2

    iput p2, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    :cond_5
    cmpg-double p2, v4, v2

    if-gez p2, :cond_7

    float-to-double p2, p3

    mul-double/2addr p2, v0

    if-eqz v8, :cond_6

    move v0, v11

    goto :goto_2

    :cond_6
    double-to-int v0, p2

    :goto_2
    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    double-to-int p2, p2

    iput p2, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    iput p2, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    :cond_7
    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput p2, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    iput p2, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3
    iget-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_9
    :goto_4
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->setPlayViewParamsDefault(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Landroid/util/DisplayMetrics;)Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpReportType()I

    move-result v1

    :goto_0
    invoke-static {p1, v1}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Landroid/view/View;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e0:Z

    return p1
.end method

.method private a0()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S:I

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k0:Landroid/content/Context;

    return-object p0
.end method

.method private b()V
    .locals 10

    const-string v0, "BaseMBMediaView"

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v1, :cond_0

    const-string v1, "campaign is null addPlayerView return"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Z()V

    new-instance v1, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    :goto_1
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setAllowLoopPlay(Z)V

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getPlayUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y()Z

    move-result v6

    iget-object v8, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v9

    move-object v7, p0

    invoke-virtual/range {v3 .. v9}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->initPlayerViewData(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    new-instance v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$u;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$u;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setOnMediaViewPlayerViewListener(Lcom/mbridge/msdk/nativex/listener/a;)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->T()V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->registerView(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    :cond_3
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-static {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/a;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-static {v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->g(Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->g()V

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/mmadbridge/adsession/media/Position;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->b(ZLcom/iab/omid/library/mmadbridge/adsession/media/Position;)Lcom/iab/omid/library/mmadbridge/adsession/media/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    invoke-virtual {v2, v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->d(Lcom/iab/omid/library/mmadbridge/adsession/media/b;)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "omsdk"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private b(I)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->b:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->a:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->t()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w()V

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k0:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private b(Z)V
    .locals 9

    const-string p1, "BaseMBMediaView"

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    new-instance v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$e;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$e;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setBackListener(Lcom/mbridge/msdk/nativex/listener/b;)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    new-instance v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$f;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$f;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mbridge/msdk/mbsignalcommon/windvane/c;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    const-string v0, ".zip"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "md5filename"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;->getHtmlContentFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "load html..."

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iput-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/mbridge/msdk/foundation/same/webview/a;

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/foundation/same/webview/a;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/webview/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$v;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$j;)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setFilter(Lcom/mbridge/msdk/mbsignalcommon/base/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    return p1
.end method

.method private b0()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->U:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->T:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object p0
.end method

.method private c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onEnterFullscreen()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onEnterFullscreen()V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;->FULLSCREEN:Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->k(Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/n;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/n;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result v4

    new-instance v1, Lcom/mbridge/msdk/foundation/entity/m;

    const-string v3, "2000021"

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result v4

    new-instance v1, Lcom/mbridge/msdk/foundation/entity/m;

    const-string v3, "2000021"

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->v(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/entity/m;->u(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/db/n;->a(Lcom/mbridge/msdk/foundation/entity/m;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p:Z

    return p1
.end method

.method private c0()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/videocommon/listener/a;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/videocommon/view/MyImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    return-object p0
.end method

.method private d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onExitFullscreen()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onExitFullscreen()V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;->NORMAL:Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->k(Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    return p1
.end method

.method static synthetic e(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    return-object p0
.end method

.method private e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onVideoAdClicked(Lcom/mbridge/msdk/out/Campaign;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onVideoAdClicked(Lcom/mbridge/msdk/out/Campaign;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private f()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->c()[Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n0:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    sget v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o0:I

    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&orienation="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Y()V

    return-void
.end method

.method private g()V
    .locals 12

    const-string v0, "mbridge_full_player_parent"

    const-string v1, "mbridge_full_rl_playcontainer"

    const-string v2, "id"

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x67

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    if-nez v6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    if-nez v7, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-nez v1, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "mbridge_full_pb_loading"

    invoke-static {v8, v9, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "mbridge_full_rl_install"

    invoke-static {v9, v10, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "mbridge_full_ll_pro_dur"

    invoke-static {v10, v11, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_3
    move-object v10, v9

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_8

    if-eqz v6, :cond_6

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v2, v9}, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setBackListener(Lcom/mbridge/msdk/nativex/listener/b;)V

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v2, v9}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    iput-object v9, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    iput-object v9, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    :goto_4
    if-eqz v6, :cond_b

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_c
    :goto_5
    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_6

    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    :goto_6
    if-eqz v6, :cond_10

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7

    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12
    :goto_7
    if-eqz v5, :cond_13

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_8

    :cond_13
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    if-eqz v0, :cond_15

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_15
    :goto_8
    if-eqz v3, :cond_17

    if-eqz v5, :cond_16

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_9

    :cond_16
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    :goto_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    if-eqz v10, :cond_19

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v10, :cond_18

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_18
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->K:I

    invoke-virtual {v10, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    :cond_19
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d()V

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setExitFullScreen()V

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    :goto_a
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->gonePauseView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_c
    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W()V

    return-void
.end method

.method private getAllScreenHeight()F
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->h(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private getAllScreenWidth()F
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->i(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private getCDRate()I
    .locals 1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getEndCardWebview()Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPlayUrl()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/download/a;->q()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/download/a;->e()J

    move-result-wide v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    return-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMBMediaView"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private getReadyRate()I
    .locals 1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->C()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    return v0
.end method

.method private getUnitId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getUnitSetting()Lcom/mbridge/msdk/setting/l;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-static {v1}, Lcom/mbridge/msdk/setting/l;->i(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/mbridge/msdk/setting/l;->i(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-object v0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMBMediaView"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private h()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e()V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D()V

    new-instance v0, Lcom/mbridge/msdk/click/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n()V

    return-void
.end method

.method private i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m()V

    return-void
.end method

.method private j()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v1, "<!DOCTYPE html><html lang=\"en\"><head>  <meta charset=\"UTF-8\">  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">  <title>Document</title>  <style>  *{    margin: 0;    padding: 0;  }  html, body{    width: 100%;    height: 100%;  }  body{    background-image: url(\'gifUrl\');    background-position: center;    background-size: contain;    background-repeat: no-repeat;  }  </style></head><body></body></html>"

    const-string v2, "gifUrl"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setInterceptTouch(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$m;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$m;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->I()V

    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method private k()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullPlayContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullPlayerParent()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->J:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullClose()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullTvInstall()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullPb()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->I:Landroid/widget/ProgressBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic l(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getEndCardWebview()Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object p0

    return-object p0
.end method

.method private l()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->onClickPlayerView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic m(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private m()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->I:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private n()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->C:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic n(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e0:Z

    return p0
.end method

.method private o()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S:I

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R:I

    if-eqz v2, :cond_0

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic o(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E()V

    return-void
.end method

.method static synthetic p(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    return-object p0
.end method

.method private p()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->i(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->h(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private q()Landroid/view/View;
    .locals 5

    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_nativex_close"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    new-instance v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$q;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$q;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic q(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    return-object p0
.end method

.method private r()V
    .locals 3

    const-string v0, "BaseMBMediaView"

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "fullscreen windowfocuse true isPlaying do nothing return"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getIsActiviePause()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->pause()V

    goto :goto_1

    :cond_3
    const-string v1, "fullscreen playerview is null return"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private s()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p()V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenWidth()F

    move-result v1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenHeight()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/view/View;FF)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;Z)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P()V

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$d;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$d;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic s(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    return p0
.end method

.method private setIsFrontDesk(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setIsFrontDesk(Z)V

    :cond_0
    return-void
.end method

.method private setPlayViewParamsDefault(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    if-eqz v2, :cond_1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenWidth()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private t()V
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$j;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$j;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    return-void
.end method

.method static synthetic t(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g()V

    return-void
.end method

.method static synthetic u(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->H:Landroid/widget/TextView;

    return-object p0
.end method

.method private u()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->h(Landroid/content/Context;)I

    move-result v1

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    const/16 v3, 0xd

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S()V

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/view/View;FF)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {p0, v2, v0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/view/View;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private v()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->m(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->m(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v1, v5

    if-lez v0, :cond_2

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2

    iput-wide v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P:D

    iput-wide v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic v(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j0:Z

    return p0
.end method

.method static synthetic w(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)F
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenWidth()F

    move-result p0

    return p0
.end method

.method private w()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_nativex_mbmediaview"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "BaseMBMediaView"

    const-string v1, "can not find mediaview resource"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_rl_mediaview_root"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_ll_playerview_container"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_my_big_img"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/videocommon/view/MyImageView;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_native_pb"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->C:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_nativex_webview_layout"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_nativex_webview_layout_webview"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->x:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private x()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->c:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    const/16 v1, 0xd

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S:I

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R:I

    if-eqz v3, :cond_0

    mul-int/2addr v0, v2

    div-int/2addr v0, v3

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit16 v2, v2, 0x273

    div-int/lit16 v2, v2, 0x4b0

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic x(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    return p0
.end method

.method private y()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->L()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->n(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    return v0

    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v1

    const-string v3, "s_a_w_n_c"

    invoke-virtual {v1, v3, v2}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    return v2

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->n(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMBMediaView"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v0
.end method

.method static synthetic y(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    return p0
.end method

.method private z()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic z(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    const-string v0, "BaseMBMediaView"

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->handleViewStyleResult(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getFullScreenViewByStyle(Landroid/content/Context;Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iget-object v3, v2, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->style:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    iget-object v4, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v3, v4, v2}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p:Z

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setEnterFullScreen()V

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setIsActivePause(Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_7

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c()V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_6

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-ne v8, v9, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iput v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->K:I

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x64

    invoke-virtual {v6, v8}, Landroid/view/View;->setId(I)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x65

    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->J:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v8, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->J:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPrivacyButtonTemplateVisibility()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_7

    :try_start_1
    new-instance v7, Lcom/mbridge/msdk/widget/MBAdChoice;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mbridge/msdk/widget/MBAdChoice;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/widget/MBAdChoice;->setCampaign(Lcom/mbridge/msdk/out/Campaign;)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v9, v10}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v9, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_3
    iget-boolean v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->u:Z

    if-eqz v7, :cond_8

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/widget/FrameLayout;)V

    :cond_8
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$i;->a:[I

    iget-object v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iget-object v7, v7, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->style:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_9

    const/high16 v5, -0x1000000

    goto :goto_4

    :cond_9
    move v5, v6

    :goto_4
    iget v8, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->t:I

    if-eqz v8, :cond_a

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5

    :cond_a
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_5
    iget-object v5, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    const/16 v8, 0x67

    invoke-virtual {v5, v8}, Landroid/view/View;->setId(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-array v6, v7, [I

    invoke-virtual {v3, v6}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v6, v1

    iput v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d0:I

    if-nez v1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    invoke-virtual {v5, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_b
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q()V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    new-instance v3, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;

    invoke-direct {v3, p0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v1, v3}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setMediaViewPlayListener(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;)V

    :cond_c
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Z)V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F()V

    goto :goto_8

    :cond_d
    :goto_6
    const-string v1, "rootView is null"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onVideoComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onVideoStart()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onVideoStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public cai(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    const-string v0, "cai"

    const-string v1, "exception: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cai:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseMBMediaView"

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, "params is null"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "packageName"

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "packageName is empty"

    invoke-static {p1, v2}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_1
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "code"

    sget v6, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->b:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "result"

    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "data"

    invoke-virtual {v4, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_1
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    return-void
.end method

.method public canShowVideo()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Z)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    move-result-object v1

    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public changeNoticeURL()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "is_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    const-string v3, "is_video=1"

    const-string v4, "is_video=2"

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_2

    const-string v1, "1"

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_3

    const-string v1, "2"

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "&is_video="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v0, "?is_video="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public destory()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public exitFullScreen()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g()V

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAddNVT2ToNoticeURL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nv_t2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&nv_t2="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string p2, "BaseMBMediaView"

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAL_16.9.71,3.0.1"

    invoke-direct {p0, v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEndScreenInfo-mCampaign.name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public getFullScreenViewByStyle(Landroid/content/Context;Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$i;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/mbridge/msdk/nativex/view/mbfullview/MBridgeFullView;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/nativex/view/mbfullview/MBridgeFullView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->setStytle(Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;)V

    :cond_2
    return-object p1
.end method

.method public getMediaContentAspectRatio()F
    .locals 5

    const-string v0, "BaseMBMediaView"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImageSize()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v2, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource ratio is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return v1
.end method

.method public handleViewStyleResult(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;->a:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;->b:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/content/Context;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public hideEndCardWebViewCloseBtn()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k0:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object p1, p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public ismCurIsFullScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    return v0
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i0:I

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N()V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onBufferingEnd()V
    .locals 2

    const-string v0, "omsdk"

    const-string v1, "base media end"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->b()V

    :cond_0
    return-void
.end method

.method public onBufferingStart(Ljava/lang/String;)V
    .locals 1

    const-string p1, "omsdk"

    const-string v0, "base media start"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->c()V

    :cond_0
    return-void
.end method

.method public onBufferingTimeOut(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j0:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i0:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i0:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    iget p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i0:I

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->unregisterView()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->c()V

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->C()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    :cond_1
    iget p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenWidth()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object p2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne p1, p2, :cond_6

    iget-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    if-nez p2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, -0x2

    if-eq p2, v0, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_5

    :cond_4
    iget p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    int-to-double p1, p1

    iget-wide v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q:D

    mul-double/2addr p1, v0

    iget-wide v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P:D

    div-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    :cond_5
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->u()V

    goto :goto_2

    :cond_6
    sget-object p2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne p1, p2, :cond_7

    iget-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    if-nez p2, :cond_7

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o()V

    goto :goto_2

    :cond_7
    sget-object p2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->c:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne p1, p2, :cond_8

    iget-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onPlayCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->d()V

    :cond_0
    return-void
.end method

.method public onPlayError(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "error"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$o;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$o;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/d;->a()Lcom/mbridge/msdk/foundation/controller/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/d;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onPlayProgress(II)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(I)V

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(II)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    const/16 v1, 0x64

    if-eqz v0, :cond_2

    mul-int/lit8 v2, p1, 0x64

    div-int/2addr v2, p2

    add-int/lit8 v3, p1, 0x1

    mul-int/2addr v3, v1

    div-int/2addr v3, p2

    const/16 v4, 0x19

    if-gt v2, v4, :cond_0

    if-ge v4, v3, :cond_0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->h()V

    goto :goto_0

    :cond_0
    const/16 v4, 0x32

    if-gt v2, v4, :cond_1

    if-ge v4, v3, :cond_1

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->i()V

    goto :goto_0

    :cond_1
    const/16 v4, 0x4b

    if-gt v2, v4, :cond_2

    if-ge v4, v3, :cond_2

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->o()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getReadyRate()I

    move-result v0

    if-eq v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l0:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getCDRate()I

    move-result v0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getReadyRate()I

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    if-le v0, v2, :cond_4

    div-int/lit8 v0, v2, 0x2

    :cond_4
    if-ltz v0, :cond_7

    mul-int/2addr p2, v0

    div-int/2addr p2, v1

    if-lt p1, p2, :cond_7

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x11f

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/download/a;->v()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l0:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CDRate is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and start download !"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onPlayProgressMS(II)V
    .locals 0

    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "errorstr"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayStarted(I)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_1

    int-to-float p1, p1

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->n(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "omsdk"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    :try_start_0
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e:Z

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->setIsFrontDesk(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openURL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "params is null"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_1

    :try_start_0
    instance-of v2, p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object p1, p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    invoke-static {v0, p2}, Lcom/mbridge/msdk/click/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    invoke-static {v0, p2}, Lcom/mbridge/msdk/click/c;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public setAllowLoopPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b:Z

    return-void
.end method

.method public setAllowScreenChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c:Z

    return-void
.end method

.method public setAllowVideoRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a:Z

    return-void
.end method

.method public setFollowActivityOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j0:Z

    return-void
.end method

.method public setFullScreenViewBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->t:I

    return-void
.end method

.method public setIsAllowFullScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d:Z

    return-void
.end method

.method public setNativeAd(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p()V

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdvImpList()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setMediaViewHolder(Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x11f

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    iget-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->unregisterView()V

    :cond_5
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->c()V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    :cond_6
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz p1, :cond_7

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    :cond_7
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    if-eqz p1, :cond_8

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    :cond_8
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/mbridge/msdk/omsdk/b;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mmadbridge/adsession/b;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    :cond_9
    iget-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o:Z

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public setOnMediaViewListener(Lcom/mbridge/msdk/out/OnMBMediaViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    return-void
.end method

.method public setOnMediaViewListener(Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    return-void
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setProgressVisibility(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k:Z

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    :cond_0
    return-void
.end method

.method public setSoundIndicatorVisibility(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l:Z

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    :cond_0
    return-void
.end method

.method public setVideoSoundOnOff(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showEndCardWebViewCloseBtn()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "BaseMBMediaView"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "state"

    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    const-string p2, "SHOW CLOSE BTN "

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->showEndCardWebViewCloseBtn()V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p2

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->exitFullScreen()V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateViewManger(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(ZZLcom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d0:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(ZLcom/mbridge/msdk/nativex/view/mbfullview/BaseView;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    instance-of v2, v1, Lcom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(ZLcom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method
