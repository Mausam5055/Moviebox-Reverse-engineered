.class public Lcom/mbridge/msdk/video/module/MBridgeVideoView;
.super Lcom/mbridge/msdk/video/module/MBridgeBaseView;

# interfaces
.implements Lcom/mbridge/msdk/video/signal/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;,
        Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;,
        Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;
    }
.end annotation


# static fields
.field private static R0:I

.field private static S0:I

.field private static T0:I

.field private static U0:I

.field private static V0:I

.field private static W0:Z

.field private static X0:J


# instance fields
.field private A:Z

.field private A0:I

.field private B:Landroid/widget/FrameLayout;

.field private B0:I

.field private C:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

.field private C0:I

.field private D:Lcom/mbridge/msdk/video/signal/factory/b;

.field private D0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters;

.field private E:I

.field private E0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

.field private F:I

.field private F0:Z

.field private G:Landroid/widget/RelativeLayout;

.field private G0:Landroid/widget/RelativeLayout;

.field private H:Z

.field private H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

.field private I:Z

.field private I0:Landroid/widget/RelativeLayout;

.field private J:Z

.field private J0:Z

.field private K:Ljava/lang/String;

.field private K0:I

.field private L:I

.field private L0:Z

.field private M:I

.field private M0:Z

.field private N:I

.field private N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

.field private O:Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;

.field private O0:Z

.field private P:Lcom/mbridge/msdk/widget/dialog/b;

.field private P0:Ljava/lang/Runnable;

.field private Q:Ljava/lang/String;

.field private final Q0:Ljava/lang/Runnable;

.field private R:D

.field private S:D

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private a0:Z

.field private b0:Z

.field private c0:Z

.field private d0:Z

.field private e0:Z

.field private f0:I

.field private g0:Z

.field private h0:I

.field private i0:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field private j0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private k0:Ljava/lang/String;

.field private l0:I

.field private m:Landroid/widget/TextView;

.field private m0:I

.field public mCampOrderViewData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field public mCampaignSize:I

.field public mCurrPlayNum:I

.field public mCurrentPlayProgressTime:I

.field public mMuteSwitch:I

.field public mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

.field public mSoundImageView:Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

.field private n:Landroid/view/View;

.field private n0:I

.field private o:Landroid/widget/RelativeLayout;

.field private o0:Z

.field private p:Landroid/widget/ImageView;

.field private p0:Z

.field private q:Landroid/widget/ProgressBar;

.field private q0:Z

.field private r:Lcom/mbridge/msdk/widget/FeedBackButton;

.field private r0:Z

.field private s:Landroid/widget/ImageView;

.field private s0:Z

.field private t:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

.field private t0:Z

.field public tvFlag:Landroid/widget/TextView;

.field private u:Lcom/mbridge/msdk/video/module/listener/a;

.field private u0:Z

.field private v:Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;

.field private v0:Z

.field private w:Z

.field private w0:Z

.field private x:Lcom/mbridge/msdk/video/dynview/listener/a;

.field private x0:Landroid/view/animation/AlphaAnimation;

.field private y:Lcom/mbridge/msdk/video/dynview/listener/f;

.field private y0:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

.field private z:I

.field private z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCampaignSize:I

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrPlayNum:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrentPlayProgressTime:I

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mMuteSwitch:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w:Z

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->T:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->U:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->a0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->e0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g0:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->h0:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->q0:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->v0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z0:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A0:I

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B0:I

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C0:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J0:Z

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K0:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->M0:Z

    new-instance p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O0:Z

    new-instance p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$k;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$k;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P0:Ljava/lang/Runnable;

    new-instance p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$m;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$m;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q0:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCampaignSize:I

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrPlayNum:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrentPlayProgressTime:I

    iput p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mMuteSwitch:I

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w:Z

    iput p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z:I

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->T:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->U:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->a0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->e0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g0:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->h0:I

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->q0:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->v0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    iput p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z0:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A0:I

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B0:I

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C0:I

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J0:Z

    iput p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K0:I

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->M0:Z

    new-instance p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O0:Z

    new-instance p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$k;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$k;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P0:Ljava/lang/Runnable;

    new-instance p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$m;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$m;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q0:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n()V

    return-void
.end method

