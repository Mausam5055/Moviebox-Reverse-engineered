.class public final Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/config/TAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdConfigBuilder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

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

.field public i:Ljava/lang/String;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:J

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->c:Z

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->d:Z

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->e:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->f:Z

    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->m:Z

    iput-boolean v2, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->p:Z

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->q:Z

    iput-boolean v2, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->r:Z

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->s:Z

    iput-boolean v2, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->t:Z

    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->u:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->v:Z

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->e:Z

    return p0
.end method

.method public static synthetic b(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->p:Z

    return p0
.end method

.method public static synthetic c(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->f:Z

    return p0
.end method

.method public static synthetic e(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)I
    .locals 0

    iget p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->b:I

    return p0
.end method

.method public static synthetic g(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    return-object p0
.end method

.method public static synthetic h(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->l:Z

    return p0
.end method

.method public static synthetic i(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)I
    .locals 0

    iget p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->n:I

    return p0
.end method

.method public static synthetic j(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)J
    .locals 2

    iget-wide v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->o:J

    return-wide v0
.end method

.method public static synthetic k(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->q:Z

    return p0
.end method

.method public static synthetic l(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->r:Z

    return p0
.end method

.method public static synthetic m(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->s:Z

    return p0
.end method

.method public static synthetic n(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->t:Z

    return p0
.end method

.method public static synthetic o(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->u:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->v:Z

    return p0
.end method

.method public static synthetic q(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic r(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->j:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic s(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->m:Z

    return p0
.end method

.method public static synthetic t(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->c:Z

    return p0
.end method

.method public static synthetic u(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->d:Z

    return p0
.end method

.method public static synthetic v(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/hisavana/mediation/config/TAdManager$AdConfig;
    .locals 1

    new-instance v0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    invoke-direct {v0, p0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;-><init>(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)V

    return-object v0
.end method

.method public closePangleWebFileLock(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->v:Z

    return-object p0
.end method

.method public initAlliance(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->f:Z

    return-object p0
.end method

.method public initPangleAdvance(Ljava/lang/String;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->u:Ljava/lang/String;

    return-object p0
.end method

.method public isInitAdMob(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->l:Z

    return-object p0
.end method

.method public setAhaChannel(Ljava/lang/String;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setAppIconId(I)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->b:I

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 1

    const-string v0, "appId can not be null"

    invoke-static {p1, v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public setCloudCompleteListener(Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    return-object p0
.end method

.method public setCodeSeatIds(Ljava/util/List;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->h:Ljava/util/List;

    return-object p0
.end method

.method public setCustomParams(Ljava/util/Map;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-lt v0, v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public setDebug(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->c:Z

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->d:Z

    return-object p0
.end method

.method public setDefaultMaterialCacheSize(I)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->n:I

    return-object p0
.end method

.method public setEnableVideoAd(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->t:Z

    return-object p0
.end method

.method public setEnableWebRecommendFeature(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->s:Z

    return-object p0
.end method

.method public setInternalDefaultAdVersion(J)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->o:J

    return-object p0
.end method

.method public setMuteVideo(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 3

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->m:Z

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK init , muteAllAd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TAdManager"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRewardedCompletionToastEnabled(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->r:Z

    return-object p0
.end method

.method public setShouldOptimizeImageLoading(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->q:Z

    return-object p0
.end method

.method public testDevice(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->e:Z

    return-object p0
.end method
