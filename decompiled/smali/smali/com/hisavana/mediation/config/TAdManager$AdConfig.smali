.class public final Lcom/hisavana/mediation/config/TAdManager$AdConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/config/TAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdConfig"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:I

.field public k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

.field public l:Z

.field public m:I

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a:Z

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->b:Z

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->i:Z

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->l:Z

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->o:Z

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->p:Z

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->q:Z

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->r:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->s:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->t:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->t(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->u(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->b:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->v(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->a(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->b(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->e:Z

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->f:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->c(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->d(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->i:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->e(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->f(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->j:I

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->g(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->h(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->l:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->i(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->m:I

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->j(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->n:J

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->k(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->o:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->l(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->p:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->m(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->q:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->n(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->r:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->o(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->p(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->t:Z

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->q(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hisavana/common/bean/AppStartInfo;->channel:Ljava/lang/String;

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->r(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/hisavana/common/bean/AppStartInfo;->extInfo:Ljava/util/Map;

    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->s(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    move-result p1

    sput-boolean p1, Lcom/hisavana/common/bean/AdMuteStatus;->MUTE_ALL:Z

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/mediation/config/TAdManager$AdConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/hisavana/mediation/config/TAdManager$AdConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->f:Z

    return p1
.end method

.method public static synthetic c(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->b:Z

    return p0
.end method

.method public static synthetic d(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a:Z

    return p0
.end method

.method public static synthetic e(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public checkEnableRewardedToast()Z
    .locals 1

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->a()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->a()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->p:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public checkEnableVideoAd()Z
    .locals 1

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->a()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->a()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->r:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public checkEnableWebRecommendFeature()Z
    .locals 1

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->a()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->a()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->q:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAppIconId()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->j:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeSeatIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultMaterialMaxSize()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->m:I

    return v0
.end method

.method public getDefaultVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->n:J

    return-wide v0
.end method

.method public getPangleAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgEvn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->b:Z

    return v0
.end method

.method public getShouldOptimizeImageLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->o:Z

    return v0
.end method

.method public isClosePangleWebFileLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->t:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a:Z

    return v0
.end method

.method public isEnableGDPR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->e:Z

    return v0
.end method

.method public isInitAdmob()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->l:Z

    return v0
.end method

.method public isInitAlliance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->i:Z

    return v0
.end method

.method public isLite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->f:Z

    return v0
.end method

.method public isTestDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d:Z

    return v0
.end method

.method public releaseCloudListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    return-void
.end method

.method public setCodeSeatIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
