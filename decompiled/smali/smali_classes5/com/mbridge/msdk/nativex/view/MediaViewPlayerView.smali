.class public Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;,
        Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;
    }
.end annotation


# static fields
.field private static L:Landroid/os/Handler;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private D:Lcom/mbridge/msdk/nativex/listener/a;

.field private E:Ljava/util/Timer;

.field private F:Lcom/mbridge/msdk/videocommon/download/a;

.field private G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

.field private H:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;

.field private I:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field private J:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private K:Z

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private volatile l:I

.field private m:Z

.field private n:Z

.field private o:Landroid/view/TextureView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/view/Surface;

.field private r:Landroid/widget/ProgressBar;

.field private s:Lcom/mbridge/msdk/videocommon/view/MyImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/view/View;

.field private y:Landroid/graphics/drawable/AnimationDrawable;

.field private z:Landroid/view/animation/AlphaAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->L:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->I:Lcom/iab/omid/library/mmadbridge/adsession/b;

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->K:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l:I

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->I:Lcom/iab/omid/library/mmadbridge/adsession/b;

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->K:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->q:Landroid/view/Surface;

    return-object p1
.end method

.method private a()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->L:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->E:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private a(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-ltz p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaViewPlayerView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lcom/mbridge/msdk/videocommon/view/MyImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    return-object p0
.end method

.method private b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i:Z

    return p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    return p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h:Z

    return p1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m()V

    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    return p1
.end method

.method private e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f()V

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n:Z

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    return p1
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->x:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h:Z

    return p0
.end method

.method private g()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b:Z

    return p0
.end method

.method private getPlayUrl()Ljava/lang/String;
    .locals 5

    const-string v0, "MediaViewPlayerView"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->F:Lcom/mbridge/msdk/videocommon/download/a;

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v2

    const/16 v3, 0x11f

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->A:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->F:Lcom/mbridge/msdk/videocommon/download/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->F:Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->F:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/download/a;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v2

    :catch_1
    move-exception v2

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_5

    return-object v2

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method static synthetic h(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lcom/mbridge/msdk/nativex/listener/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mbridge/msdk/nativex/listener/a;

    return-object p0
.end method

.method private h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/image/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/image/b;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/widget/MBImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/widget/MBImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$f;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$f;-><init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lcom/mbridge/msdk/playercommon/VideoNativePlayer;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    return-object p0
.end method

.method private i()V
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setSelfVideoFeedsPlayerListener(Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V

    return-void
.end method

.method static synthetic j(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    return-object p0
.end method

.method private j()V
    .locals 5

    const-string v0, "id"

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_nativex_playerview"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "mbridge_ll_loading"

    invoke-static {v2, v4, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "mbridge_textureview"

    invoke-static {v2, v4, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->o:Landroid/view/TextureView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->o:Landroid/view/TextureView;

    new-instance v4, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;

    invoke-direct {v4, p0, v3}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;-><init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;)V

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_progress"

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_iv_playend_pic"

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/videocommon/view/MyImageView;

    iput-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_iv_play"

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_iv_pause"

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_iv_sound"

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_view_cover"

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->x:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_iv_sound_animation"

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->y:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k()V

    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;-><init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;-><init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$c;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$c;-><init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n()V

    return-void
.end method

.method private l()V
    .locals 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c()V

    return-void
.end method

.method private m()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c()V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic m(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    return p0
.end method

.method static synthetic n(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    return-object p0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->x:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private o()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e()V

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->q:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->start(Landroid/view/Surface;)V

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->start()V

    :goto_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaViewPlayerView"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic o(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->p()V

    return-void
.end method

.method private p()V
    .locals 4

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->E:Ljava/util/Timer;

    new-instance v0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$g;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$g;-><init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->E:Ljava/util/Timer;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic p(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f()V

    return-void
.end method


# virtual methods
.method public closeSound()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_nativex_sound_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->closeSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->p(F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "OMSDK"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public curIsFullScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    return v0
.end method

.method public getCampaign()Lcom/mbridge/msdk/out/Campaign;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public getIsActiviePause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    return v0
.end method

.method public gonePauseView()V
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->L:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$e;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$e;-><init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public halfLoadingViewisVisible()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->loadingViewIsVisible()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrepare()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hasPrepare()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initPlayerViewData(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b:Z

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p5, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->F:Lcom/mbridge/msdk/videocommon/download/a;

    iput-object p6, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->A:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    iget-object v7, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    const/4 v5, 0x1

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->initParameter(Ljava/lang/String;ZZLandroid/view/View;Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h()V

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaViewPlayerView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a:Z

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->isComplete()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBufferingEnd()V
    .locals 0

    return-void
.end method

.method public onBufferingStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBufferingTimeOut(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClickPlayButton()V
    .locals 6

    const-string v0, "MediaViewPlayerView"

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setIsComplete(Z)V

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startOrPlayVideo() hasPrepare():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsNeedToRepeatPrepare:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V

    goto :goto_0

    :cond_1
    const-string v2, "\u70b9\u51fb\u64ad\u653e playVideo()"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    iget-object v5, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->q:Landroid/view/Surface;

    invoke-virtual {v2, v3, v4, v5}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->replaySameSource(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    :goto_0
    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mbridge/msdk/nativex/listener/a;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/mbridge/msdk/nativex/listener/a;->d()V

    :cond_2
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public onClickPlayerView()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->gonePauseView()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$d;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$d;-><init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n()V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->x:Landroid/view/View;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onPlayCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mbridge/msdk/nativex/listener/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mbridge/msdk/nativex/listener/a;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/nativex/listener/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;->a()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPlayError(Ljava/lang/String;)V
    .locals 4

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m()V

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->K:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->q:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->K:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaViewPlayerView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPlayProgress(II)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    iput p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaViewPlayerView"

    invoke-static {v0, p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onPlayProgressMS(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a(II)V

    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaViewPlayerView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPlayStarted(I)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mbridge/msdk/nativex/listener/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mbridge/msdk/nativex/listener/a;

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/nativex/listener/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openSound()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_nativex_sound_open"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->openSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->p(F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "OMSDK"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public pause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_1

    const-string v0, "omsdk"

    const-string v1, "mediaviewplayerview pause"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->j()V

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public playVideo()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    :cond_5
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e()V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->q:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->l()V

    :cond_7
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->openSound()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->closeSound()V

    :goto_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public registerView(Lcom/iab/omid/library/mmadbridge/adsession/b;)V
    .locals 4

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->I:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->d(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->p:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0, v1, v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    sget-object v3, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    invoke-virtual {p1, v0, v3, v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v3, v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v3, v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAllowLoopPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    return-void
.end method

.method public setEnterFullScreen()V
    .locals 3

    const-string v0, "MediaViewPlayerView"

    :try_start_0
    const-string v1, "setEnterFullScreen"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h:Z

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setExitFullScreen()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l()V

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaViewPlayerView"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setIsActivePause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    return-void
.end method

.method public setIsComplete(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setIsComplete(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaViewPlayerView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setIsFrontDesk(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setIsFrontDesk(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaViewPlayerView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setMediaViewPlayListener(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;

    return-void
.end method

.method public setOnMediaViewPlayerViewListener(Lcom/mbridge/msdk/nativex/listener/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mbridge/msdk/nativex/listener/a;

    return-void
.end method

.method public setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-void
.end method

.method public showPlayView()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showProgressView(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n:Z

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showSoundIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d()V

    :goto_0
    return-void
.end method

.method public startOrPlayVideo()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->playVideo()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->stop()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public unregisterView()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->I:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->e()V

    :cond_0
    return-void
.end method
