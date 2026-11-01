.class public Lcom/mbridge/msdk/video/bt/module/MBTempContainer;
.super Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;,
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;,
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$p;,
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;,
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;,
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$l;
    }
.end annotation


# static fields
.field private static final s0:Ljava/lang/String; = "MBTempContainer"


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

.field protected N:Z

.field private O:Landroid/view/LayoutInflater;

.field protected P:Z

.field protected Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

.field protected R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field protected S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

.field protected T:Landroid/os/Handler;

.field private U:I

.field private V:I

.field protected W:Ljava/lang/Runnable;

.field protected a0:Ljava/lang/Runnable;

.field private b0:Landroid/view/View;

.field private c0:Z

.field private d0:Z

.field private e0:Z

.field private f0:Z

.field private g0:Z

.field private h0:Z

.field private i0:Z

.field private j0:Z

.field private k0:Z

.field private l0:Z

.field private m0:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

.field private n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field private o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

.field private q0:Ljava/lang/Runnable;

.field private r:Landroid/view/View;

.field private r0:Z

.field private s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private t:Lcom/mbridge/msdk/videocommon/download/a;

.field private u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

.field private v:Lcom/mbridge/msdk/video/bt/module/listener/b;

.field private w:Lcom/mbridge/msdk/video/dynview/listener/a;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Lcom/mbridge/msdk/video/signal/factory/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    sget v1, Lcom/mbridge/msdk/foundation/same/a;->F:I

    iput v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Z

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    iput v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->L:I

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->N:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->P:Z

    new-instance v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k$a;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k$a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iput v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->U:I

    iput v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->V:I

    new-instance v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    new-instance v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$c;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$c;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->c0:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->e0:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->h0:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->i0:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->j0:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k0:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l0:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    new-instance v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$f;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$f;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q0:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r0:Z

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    const-string p2, ""

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    sget v0, Lcom/mbridge/msdk/foundation/same/a;->F:I

    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Z

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->L:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->N:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->P:Z

    new-instance p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k$a;

    invoke-direct {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k$a;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->U:I

    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->V:I

    new-instance p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    new-instance p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$c;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$c;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->c0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->e0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->h0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->i0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->j0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k0:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l0:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    new-instance p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$f;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$f;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q0:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r0:Z

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method private A()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/scheme/applet/AppletModelManager;->getInstance()Lcom/mbridge/msdk/scheme/applet/AppletModelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/scheme/applet/AppletModelManager;->get(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->can(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->setUserClick(Z)V

    new-instance v2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$l;

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v2, v3}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$l;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->requestWxAppletsScheme(ILcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->clearRequestState()V

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic B(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic C(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    return p0
.end method

.method static synthetic D(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q0:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic E(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic G(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic H(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic I(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic J(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/video/bt/module/orglistener/h;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    return-object p0
.end method

.method static synthetic K(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic L(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y()V

    return-void
.end method

.method static synthetic M(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r0:Z

    return p0
.end method

.method static synthetic N(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m()V

    return-void
.end method

.method static synthetic O(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic P(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    return p0
.end method

.method static synthetic Q(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic R(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic T(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic U(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    return p0
.end method

.method static synthetic V(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->w()V

    return-void
.end method

.method static synthetic W(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b0:Landroid/view/View;

    return-object p0
.end method

.method private a(II)I
    .locals 5

    if-gez p1, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return p1

    :cond_2
    const/4 v0, 0x1

    if-gt p2, v0, :cond_3

    return p1

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    add-int/lit8 v4, p2, -0x1

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    move-result v4

    add-int/2addr v3, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-le p1, v3, :cond_6

    sub-int v1, p1, v3

    :cond_6
    return v1
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->U:I

    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/iab/omid/library/mmadbridge/adsession/media/a;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->i0:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A:I

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private b(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/entity/m;-><init>()V

    const-string v1, "2000037"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",desc="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, ""

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->t(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->u(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->c(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/o;->i(Lcom/mbridge/msdk/foundation/entity/m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    return p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->B:I

    return p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->j0:Z

    return p1
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    return p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k0:Z

    return p1
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->i0:Z

    return p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->h0:Z

    return p1
.end method

.method static synthetic f(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l()V

    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    return p0
.end method

.method private getBufferTimeout()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/b;->c()Lcom/mbridge/msdk/videocommon/setting/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/b;->a()Lcom/mbridge/msdk/videocommon/setting/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/a;->i()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x5

    :goto_2
    return v0
.end method

.method private getCloseBtnTime()I
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clsdly"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCbd()I

    move-result v0

    const/4 v1, -0x2

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCbd()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/c;->i()I

    move-result v1

    :goto_0
    return v1
.end method

.method static synthetic h(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/videocommon/setting/c;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    return-object p0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onAdClose()V

    return-void
.end method

.method private l()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "notify_listener"

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    instance-of v3, v2, Lcom/mbridge/msdk/video/module/listener/impl/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "listener_type"

    if-eqz v3, :cond_0

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    instance-of v1, v2, Lcom/mbridge/msdk/video/module/listener/impl/m;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-eqz v1, :cond_3

    const-string v2, "2000130"

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic l(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    return p0
.end method

.method static synthetic m(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object p0
.end method

.method private m()V
    .locals 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$a;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method private onAdClose()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:I

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->I:I

    if-ne v1, v2, :cond_2

    :cond_0
    iget v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->B:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A:I

    invoke-interface {v0, v2, v1}, Lcom/mbridge/msdk/video/bt/module/listener/b;->a(ZI)V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    iget-object v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/mbridge/msdk/video/bt/module/listener/b;->a(Ljava/lang/String;ZLcom/mbridge/msdk/videocommon/entity/c;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic p(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    return p0
.end method

.method static synthetic q(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/video/bt/module/listener/b;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    return-object p0
.end method

.method private q()V
    .locals 5

    const-string v0, "omsdk"

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    sget-object v3, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b0:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v2, v1, v3, v4}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v2, v1, v3, v4}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->g()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/mmadbridge/adsession/media/Position;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->b(ZLcom/iab/omid/library/mmadbridge/adsession/media/Position;)Lcom/iab/omid/library/mmadbridge/adsession/media/b;

    move-result-object v1

    const-string v2, "bt:   adEvents.loaded"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    invoke-virtual {v2, v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->d(Lcom/iab/omid/library/mmadbridge/adsession/media/b;)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic r(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    return-object p0
.end method

.method private r()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->c0:Z

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->m()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "omsdk"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:I

    sget v4, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-eq v2, v4, :cond_2

    sget v4, Lcom/mbridge/msdk/foundation/same/a;->I:I

    if-ne v2, v4, :cond_4

    :cond_2
    iget v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->B:I

    if-ne v2, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iget v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A:I

    invoke-interface {v1, v0, v2}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(ZI)V

    :cond_4
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/videocommon/entity/c;->a(I)V

    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    iget-object v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;ZLcom/mbridge/msdk/videocommon/entity/c;)V

    :cond_6
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u()V

    :cond_9
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/16 v1, 0x11f

    invoke-static {v1, v0}, Lcom/mbridge/msdk/videocommon/a;->b(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/16 v1, 0x5e

    invoke-static {v1, v0}, Lcom/mbridge/msdk/videocommon/a;->b(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    return-void
.end method

.method static synthetic s(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private s()V
    .locals 7

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mbridge/msdk/mbsignalcommon/mraid/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/mbridge/msdk/foundation/same/report/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->f0:Z

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method private t()V
    .locals 2

    iget v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->U:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->U:I

    :cond_2
    return-void
.end method

.method static synthetic u(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method private u()V
    .locals 5

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->checkChinaSendToServerDiff(Lcom/mbridge/msdk/video/bt/module/orglistener/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    const-string v1, "sendToServerRewardInfo"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/video/module/report/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic v(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method private v()V
    .locals 3

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->g(I)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setUnitId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setRewardUnitSetting(Lcom/mbridge/msdk/videocommon/setting/c;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->a(Lcom/mbridge/msdk/video/signal/a$a;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m0:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->c()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m0:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->a()D

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m0:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$i;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$i;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->a(Lcom/mbridge/msdk/mbsignalcommon/mraid/d$b;)V

    :cond_1
    return-void
.end method

.method static synthetic w(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method private w()V
    .locals 5

    const-string v0, "x"

    :try_start_0
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    const-string v2, "temp_container"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v2, :cond_0

    const-string v2, "web_view"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v2, :cond_1

    const-string v2, "mbridge_video_view"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v2, :cond_1

    const-string v2, "player_view"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v4, v4, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-eqz v0, :cond_2

    const-string v2, "2000136"

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic x(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method private y()V
    .locals 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$j;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$j;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    return-object p0
.end method


# virtual methods
.method protected b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-interface {v0, v1, p1}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(Ljava/lang/String;)V

    return-void
.end method

.method public canBackPress()Z
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->canBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public defaultLoad(ILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->superDefaultLoad(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setTemplateRenderSucc(Z)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->addOrderViewData(Ljava/util/List;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setUnitID(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getCloseBtnTime()I

    move-result v1

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setCloseDelayTime(I)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setPlayCloseBtnTm(I)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    new-instance v2, Lcom/mbridge/msdk/video/module/listener/impl/h;

    iget-object v5, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    iget-object v7, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    new-instance v10, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;

    invoke-direct {v10, v0, v3}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    iget-object v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    move-result v11

    iget-boolean v12, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/mbridge/msdk/video/module/listener/impl/h;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/videocommon/entity/c;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/listener/a;IZ)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v1

    iget v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    invoke-interface {v1, v2}, Lcom/mbridge/msdk/video/signal/a;->g(I)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showPlayableView()V

    goto/16 :goto_2

    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b0:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->loadModuleDatas()V

    iget-object v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->E()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getH5CloseType()I

    move-result v2

    if-eqz v2, :cond_2

    move v12, v2

    goto :goto_0

    :cond_2
    move v12, v1

    :goto_0
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    new-instance v2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;

    iget-object v4, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    iget-object v5, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v2, v0, v4, v5}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Landroid/app/Activity;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setContainerViewOnNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    :cond_3
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVst()I

    move-result v1

    const/4 v2, -0x2

    if-le v1, v2, :cond_4

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVst()I

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->F()I

    move-result v1

    :goto_1
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    iget v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a(II)I

    move-result v1

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setVst(I)V

    :cond_5
    move v13, v1

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1, v13}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoSkipTime(I)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    new-instance v2, Lcom/mbridge/msdk/video/module/listener/impl/m;

    iget-object v6, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v7, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v8, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    iget-object v9, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    new-instance v14, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$p;

    invoke-direct {v14, v0, v3}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$p;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    iget-object v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    move-result v15

    iget-boolean v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    iget-object v4, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/setting/c;->C()I

    move-result v17

    move-object v4, v2

    move-object v5, v1

    move/from16 v16, v3

    invoke-direct/range {v4 .. v17}, Lcom/mbridge/msdk/video/module/listener/impl/m;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Lcom/mbridge/msdk/video/module/MBridgeContainerView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;IILcom/mbridge/msdk/video/module/listener/a;IZI)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->defaultShow()V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    new-instance v13, Lcom/mbridge/msdk/video/module/listener/impl/b;

    iget-object v3, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v5, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    iget-object v7, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    new-instance v10, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;

    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    iget-object v4, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v10, v0, v2, v4}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Landroid/app/Activity;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    move-result v11

    iget-boolean v12, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    move-object v2, v13

    move-object v4, v1

    invoke-direct/range {v2 .. v12}, Lcom/mbridge/msdk/video/module/listener/impl/b;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Lcom/mbridge/msdk/video/module/MBridgeContainerView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/listener/a;IZ)V

    invoke-virtual {v1, v13}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->defaultShow()V

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q()V

    goto :goto_3

    :cond_6
    invoke-direct/range {p0 .. p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_3
    return-void
.end method

.method public findID(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findLayout(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findMBridgeContainerView()Lcom/mbridge/msdk/video/module/MBridgeContainerView;
    .locals 1

    const-string v0, "mbridge_video_templete_container"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    return-object v0
.end method

.method public findMBridgeVideoView()Lcom/mbridge/msdk/video/module/MBridgeVideoView;
    .locals 1

    const-string v0, "mbridge_video_templete_videoview"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    return-object v0
.end method

.method public findWindVaneWebView()Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 4

    const-string v0, "_"

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/a$a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/a$a;->b()Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    const/16 v1, 0x5e

    const/16 v2, 0x11f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v2, v0}, Lcom/mbridge/msdk/videocommon/a;->a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/videocommon/a$a;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v1, v0}, Lcom/mbridge/msdk/videocommon/a;->a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/videocommon/a$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/a$a;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v2, v1}, Lcom/mbridge/msdk/videocommon/a;->b(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v1, v2}, Lcom/mbridge/msdk/videocommon/a;->b(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :goto_1
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/a$a;->b()Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewTransparent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :goto_2
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdEvents()Lcom/iab/omid/library/mmadbridge/adsession/a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    return-object v0
.end method

.method public getAdSession()Lcom/iab/omid/library/mmadbridge/adsession/b;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    return-object v0
.end method

.method public getCampaign()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method protected getContentLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getH5CloseType()I
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/video/signal/impl/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/impl/a;->l()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getH5DialogRole()I
    .locals 1

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getH5MuteState()I
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/video/signal/impl/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/impl/a;->m()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    return-object v0
.end method

.method protected getIsShowingTransparent()Z
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/video/signal/impl/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/impl/a;->p()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutID()I
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    if-eqz v0, :cond_0

    const-string v0, "mbridge_reward_activity_video_templete_transparent"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findLayout(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_0
    const-string v0, "mbridge_reward_activity_video_templete"

    goto :goto_0

    :goto_1
    return v0
.end method

.method public getVideoEvents()Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Landroid/view/LayoutInflater;

    return-void
.end method

.method public initViews()Z
    .locals 1

    const-string v0, "mbridge_video_templete_progressbar"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b0:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHasDestoryed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Z

    return v0
.end method

.method public isLoadSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->P:Z

    return v0
.end method

.method public loadModuleDatas()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getH5MuteState()I

    move-result v1

    if-eqz v1, :cond_0

    iput v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    :cond_0
    iget-object v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->E()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getH5CloseType()I

    move-result v2

    if-eqz v2, :cond_1

    move v10, v2

    goto :goto_0

    :cond_1
    move v10, v1

    :goto_0
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setSoundState(I)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/download/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setPlayURL(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVst()I

    move-result v1

    const/4 v2, -0x2

    if-le v1, v2, :cond_2

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVst()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->F()I

    move-result v1

    :goto_1
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a(II)I

    move-result v1

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setVst(I)V

    :cond_3
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoSkipTime(I)V

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/setting/c;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCloseAlert(I)V

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getBufferTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setBufferTimeout(I)V

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    new-instance v15, Lcom/mbridge/msdk/video/module/listener/impl/n;

    iget-object v4, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    iget-object v5, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    iget-object v7, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    new-instance v12, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$p;

    const/4 v14, 0x0

    invoke-direct {v12, v0, v14}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$p;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    iget-object v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    move-result v13

    iget-boolean v11, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    iget-object v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/setting/c;->C()I

    move-result v16

    move-object v3, v15

    move/from16 v17, v11

    move v11, v1

    move/from16 v14, v17

    move/from16 v17, v1

    move-object v1, v15

    move/from16 v15, v16

    invoke-direct/range {v3 .. v15}, Lcom/mbridge/msdk/video/module/listener/impl/n;-><init>(Lcom/mbridge/msdk/video/signal/factory/IJSFactory;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;IILcom/mbridge/msdk/video/module/listener/a;IZI)V

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-boolean v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setShowingTransparent(Z)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    iget-boolean v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:I

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-eq v1, v2, :cond_4

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->I:I

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->n:I

    iget v4, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->o:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setIVRewardEnable(III)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getH5DialogRole()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setDialogRole(I)V

    :cond_5
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->addOrderViewData(Ljava/util/List;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setUnitID(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getCloseBtnTime()I

    move-result v1

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setCloseDelayTime(I)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setPlayCloseBtnTm(I)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->D()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setVideoInteractiveType(I)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setEndscreenType(I)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    move/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setVideoSkipTime(I)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-boolean v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setShowingTransparent(Z)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setJSFactory(Lcom/mbridge/msdk/video/signal/factory/b;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v1

    iget v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    invoke-interface {v1, v2}, Lcom/mbridge/msdk/video/signal/a;->g(I)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    new-instance v11, Lcom/mbridge/msdk/video/module/listener/impl/h;

    iget-object v3, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v4, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    iget-object v5, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    new-instance v8, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;

    const/4 v2, 0x0

    invoke-direct {v8, v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    move-result v9

    iget-boolean v10, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/mbridge/msdk/video/module/listener/impl/h;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/videocommon/entity/c;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/listener/a;IZ)V

    invoke-virtual {v1, v11}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showPlayableView()V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    new-instance v12, Lcom/mbridge/msdk/video/module/listener/impl/c;

    iget-object v3, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    iget-object v4, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    iget-object v6, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    new-instance v9, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;

    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    iget-object v10, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v9, v0, v2, v10}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Landroid/app/Activity;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    move-result v10

    iget-boolean v11, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/mbridge/msdk/video/module/listener/impl/c;-><init>(Lcom/mbridge/msdk/video/signal/factory/IJSFactory;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/listener/a;IZ)V

    invoke-virtual {v1, v12}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V

    :goto_2
    iget-boolean v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setMBridgeClickMiniCardViewTransparent()V

    :cond_7
    return-void
.end method

.method protected n()Z
    .locals 11

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findWindVaneWebView()Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findMBridgeVideoView()Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoLayout(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setIsIV(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Lcom/mbridge/msdk/video/dynview/listener/a;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    iget v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    iget v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->L:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCamPlayOrderCallback(Lcom/mbridge/msdk/video/dynview/listener/a;Ljava/util/List;II)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->E:I

    iget v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->F:I

    iget v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->G:I

    iget v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->H:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setNotchPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findMBridgeContainerView()Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    move-result-object v5

    iput-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-eqz v0, :cond_1

    iget v6, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->D:I

    iget v7, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->E:I

    iget v8, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->F:I

    iget v9, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->G:I

    iget v10, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->H:I

    invoke-virtual/range {v5 .. v10}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotchPadding(IIIII)V

    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v0

    const-string v1, "i_l_s_t_r_i"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$d;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$d;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setPlayerViewAttachListener(Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;)V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$e;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$e;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setIPlayVideoViewLayoutCallBack(Lcom/mbridge/msdk/video/dynview/listener/f;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->initViews()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method protected o()Z
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isShowingAlertView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->checkChinaShowingAlertViewState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isRewardPopViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isShowingAlertView()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isRewardPopViewShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->notifyVideoClose()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v0

    const v1, 0x4c531a

    if-eq v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->i0:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isMiniCardShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->onMiniEndcardBackPress()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->onBackPress()V

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k0:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->onPlayableBackPress()V

    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->j0:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->onEndcardBackPress()V

    :cond_7
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/f;->miniCardShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lcom/mbridge/msdk/video/signal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/b;->e()V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->canBackPress()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l0:Z

    if-nez v1, :cond_b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l0:Z

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    const-string v1, "onBackPressed can\'t excute"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 9

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k()V

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l0:Z

    :try_start_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/video/bt/module/orglistener/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/mbridge/msdk/video/bt/module/orglistener/d;-><init>(Landroid/content/Context;ZLcom/mbridge/msdk/videocommon/setting/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/video/bt/module/orglistener/h;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/module/orglistener/c;-><init>(Lcom/mbridge/msdk/video/bt/module/listener/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/orglistener/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/mbridge/msdk/video/bt/module/orglistener/d;-><init>(Landroid/content/Context;ZLcom/mbridge/msdk/videocommon/setting/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/video/bt/module/orglistener/h;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    :goto_1
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/orglistener/e;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/module/orglistener/e;-><init>(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/video/bt/module/orglistener/h;)V

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->registerErrorListener(Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a(Lcom/mbridge/msdk/videocommon/setting/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setShowingTransparent()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getLayoutID()I

    move-result v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "layoutID not found"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getContentLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

    const-string v1, "not found View IDS"

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;->onError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->P:Z

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Z

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onDestroy()V

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->setChinaDestroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->releasePlayer()V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->clearWebView()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a;->release()V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/setting/h;->g(Ljava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->c0:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r()V

    :cond_7
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->f0:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s()V

    :cond_8
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m0:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->d()V

    :cond_9
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v0, :cond_a

    const-string v0, "omsdk"

    const-string v2, "tc onDestroy"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->e()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->c()V

    iput-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    :cond_a
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$g;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$g;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_c
    :goto_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->f0:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s()V

    :cond_d
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->e0:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/j;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/j;->videoOperate(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setOnPause()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->onActivityPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onResume()V

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t()V

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isMiniCardShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->onActivityResume()V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setOnResume()V

    :cond_2
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->e0:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/j;->videoOperate(I)V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/view/View;)V

    :cond_4
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->h0:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onStop()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->onActivityStop()V

    :cond_0
    return-void
.end method

.method protected p()V
    .locals 9

    iget-object v7, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v8, Lcom/mbridge/msdk/video/signal/factory/b;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    new-instance v6, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    move-object v0, v8

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/mbridge/msdk/video/signal/factory/b;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/mbridge/msdk/video/module/MBridgeVideoView;Lcom/mbridge/msdk/video/module/MBridgeContainerView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/video/signal/a$a;)V

    iput-object v8, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/video/signal/factory/b;->a(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->registerJsFactory(Lcom/mbridge/msdk/video/signal/factory/IJSFactory;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$h;

    invoke-direct {v3, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$h;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1, v3}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q()V

    const-string v0, "preload template webview is null or load error"

    const/4 v1, 0x0

    if-eqz v7, :cond_4

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mbridge_video_templete_webview_parent"

    const-string v6, "id"

    invoke-static {v4, v5, v6}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v7, v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->defaultLoad(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mbridge/msdk/video/signal/impl/k;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v()V

    invoke-virtual {v7}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/video/signal/impl/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/impl/k;->v()I

    move-result v0

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mbridge/msdk/video/signal/f;->readyStatus(I)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z()V

    invoke-virtual {v7}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/video/signal/impl/k;

    iget-object v0, v0, Lcom/mbridge/msdk/video/signal/impl/a;->m:Lcom/mbridge/msdk/video/signal/a$a;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a$a;->onInitSuccess()V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->V:I

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setWebViewFront(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a;->b()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v6}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->defaultLoad(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public preload()V
    .locals 0

    return-void
.end method

.method public receiveSuccess()V
    .locals 4

    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    const-string v1, "receiveSuccess ,start hybrid"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q0:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public registerErrorListener(Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

    return-void
.end method

.method public setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/video/signal/a;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    :cond_0
    return-void
.end method

.method public setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/video/signal/a;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    :cond_1
    return-void
.end method

.method public setCamPlayOrderCallback(Lcom/mbridge/msdk/video/dynview/listener/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Lcom/mbridge/msdk/video/dynview/listener/a;

    iput p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    return-void
.end method

.method public setCampOrderViewData(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    :cond_0
    iput p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->L:I

    return-void
.end method

.method public setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 3

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/scheme/applet/AppletModelManager;->getInstance()Lcom/mbridge/msdk/scheme/applet/AppletModelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletModelManager;->get(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isSupportWxScheme()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r0:Z

    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_3
    return-void
.end method

.method public setCampaignDownLoadTask(Lcom/mbridge/msdk/videocommon/download/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    return-void
.end method

.method public setCampaignExpired(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->l:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    move-result v0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setDeveloperExtraData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J:Ljava/lang/String;

    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    return-void
.end method

.method public setJSFactory(Lcom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    return-void
.end method

.method public setMBridgeTempCallback(Lcom/mbridge/msdk/video/bt/module/listener/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    return-void
.end method

.method public setMatchParent()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    return-void
.end method

.method public setMediaPlayerUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNotchPadding(IIIII)V
    .locals 7

    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->D:I

    iput p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->E:I

    iput p3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->F:I

    iput p4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->G:I

    iput p5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->H:I

    invoke-static {p1, p2, p3, p4, p5}, Lcom/mbridge/msdk/foundation/tools/b0;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oncutoutfetched"

    invoke-virtual {v0, v1, v3, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setNotchPadding(IIII)V

    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v1, :cond_2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotchPadding(IIIII)V

    :cond_2
    return-void
.end method

.method public setShowRewardListener(Lcom/mbridge/msdk/video/bt/module/orglistener/h;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    return-void
.end method

.method public setShowingTransparent()V
    .locals 3

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getIsShowingTransparent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_reward_theme"

    const-string v2, "style"

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    return-void
.end method

.method public setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/video/signal/a;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    :cond_1
    return-void
.end method

.method public setWebViewFront(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->V:I

    return-void
.end method

.method public superDefaultLoad(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;->a(Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected x()V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->N:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setMatchParent()V

    :cond_0
    return-void
.end method

.method protected z()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getIsShowingTransparent()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->i(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/t0;->h(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/e;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;)I

    move-result v4

    if-ne v0, v2, :cond_0

    add-int/2addr v1, v4

    goto :goto_0

    :cond_0
    add-int/2addr v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/t0;->f(Landroid/content/Context;)I

    move-result v3

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->b()I

    move-result v4

    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    move v4, v0

    :cond_3
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/g;

    move-result-object v5

    invoke-interface {v5, v0, v4, v1, v3}, Lcom/mbridge/msdk/video/signal/g;->a(IIII)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/t0;->d(Landroid/content/Context;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "name"

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/entity/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "amount"

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/entity/c;->a()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "id"

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->i:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "userId"

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "reward"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playVideoMute"

    iget v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "extra"

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_2
    sget-object v3, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    sget-object v3, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    const-string v3, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v2

    const-string v3, "2000133"

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2, v3, v4, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mbridge/msdk/video/signal/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v2, "oncutoutfetched"

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/mbridge/msdk/video/signal/a;->b(Z)V

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->setChinaCallBackStatus(Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    :cond_5
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->loadModuleDatas()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_4
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    return-void
.end method
