.class public Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:F

.field private F:Z

.field private G:Z

.field protected H:Z

.field protected I:Z

.field protected J:Z

.field protected K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field protected M:Lcom/mbridge/msdk/splash/view/MBSplashView;

.field protected N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field protected O:Lcom/mbridge/msdk/shake/MBShakeView;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field protected S:Lcom/mbridge/msdk/shake/b;

.field private a:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

.field private b:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/mbridge/msdk/widget/FeedBackButton;

.field protected f:Landroid/widget/TextView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field protected m:Landroid/widget/RelativeLayout;

.field protected n:Landroid/widget/TextView;

.field protected o:Landroid/widget/TextView;

.field protected p:Landroid/widget/TextView;

.field protected q:Landroid/widget/TextView;

.field protected r:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

.field protected s:I

.field private t:I

.field private u:I

.field private v:I

.field protected w:I

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->I:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->J:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->I:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->J:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->I:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->J:Z

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->K:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->L:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->b()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->d()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->s:I

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->c()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->v:I

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->f()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->u:I

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->a()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->w:I

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->i()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->x:I

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->j()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->y:I

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->k()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->z:I

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->g()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->A:I

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->m()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->H:Z

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->e()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->B:I

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->d()V

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->c()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters is NULL, can\'t gen view."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->g:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->K:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->K:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->K:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v2, v3}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/feedback/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->K:Ljava/lang/String;

    new-instance v3, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$g;

    invoke-direct {v3, p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$g;-><init>(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V

    invoke-virtual {v0, v2, v3}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->K:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->e:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v0, v2, v3}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/widget/FeedBackButton;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->K:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->K:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->e:Lcom/mbridge/msdk/widget/FeedBackButton;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->G:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->setCountDownStatus(Z)V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->A:I

    return p0
.end method

.method private c()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBSplashNativeView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->a()V

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->g()V

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->h()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->e()V

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->i()V

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->j()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b()V

    iget v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->s:I

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->updateCountDown(I)V

    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->j:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    return-object p0
.end method

.method private d()V
    .locals 5

    const-string v0, "string"

    const-string v1, "id"

    :try_start_0
    iget v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->A:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const-string v4, "layout"

    if-ne v2, v3, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_splash_portrait"

    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_splash_landscape"

    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_iv_image_bg"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->a:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_iv_image"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_topcontroller"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_iv_link"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_feedback"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/widget/FeedBackButton;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->e:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_tv_skip"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_landscape_foreground"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_iv_icon"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->h:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_tv_title"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_iv_foregroundimage"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->j:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_tv_adrect"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_layout_appinfo"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_tv_appinfo"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_tv_privacy"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_tv_permission"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_tv_app_desc"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_tv_click"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->r:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_tv_adcircle"

    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_splash_count_time_can_skip"

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_splash_count_time_can_skip_not"

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mbridge_splash_count_time_can_skip_s"

    invoke-static {v3, v4, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->Q:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->R:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->P:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->C:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBSplashNativeView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$b;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$b;-><init>(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->h:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->f()V

    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->a:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    return-object p0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;-><init>(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->h:Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    return-object p0
.end method

.method private h()V
    .locals 7

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$c;

    invoke-direct {v5, p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$c;-><init>(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V

    const/4 v0, 0x3

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(ILandroid/widget/ImageView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;ZLcom/mbridge/msdk/foundation/feedback/a;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_splash_m_circle"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MBSplashNativeView"

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->A:I

    const/4 v3, 0x1

    const/4 v4, 0x4

    const-string v5, "AD"

    const-string v6, "\u5e7f\u544a"

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->G:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->B:I

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->l:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->F:Z

    if-eqz v1, :cond_1

    move-object v5, v6

    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->B:I

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->k:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->F:Z

    if-eqz v1, :cond_4

    move-object v5, v6

    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private i()V
    .locals 3

    iget v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->v:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->r:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->r:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->r:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getAdCall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->initView(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    iget v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$d;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$d;-><init>(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->r:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    new-instance v1, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$e;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$e;-><init>(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;-><init>(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setCountDownStatus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->t:I

    invoke-interface {v0, p1, v1}, Lcom/mbridge/msdk/splash/middle/a;->a(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->D:F

    iget v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->E:F

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/splash/common/util/a;->a(IFF)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/splash/common/util/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/splash/middle/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBSplashNativeView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/splash/middle/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    :try_start_0
    iget v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->O:Lcom/mbridge/msdk/shake/MBShakeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->S:Lcom/mbridge/msdk/shake/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/shake/a;->a()Lcom/mbridge/msdk/shake/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->S:Lcom/mbridge/msdk/shake/b;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/shake/a;->a(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBSplashNativeView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->release()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->D:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->E:F

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->S:Lcom/mbridge/msdk/shake/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/shake/a;->a()Lcom/mbridge/msdk/shake/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->S:Lcom/mbridge/msdk/shake/b;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/shake/a;->b(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->S:Lcom/mbridge/msdk/shake/b;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBSplashNativeView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setIsPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->I:Z

    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->c:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->C:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr p2, v1

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr p3, v1

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBSplashNativeView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateCountDown(I)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->t:I

    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->H:Z

    const-string v1, " "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->P:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->P:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->R:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