.method static synthetic B(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z0:I

    return p0
.end method

.method static synthetic C(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g()V

    return-void
.end method

.method static synthetic D(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->q:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic E(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic F(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->f()V

    return-void
.end method

.method static synthetic G(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->q()V

    return-void
.end method

.method static synthetic H(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n:Landroid/view/View;

    return-object p0
.end method

.method static synthetic I(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/widget/FeedBackButton;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lcom/mbridge/msdk/widget/FeedBackButton;

    return-object p0
.end method

.method static synthetic J(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->x()V

    return-void
.end method

.method static synthetic K(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/video/dynview/listener/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->x:Lcom/mbridge/msdk/video/dynview/listener/a;

    return-object p0
.end method

.method static synthetic L(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->M0:Z

    return p0
.end method

.method static synthetic M(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/video/dynview/listener/f;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y:Lcom/mbridge/msdk/video/dynview/listener/f;

    return-object p0
.end method

.method static synthetic N(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z:I

    return p0
.end method

.method static synthetic O(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic P(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o0:Z

    return p0
.end method

.method static synthetic Q(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    return-object p0
.end method

.method static synthetic R(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L:I

    return p0
.end method

.method static synthetic S(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C0:I

    return p0
.end method

.method static synthetic T(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E:I

    return p0
.end method

.method static synthetic U(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    return-object p0
.end method

.method static synthetic V(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A0:I

    return p0
.end method

.method static synthetic W(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 2

    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A0:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A0:I

    return v0
.end method

.method static synthetic X(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q0:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic Y(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F:I

    return p0
.end method

.method static synthetic Z(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w:Z

    return p0
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/setting/c;->w()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/setting/c;->w()I

    move-result p1

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/module/MBridgeVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E:I

    return p1
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->X0:J

    return-wide p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private a(II)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p2, :cond_0

    int-to-float p1, p1

    int-to-float v1, p2

    div-float/2addr p1, v1

    float-to-double v1, p1

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/Double;)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/video/dynview/wrapper/c;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/dynview/wrapper/c;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/video/dynview/wrapper/c;->b(Landroid/view/View;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/video/dynview/c;

    move-result-object p2

    invoke-static {}, Lcom/mbridge/msdk/video/dynview/b;->a()Lcom/mbridge/msdk/video/dynview/b;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Landroid/view/ViewGroup;Lcom/mbridge/msdk/video/dynview/c;)V

    invoke-virtual {v0, p2, v1}, Lcom/mbridge/msdk/video/dynview/b;->a(Lcom/mbridge/msdk/video/dynview/c;Lcom/mbridge/msdk/video/dynview/listener/h;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->v0:Z

    return p1
.end method

.method static synthetic a0(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->v:Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/module/MBridgeVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F:I

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->j()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickTempSource(I)V

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
    move-object v7, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v3

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    sget-object v0, Lcom/mbridge/msdk/foundation/same/a;->j:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v0, p1

    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 v1, 0x69

    invoke-interface {v0, v1, p1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_4
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/video/module/report/b;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_5
    return-void
.end method

.method private b(II)Z
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->f(Landroid/content/Context;)I

    move-result v1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lt v0, p1, :cond_0

    if-lt v1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    return p1
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W0:Z

    return p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->j0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object p0
.end method

.method private c(Z)Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g0:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Alert_window_status"

    if-nez v2, :cond_1

    :try_start_1
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->F:I

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->q0:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->D:I

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p0:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->E:I

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    const-string v2, "complete_info"

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    const-string p1, "MBridgeBaseView"

    const-string v0, "getIVRewardStatusString ERROR"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    return p1
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g0:Z

    return p0
.end method

.method static synthetic e()J
    .locals 2

    sget-wide v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->X0:J

    return-wide v0
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    return p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    return p1
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x1

    const-string v2, "_"

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lcom/mbridge/msdk/widget/FeedBackButton;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/widget/FeedBackButton;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lcom/mbridge/msdk/widget/FeedBackButton;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r0:Z

    return p0
.end method

.method static synthetic f(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p0:Z

    return p1
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->setToolBarTitle(Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/h;->a()Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->o0()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->setPageLoadTimtout(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$d;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$d;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->setPageLoadListener(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$e;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$e;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$f;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$f;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->setCollapseListener(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$h;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$g;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$g;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->setExpandListener(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$h;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$h;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$h;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->setExitsClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y()V

    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u0:Z

    return p1
.end method

.method private getCDRate()I
    .locals 4

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/c;->g()I

    move-result v0

    return v0
.end method

.method private getVideoAllDuration()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->b()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return v0
.end method

.method private getVideoCompleteTime()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->getVideoAllDuration()I

    move-result v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCompleteTime()I

    move-result v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return v1
.end method

.method private h()V
    .locals 2

    const-string v0, "mbridge_reward_videoview_item"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findLayout(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W0:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r()V

    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    return p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->q0:Z

    return p1
.end method

.method static synthetic i(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l0:I

    return p0
.end method

.method private i()V
    .locals 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O0:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d0:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O0:Z

    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L:I

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d0:Z

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$a;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iget v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d0:Z

    return p1
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->addCTAView()V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P0:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u0:Z

    return p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    return p1
.end method

.method private k()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MBridgeBaseView videoResolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/t0;->m(Ljava/lang/String;)D

    move-result-wide v6

    cmpl-double v3, v6, v4

    if-lez v3, :cond_0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->m(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R:D

    :cond_0
    const/4 v1, 0x1

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/t0;->m(Ljava/lang/String;)D

    move-result-wide v6

    cmpl-double v3, v6, v4

    if-lez v3, :cond_1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->m(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S:D

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MBridgeBaseView mVideoW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  mVideoH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-wide v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_3

    const-wide/high16 v0, 0x4094000000000000L    # 1280.0

    iput-wide v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R:D

    :cond_3
    iget-wide v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_4

    const-wide v0, 0x4086800000000000L    # 720.0

    iput-wide v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S:D

    :cond_4
    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p()V

    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J0:Z

    return p1
.end method

.method static synthetic l(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->k0:Ljava/lang/String;

    return-object p0
.end method

.method private l()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_0
    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_vfpv"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/playercommon/PlayerView;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_sound_switch"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mSoundImageView:Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_tv_count"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_rl_playing_close"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_top_control"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o:Landroid/widget/RelativeLayout;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_videoview_bg"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_video_progress_bar"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->q:Landroid/widget/ProgressBar;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_native_endcard_feed_btn"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/widget/FeedBackButton;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lcom/mbridge/msdk/widget/FeedBackButton;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_iv_link"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_reward_scale_webview_layout"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->G0:Landroid/widget/RelativeLayout;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_reward_header_layout"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I0:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->G0:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->G0:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    new-instance v7, Lcom/mbridge/msdk/video/module/MBridgeVideoView$t;

    invoke-direct {v7, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$t;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/tools/t0;->a(ILandroid/widget/ImageView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;ZLcom/mbridge/msdk/foundation/feedback/a;)V

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_reward_segment_progressbar"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_reward_cta_layout"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_animation_click_view"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y0:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_reward_moreoffer_layout"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->G:Landroid/widget/RelativeLayout;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_reward_popview"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    const-string v3, "mbridge_tv_flag"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->tvFlag:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mSoundImageView:Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n:Landroid/view/View;

    new-array v1, v1, [Landroid/view/View;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v5, v1, v2

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->isNotNULL([Landroid/view/View;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MBridgeBaseView"

    invoke-static {v3, v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method static synthetic l(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    return p1
.end method

.method static synthetic m(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    return-object p0
.end method

.method private m()Z
    .locals 5

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->getVideoCompleteTime()I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/PlayerView;->getCurPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrPlayNum:I

    if-le v3, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_3

    if-ge v1, v0, :cond_3

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    if-lt v1, v0, :cond_4

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method

.method static synthetic m(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A:Z

    return p1
.end method

.method private n()V
    .locals 3

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-nez v0, :cond_0

    const-string v0, "MBridgeBaseView"

    const-string v1, "MBridgeVideoView init fail"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v0

    const-string v1, "i_l_s_t_r_i"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$n;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$n;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/PlayerView;->setNotifyListener(Lcom/mbridge/msdk/playercommon/PlayerView$OnPlayerViewVisibleListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->x0:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method static synthetic n(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o()V

    return-void
.end method

.method static synthetic n(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->M0:Z

    return p1
.end method

.method static synthetic o(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private o()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/PlayerView;->onPause()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isRewardPopViewShowed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F0:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/playercommon/PlayerView;->setIsCovered(Z)V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isHasReportAdTrackPause()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setHasReportAdTrackPause(Z)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->n()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void
.end method

.method static synthetic o(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w:Z

    return p1
.end method

.method private p()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v0

    const v1, 0x4c531a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I0:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->U:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/PlayerView;->playVideo()Z

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    if-eqz v0, :cond_1

    const-string v1, "play video failed"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->onPlayError(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->U:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;->onResume()V

    :cond_3
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F0:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/PlayerView;->setIsCovered(Z)V

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic p(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w0:Z

    return p0
.end method

.method static synthetic q(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->x0:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method private q()V
    .locals 7

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_0
    const-string v1, "guideShow"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "guideDelay"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "guideTime"

    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "guideRewardTime"

    invoke-static {v0, v4}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z0:I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_6
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x3

    const/16 v5, 0xa

    const/4 v6, 0x5

    if-nez v1, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A0:I

    if-gt v1, v5, :cond_7

    if-ge v1, v4, :cond_8

    :cond_7
    iput v6, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A0:I

    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B0:I

    if-gt v1, v5, :cond_9

    if-ge v1, v4, :cond_a

    :cond_9
    iput v6, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B0:I

    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C0:I

    if-gt v0, v5, :cond_b

    if-ge v0, v6, :cond_c

    :cond_b
    iput v6, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C0:I

    :cond_c
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z0:I

    if-lez v0, :cond_13

    const/4 v1, 0x2

    if-le v0, v1, :cond_d

    goto/16 :goto_2

    :cond_d
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->getVideoCompleteTime()I

    move-result v0

    if-eqz v0, :cond_e

    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A0:I

    if-gt v0, v1, :cond_e

    return-void

    :cond_e
    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A0:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_f

    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C0:I

    if-le v1, v0, :cond_f

    iput v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C0:I

    :cond_f
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->getVideoAllDuration()I

    move-result v0

    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C0:I

    if-lt v1, v0, :cond_10

    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A0:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C0:I

    :cond_10
    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A0:I

    if-lt v1, v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "US"

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/setting/h;->b(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/mbridge/msdk/setting/b;->k()Ljava/lang/String;

    move-result-object v1

    :cond_12
    new-instance v2, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters$Builder;

    const-string v3, ""

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    iget v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z0:I

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B0:I

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters$Builder;->setAutoDismissTime(I)Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters$Builder;

    move-result-object v1

    iget v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C0:I

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters$Builder;->setReduceTime(I)Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters$Builder;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters$Builder;->setBehaviourListener(Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewBehaviourListener;)Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters$Builder;->setRightAnswerList(Ljava/util/ArrayList;)Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters$Builder;->build()Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters;

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_13
    :goto_2
    return-void

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method static synthetic r(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p:Landroid/widget/ImageView;

    return-object p0
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->tvFlag:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->tvFlag:Landroid/widget/TextView;

    const-string v1, "\u5e7f\u544a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->tvFlag:Landroid/widget/TextView;

    const-string v1, "AD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private s()V
    .locals 15

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->f(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-wide v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R:D

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-lez v6, :cond_b

    iget-wide v6, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S:D

    cmpg-double v4, v6, v4

    if-lez v4, :cond_b

    const/4 v4, 0x0

    cmpg-float v5, v0, v4

    if-lez v5, :cond_b

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    div-double/2addr v2, v6

    div-float v4, v0, v1

    float-to-double v4, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "videoWHDivide:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, "  screenWHDivide:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MBridgeBaseView"

    invoke-static {v7, v6}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/Double;)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/Double;)D

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "videoWHDivideFinal:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "  screenWHDivideFinal:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    cmpl-double v10, v8, v4

    const/16 v11, 0x11

    const/4 v12, -0x1

    if-lez v10, :cond_1

    float-to-double v4, v0

    iget-wide v8, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S:D

    mul-double/2addr v4, v8

    iget-wide v8, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R:D

    div-double/2addr v4, v8

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    double-to-int v4, v4

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    cmpg-double v4, v8, v4

    if-gez v4, :cond_2

    float-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v4

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->b()I

    move-result v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_3
    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v5, v4, Landroid/content/res/Configuration;->orientation:I

    const/16 v4, 0x388

    :goto_1
    const/16 v8, 0x66

    const/16 v9, 0xca

    if-eq v4, v8, :cond_4

    if-ne v4, v9, :cond_6

    :cond_4
    const/4 v8, 0x1

    if-ne v5, v8, :cond_5

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-wide v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S:D

    iget-wide v10, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R:D

    float-to-double v13, v0

    div-double/2addr v10, v13

    div-double/2addr v1, v10

    double-to-int v1, v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_5
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    float-to-double v10, v1

    mul-double/2addr v10, v2

    double-to-int v1, v10

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_6
    :goto_2
    if-ne v4, v9, :cond_7

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setBlurBackgroundImage(Ljava/lang/String;)V

    :cond_7
    const/16 v1, 0x12e

    if-eq v4, v1, :cond_8

    const/16 v1, 0x322

    if-eq v4, v1, :cond_8

    const v1, 0x4c531a

    if-ne v4, v1, :cond_a

    :cond_8
    iget-wide v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R:D

    iget-wide v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S:D

    div-double v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v8, v10

    if-lez v5, :cond_9

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    float-to-double v8, v0

    mul-double/2addr v3, v8

    div-double/2addr v3, v1

    double-to-int v0, v3

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x435c0000    # 220.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    iget-wide v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R:D

    int-to-double v3, v0

    mul-double/2addr v1, v3

    iget-wide v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S:D

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setMatchParent()V

    goto :goto_6

    :cond_b
    :goto_5
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->v()V

    :goto_6
    return-void
.end method

.method static synthetic s(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J0:Z

    return p0
.end method

.method private setBlurBackgroundImage(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$c;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$c;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    return-void
.end method

.method private setPlayerViewRadius(I)V
    .locals 2

    if-lez p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->G0:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private t()V
    .locals 0

    return-void
.end method

.method static synthetic u(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/video/module/listener/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u:Lcom/mbridge/msdk/video/module/listener/a;

    return-object p0
.end method

.method private u()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s()V

    :goto_0
    return-void
.end method

.method static synthetic v(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I0:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private v()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, v0, v0, v1, v1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setLayoutParam(IIII)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    move-result v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic w(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H0:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    return-object p0
.end method

.method private w()V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/PlayerView;->seekToEndFrame()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t0:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/PlayerView;->onResume()V

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isRewardPopViewShowed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method static synthetic x(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K0:I

    return p0
.end method

.method private x()V
    .locals 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->a0:Z

    :cond_2
    return-void
.end method

.method private y()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v0

    const v3, 0x4c531a

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x8

    const-string v4, ""

    if-eqz v0, :cond_10

    :try_start_1
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l0:I

    sget v5, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-eq v0, v5, :cond_2

    sget v5, Lcom/mbridge/msdk/foundation/same/a;->I:I

    if-ne v0, v5, :cond_10

    :cond_2
    iget-boolean v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o0:Z

    if-eqz v5, :cond_4

    sget v3, Lcom/mbridge/msdk/foundation/same/a;->I:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    sget v5, Lcom/mbridge/msdk/foundation/same/a;->I:I

    if-ne v0, v5, :cond_6

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->v0:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r0:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/PlayerView;->getCurPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v5}, Lcom/mbridge/msdk/playercommon/PlayerView;->getDuration()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    move-result v5

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v5}, Lcom/mbridge/msdk/playercommon/PlayerView;->getDuration()I

    move-result v5

    :goto_1
    int-to-float v6, v0

    int-to-float v5, v5

    div-float/2addr v6, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v6, v5

    float-to-int v5, v6

    iget v6, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l0:I

    sget v7, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-ne v6, v7, :cond_c

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o()V

    iget v6, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m0:I

    sget v7, Lcom/mbridge/msdk/foundation/same/a;->J:I

    if-ne v6, v7, :cond_9

    iget v7, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n0:I

    if-lt v5, v7, :cond_9

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_8

    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_8
    return-void

    :cond_9
    sget v7, Lcom/mbridge/msdk/foundation/same/a;->K:I

    if-ne v6, v7, :cond_b

    iget v6, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n0:I

    if-lt v0, v6, :cond_b

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_a

    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v1, :cond_c

    invoke-interface {v1, v3, v4}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_c
    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l0:I

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->I:I

    if-ne v1, v2, :cond_f

    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m0:I

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->J:I

    if-ne v1, v2, :cond_e

    iget v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n0:I

    if-lt v5, v2, :cond_e

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_d

    invoke-interface {v0, v3, v4}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_d
    return-void

    :cond_e
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->K:I

    if-ne v1, v2, :cond_f

    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n0:I

    if-lt v0, v1, :cond_f

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_f

    invoke-interface {v0, v3, v4}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v0

    if-eq v0, v1, :cond_13

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N:I

    if-ne v5, v2, :cond_11

    iget-boolean v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->e0:Z

    if-nez v5, :cond_11

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_14

    invoke-interface {v0, v3, v4}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    goto :goto_3

    :cond_11
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v3, :cond_14

    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v3

    const/16 v5, 0x5e

    if-ne v3, v5, :cond_12

    if-nez v0, :cond_12

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 v5, 0x11

    invoke-interface {v3, v5, v4}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_12
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    goto :goto_3

    :cond_13
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_14

    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    invoke-interface {v0, v1, v4}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_3
    return-void
.end method

.method static synthetic y(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    return p0
.end method

.method static synthetic z(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->getVideoCompleteTime()I

    move-result p0

    return p0
.end method


# virtual methods
.method public addCTAView()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;->setUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    new-instance v2, Lcom/mbridge/msdk/video/module/listener/impl/i;

    invoke-direct {v2, v0}, Lcom/mbridge/msdk/video/module/listener/impl/i;-><init>(Lcom/mbridge/msdk/video/module/listener/a;)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public alertWebViewShowed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setShowingAlertViewCover(Z)V

    return-void
.end method

.method public closeVideoOperate(II)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->v0:Z

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y()V

    :cond_0
    :try_start_0
    new-instance p1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    const-string v1, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    const-string v2, "2000152"

    invoke-virtual {v1, v2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    const-string v2, "2000148"

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2, v3, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p1

    const-string v1, "2000134"

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->gonePlayingCloseView()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u0:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->x()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected d()V
    .locals 2

    invoke-super {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->d()V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/util/a;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/util/a;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$p;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$p;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mSoundImageView:Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$q;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$q;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n:Landroid/view/View;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public defaultShow()V
    .locals 12

    invoke-super {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->defaultShow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->T:Z

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    move-result v5

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->f(Landroid/content/Context;)I

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->showVideoLocation(IIIIIIIII)V

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->videoOperate(I)V

    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->closeVideoOperate(II)V

    :cond_0
    return-void
.end method

.method public dismissAllAlert()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O:Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_1

    const/16 v1, 0x7d

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getBorderViewHeight()I
    .locals 1

    sget v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->V0:I

    return v0
.end method

.method public getBorderViewLeft()I
    .locals 1

    sget v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->T0:I

    return v0
.end method

.method public getBorderViewRadius()I
    .locals 1

    sget v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R0:I

    return v0
.end method

.method public getBorderViewTop()I
    .locals 1

    sget v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S0:I

    return v0
.end method

.method public getBorderViewWidth()I
    .locals 1

    sget v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->U0:I

    return v0
.end method

.method public getBufferTimeout()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->M:I

    return v0
.end method

.method public getCloseAlert()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N:I

    return v0
.end method

.method public getCurrentProgress()Ljava/lang/String;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a()I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "progress"

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "time"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "duration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "{}"

    return-object v0
.end method

.method public getMute()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->h0:I

    return v0
.end method

.method public getPlayURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSkipTime()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L:I

    return v0
.end method

.method public gonePlayingCloseView()V
    .locals 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->a0:Z

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->i()V

    return-void
.end method

.method public hideAlertView(I)V
    .locals 9

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o0:Z

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setShowingAlertViewCover(Z)V

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/c;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v8, 0x1

    move v7, p1

    invoke-static/range {v2 .. v8}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;III)V

    const-string v0, ""

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p()V

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g0:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l0:I

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->I:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-ne p1, v2, :cond_7

    :cond_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p0:Z

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz p1, :cond_1

    const/16 v2, 0x7c

    invoke-interface {p1, v2, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result p1

    const v0, 0x4c531a

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->x()V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u0:Z

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->gonePlayingCloseView()V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->q0:Z

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g0:Z

    if-eqz p1, :cond_4

    iget v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l0:I

    sget v3, Lcom/mbridge/msdk/foundation/same/a;->I:I

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p()V

    return-void

    :cond_4
    const/4 v2, 0x2

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l0:I

    sget v3, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    invoke-interface {p1, v2, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isH5Canvas()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->f(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInstDialogShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F0:Z

    return v0
.end method

.method public isMiniCardShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    return v0
.end method

.method public isRewardPopViewShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    return v0
.end method

.method public isShowingAlertView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    return v0
.end method

.method public isShowingTransparent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->e0:Z

    return v0
.end method

.method public isfront()Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    move v5, v1

    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-gt v2, v6, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :cond_2
    :goto_1
    return v1
.end method

.method public notifyCloseBtn(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b0:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d0:Z

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c0:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyVideoClose()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityStop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onBackPress()V
    .locals 3

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p0:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v0

    const v1, 0x4c531a

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->s0:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L0:Z

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->a0:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y()V

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b0:Z

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c0:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y()V

    return-void

    :cond_5
    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d0:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->T:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P0:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z0:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V
    .locals 4

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D:Lcom/mbridge/msdk/video/signal/factory/b;

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->i0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1, v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->d(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mSoundImageView:Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->i0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    sget-object v2, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v1, p1, v2, v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->i0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m:Landroid/widget/TextView;

    sget-object v2, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    invoke-virtual {p1, v1, v2, v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->i0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n:Landroid/view/View;

    sget-object v2, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    invoke-virtual {p1, v1, v2, v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->k()V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->M:I

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/playercommon/PlayerView;->initBufferIngParam(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    invoke-virtual {p1, v1, v2, v3}, Lcom/mbridge/msdk/playercommon/PlayerView;->initVFPData(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z

    iget p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->h0:I

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz p1, :cond_3

    const/16 v0, 0xc

    const-string v1, "MBridgeVideoView initSuccess false"

    invoke-interface {p1, v0, v1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    sput-boolean p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W0:Z

    return-void
.end method

.method public progressBarOperate(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->q:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->q:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public progressOperate(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progressOperate progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-lez p1, :cond_1

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/PlayerView;->seekTo(I)V

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->f()V

    :cond_4
    return-void
.end method

.method public releasePlayer()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/PlayerView;->release()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    const-string v1, "duration"

    sget-wide v2, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->X0:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->X0:J

    sub-long/2addr v2, v4

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    const-string v2, "2000146"

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2, v3, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->d()V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u:Lcom/mbridge/msdk/video/module/listener/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->i0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    return-void
.end method

.method public setBufferTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->M:I

    return-void
.end method

.method public setCTALayoutVisibleOrGone()V
    .locals 7

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v0

    const/16 v1, 0x386

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F:I

    const/4 v1, -0x5

    const/16 v2, 0x8

    const-wide/16 v3, 0xbb8

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->addCTAView()V

    :cond_4
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    :goto_0
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void

    :cond_8
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E:I

    if-ge v0, v5, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->C:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->addCTAView()V

    :cond_a
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E:I

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_b
    if-ne v0, v5, :cond_d

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    :goto_1
    return-void
.end method

.method public setCamPlayOrderCallback(Lcom/mbridge/msdk/video/dynview/listener/a;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/video/dynview/listener/a;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->x:Lcom/mbridge/msdk/video/dynview/listener/a;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCampaignSize:I

    iput p3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCurrPlayNum:I

    iput p4, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z:I

    iput-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCampOrderViewData:Ljava/util/List;

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCampOrderViewData:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCampaignSize:I

    if-le v0, p4, :cond_3

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    iget p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCampaignSize:I

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;->init(II)V

    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_7

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoPlayProgress()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    invoke-virtual {p2, p1, p3}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;->setProgress(II)V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-boolean p1, p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isRewardPopViewShowed:Z

    if-eqz p1, :cond_2

    iput-boolean p4, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->H:Z

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getProgressBarShow()I

    move-result p1

    if-ne p1, p4, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p4, p2}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;->init(II)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getProgressBarShow()I

    move-result p1

    if-ne p1, p4, :cond_7

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p4, p2}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;->init(II)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeSegmentsProgressBar;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result p1

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->getCDRate()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->b(II)V

    :cond_0
    return-void
.end method

.method public setCloseAlert(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N:I

    return-void
.end method

.method public setContainerViewOnNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u:Lcom/mbridge/msdk/video/module/listener/a;

    return-void
.end method

.method public setCover(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/PlayerView;->setIsCovered(Z)V

    :cond_0
    return-void
.end method

.method public setDialogRole(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r0:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->r0:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIPlayVideoViewLayoutCallBack(Lcom/mbridge/msdk/video/dynview/listener/f;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y:Lcom/mbridge/msdk/video/dynview/listener/f;

    return-void
.end method

.method public setIVRewardEnable(III)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l0:I

    iput p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m0:I

    iput p3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->n0:I

    return-void
.end method

.method public setInstDialogState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F0:Z

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/PlayerView;->setIsCovered(Z)V

    :cond_0
    return-void
.end method

.method public setIsIV(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g0:Z

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a(Z)V

    :cond_0
    return-void
.end method

.method public setMiniEndCardState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 9

    const-string v0, "MBridgeBaseView"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOTCH VideoView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%1s-%2s-%3s-%4s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    const/4 v3, 0x2

    aput-object v5, v7, v3

    const/4 v3, 0x3

    aput-object v6, v7, v3

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput p3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K0:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v1, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    new-instance v8, Lcom/mbridge/msdk/video/module/MBridgeVideoView$b;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p3

    move v6, p2

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$b;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;IIII)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v1, v8, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public setPlayURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K:Ljava/lang/String;

    return-void
.end method

.method public setPlayerViewAttachListener(Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->v:Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;

    return-void
.end method

.method public setScaleFitXY(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->f0:I

    return-void
.end method

.method public setShowingAlertViewCover(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/PlayerView;->setIsCovered(Z)V

    return-void
.end method

.method public setShowingTransparent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->e0:Z

    return-void
.end method

.method public setSoundState(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->h0:I

    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->j0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->N0:Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;->a(Lcom/mbridge/msdk/video/module/MBridgeVideoView$w;Lcom/iab/omid/library/mmadbridge/adsession/media/a;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/PlayerView;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    :cond_1
    return-void
.end method

.method public setVideoLayout(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->h:Z

    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->h:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->a(Landroid/view/ViewGroup;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->h()V

    :goto_0
    return-void
.end method

.method public setVideoSkipTime(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->L:I

    return-void
.end method

.method public setVisible(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showAlertView()V
    .locals 7

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P:Lcom/mbridge/msdk/widget/dialog/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$s;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$s;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P:Lcom/mbridge/msdk/widget/dialog/b;

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O:Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;

    if-nez v0, :cond_2

    new-instance v0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->P:Lcom/mbridge/msdk/widget/dialog/b;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/widget/dialog/b;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O:Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->i0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O:Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;

    iget v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l0:I

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->makeIVAlertView(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O:Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->makeRVAlertView(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/PlayerView;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v0

    const v1, 0x4c531a

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->O:Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;

    invoke-virtual {v0}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setShowingAlertViewCover(Z)V

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/c;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->k0:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->Q:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_5
    return-void
.end method

.method public showBaitClickView()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    :try_start_0
    const-string v1, "bait_click"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y0:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y0:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->init(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y0:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->startAnimation()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->y0:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$i;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$i;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public showIVRewardAlertView(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 v0, 0x8

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public showMoreOfferInPlayTemplate()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->G:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    :try_start_0
    const-string v1, "mof"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a()Lcom/mbridge/msdk/video/dynview/moffer/a;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    new-instance v3, Lcom/mbridge/msdk/video/module/listener/impl/i;

    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u:Lcom/mbridge/msdk/video/module/listener/a;

    invoke-direct {v3, v4}, Lcom/mbridge/msdk/video/module/listener/impl/i;-><init>(Lcom/mbridge/msdk/video/module/listener/a;)V

    invoke-virtual {v0, v2, p0, v3, v1}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/view/ViewGroup;Lcom/mbridge/msdk/video/module/listener/a;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public showRewardPopView()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters;

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;->init(Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewParameters;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->E0:Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/MBAcquireRewardPopView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o()V

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_2

    iput-boolean v0, v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isRewardPopViewShowed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showVideoLocation(IIIIIIIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->f()V

    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->T:Z

    if-nez v0, :cond_7

    sput p6, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S0:I

    sput p7, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->T0:I

    add-int/lit8 p8, p8, 0x4

    sput p8, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->U0:I

    add-int/lit8 p9, p9, 0x4

    sput p9, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->V0:I

    int-to-float p6, p3

    int-to-float p7, p4

    div-float/2addr p6, p7

    :try_start_0
    iget-wide p7, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R:D

    iget-wide v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->S:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    div-double/2addr p7, v0

    double-to-float p7, p7

    goto :goto_0

    :catchall_0
    move-exception p7

    invoke-virtual {p7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p8

    const-string p9, "MBridgeBaseView"

    invoke-static {p9, p8, p7}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p7, 0x0

    :goto_0
    if-lez p5, :cond_2

    sput p5, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->R0:I

    invoke-direct {p0, p5}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setPlayerViewRadius(I)V

    :cond_2
    sub-float/2addr p6, p7

    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const p6, 0x3dcccccd    # 0.1f

    cmpg-float p5, p5, p6

    if-lez p5, :cond_4

    iget p5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->f0:I

    const/4 p6, 0x1

    if-ne p5, p6, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u()V

    invoke-virtual {p0, p6}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->videoOperate(I)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u()V

    iget-boolean p5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->e0:Z

    if-eqz p5, :cond_6

    invoke-virtual {p0, p3, p4}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setLayoutCenter(II)V

    sget-boolean p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W0:Z

    const-string p2, ""

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 p3, 0x72

    invoke-interface {p1, p3, p2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 p3, 0x74

    invoke-interface {p1, p3, p2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setLayoutParam(IIII)V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u()V

    :cond_8
    :goto_2
    return-void
.end method

.method public soundOperate(II)V
    .locals 1

    const-string v0, "2"

    invoke-virtual {p0, p1, p2, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(IILjava/lang/String;)V

    return-void
.end method

.method public soundOperate(IILjava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_6

    iput p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->h0:I

    const/4 v0, 0x2

    const-string v1, "OMSDK"

    const-string v2, "omsdk"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v5}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/mbridge/msdk/video/signal/a;->g(I)V

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mSoundImageView:Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v3}, Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;->setSoundStatus(Z)V

    :cond_0
    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v5}, Lcom/mbridge/msdk/playercommon/PlayerView;->closeSound()V

    :try_start_0
    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->j0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v5, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->p(F)V

    const-string v5, "play video view:  mute"

    invoke-static {v2, v5}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->D:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v5}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/mbridge/msdk/video/signal/a;->g(I)V

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mSoundImageView:Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;->setSoundStatus(Z)V

    :cond_2
    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v5}, Lcom/mbridge/msdk/playercommon/PlayerView;->openSound()V

    :try_start_1
    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->j0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v5, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->p(F)V

    const-string v5, "play video view:  unmute"

    invoke-static {v2, v5}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mSoundImageView:Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    if-ne p2, v4, :cond_5

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mSoundImageView:Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

    if-eqz p2, :cond_6

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mSoundImageView:Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    if-eqz p3, :cond_7

    const-string p2, "2"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz p2, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x7

    invoke-interface {p2, p3, p1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public videoOperate(I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoView videoOperate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isfront()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "VideoView videoOperate:play"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I0:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    :cond_0
    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    if-nez p1, :cond_a

    sget-boolean p1, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    if-nez p1, :cond_a

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F0:Z

    if-nez p1, :cond_a

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p()V

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p()V

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isfront()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "VideoView videoOperate:pause"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o()V

    goto/16 :goto_2

    :cond_3
    const/4 v1, 0x3

    const-string v2, "2000146"

    const-wide/16 v3, 0x0

    const-string v5, "duration"

    if-ne p1, v1, :cond_6

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/PlayerView;->stop()V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result p1

    const v1, 0x4c531a

    if-eq p1, v1, :cond_a

    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/PlayerView;->release()V

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    sget-wide v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->X0:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v3, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->X0:J

    sub-long/2addr v0, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v2, v1, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x5

    if-ne p1, v1, :cond_7

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F0:Z

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    if-nez p1, :cond_a

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->o()V

    goto :goto_2

    :cond_7
    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->F0:Z

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isMiniCardShowing()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->p()V

    goto :goto_2

    :cond_8
    const/4 v1, 0x6

    if-ne p1, v1, :cond_a

    iget-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/PlayerView;->release()V

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->K:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    sget-wide v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->X0:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v3, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->X0:J

    sub-long/2addr v0, v3

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v2, v1, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_a
    :goto_2
    return-void
.end method
