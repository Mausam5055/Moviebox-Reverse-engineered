.class public abstract Lce/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/Context;

.field public c:Lcom/hisavana/common/utils/RunTimer;

.field public d:Lbe/c;

.field public e:Z

.field public f:Z

.field public g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

.field public h:Lbe/t;

.field public i:Z

.field public j:I

.field public k:I

.field public l:J

.field public m:Z

.field public mFillSource:I

.field public final n:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public u:Z

.field public v:I

.field public w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

.field public x:Ljava/lang/String;

.field public y:J

.field public z:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lce/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lce/b;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lce/b;->e:Z

    iput-boolean v0, p0, Lce/b;->f:Z

    const v1, 0xea60

    iput v1, p0, Lce/b;->j:I

    iput v0, p0, Lce/b;->k:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lce/b;->l:J

    iput-boolean v0, p0, Lce/b;->m:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lce/b;->n:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    iput v0, p0, Lce/b;->v:I

    new-instance v0, Lce/b$a;

    invoke-direct {v0, p0}, Lce/b$a;-><init>(Lce/b;)V

    iput-object v0, p0, Lce/b;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lce/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lce/b;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lce/b;->e:Z

    iput-boolean v0, p0, Lce/b;->f:Z

    const v1, 0xea60

    iput v1, p0, Lce/b;->j:I

    iput v0, p0, Lce/b;->k:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lce/b;->l:J

    iput-boolean v0, p0, Lce/b;->m:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lce/b;->n:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    iput v0, p0, Lce/b;->v:I

    new-instance v0, Lce/b$a;

    invoke-direct {v0, p0}, Lce/b$a;-><init>(Lce/b;)V

    iput-object v0, p0, Lce/b;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lce/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/e;->i(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lce/b;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lce/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lce/b;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lce/b;->e:Z

    iput-boolean v0, p0, Lce/b;->f:Z

    const v1, 0xea60

    iput v1, p0, Lce/b;->j:I

    iput v0, p0, Lce/b;->k:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lce/b;->l:J

    iput-boolean v0, p0, Lce/b;->m:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lce/b;->n:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    iput v0, p0, Lce/b;->v:I

    new-instance v0, Lce/b$a;

    invoke-direct {v0, p0}, Lce/b$a;-><init>(Lce/b;)V

    iput-object v0, p0, Lce/b;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    iput-object p2, p0, Lce/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lce/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/e;->i(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lce/b;->b()V

    return-void
.end method

.method public static synthetic a(Lce/b;)V
    .locals 0

    invoke-virtual {p0}, Lce/b;->o()V

    return-void
.end method

.method public static synthetic b(Lce/b;)V
    .locals 0

    invoke-virtual {p0}, Lce/b;->s()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lbe/c;
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lce/b;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a()V
    .locals 5

    iget-object v0, p0, Lce/b;->z:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v2, "trigger_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v2, "trigger_ts"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v2, "ad_type"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v2, "cld_app_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v2, "cld_code_seat_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v2, "code_seat_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v2, "is_retreatad"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v1

    const-string v2, "cloudControlVersion"

    invoke-virtual {v1, v2}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cld_configure_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v2, "is_preload"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v2, "traffic_group_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v2, "experiment_group_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdCancel(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;D)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lce/b;->d:Lbe/c;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lbe/c;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v1

    iget-object v4, p0, Lce/b;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lce/b;->q:Z

    const/16 v6, 0x64

    invoke-virtual {v1, v4, v6, v3, v5}, Lcom/hisavana/common/bean/AdCache;->getCaches(Ljava/lang/String;IZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisavana/common/interfacz/ICacheAd;

    invoke-interface {v5}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v6

    cmpg-double v6, v6, p2

    if-gez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v5}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v6

    if-nez v6, :cond_0

    instance-of v6, v5, Lcom/hisavana/common/base/BaseAd;

    const-string v7, "request_id"

    if-eqz v6, :cond_1

    check-cast v5, Lcom/hisavana/common/base/BaseAd;

    iget-object v5, v5, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    instance-of v6, v5, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v5}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v5

    iget-object v5, v5, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {v0, v3, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bidding_platform_str"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TBaseAd"

    invoke-virtual {p2, v0, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v3, v4

    :cond_5
    if-eqz p1, :cond_6

    const-string p2, "bid_fail_req_id_arr_hisavana"

    invoke-virtual {p1, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "valid_cache_material_cnt"

    invoke-virtual {p1, p2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method public a(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbe/t;->onError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 3

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lce/b;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v1

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lce/b;->i()Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v2

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setSource(Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setCodeSeatId(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {p1, v0}, Lbe/t;->s(Lcom/hisavana/common/bean/AdditionalInfo;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "scene_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "scene_token"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    const-string v2, "is_offline"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez p2, :cond_0

    iget-object p2, p0, Lce/b;->a:Ljava/lang/String;

    invoke-static {p2}, Lbe/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object p2

    iput-object p2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    :cond_0
    iget-object p2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    const-string v2, "cache_status"

    if-nez p2, :cond_1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object v3, p0, Lce/b;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lce/b;->q:Z

    invoke-virtual {p2, v3, v4}, Lcom/hisavana/common/bean/AdCache;->hasAds(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lce/b;->e:Z

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    :cond_3
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lce/b;->a:Ljava/lang/String;

    const-string p2, "cld_code_seat_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cld_app_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v1, "ts"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "ad_count"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackEnterScene(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lce/b;->a(ZII)V

    return-void
.end method

.method public final a(ZII)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lce/b;->l:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    const-string v3, "TBaseAd"

    if-gez v2, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "isReady interval time is not fit"

    invoke-virtual {p1, v3, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-wide v0, p0, Lce/b;->l:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lce/b;->f:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :cond_2
    :goto_0
    const-string v1, "is_ready_status"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    :try_start_0
    const-string p1, "ad_expire_reason"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "cld_code_seat_id"

    iget-object p2, p0, Lce/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cld_app_id"

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackIsReady(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public abstract a(I)Z
.end method

.method public b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;
    .locals 12

    if-nez p1, :cond_0

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_UNIT_CONFIG_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->isDebug()Z

    move-result v0

    const-string v1, "ad_flow"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloudControlEnable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCloudControlEnable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\ncodeSeatId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ncodeSeatType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nadShowCountLimitDay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nadShowCountLimitHour="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nadShowTimeInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\ncurrentShowInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getLastShowTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inspection info is: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCloudControlEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CLOUD_AD_SEAT_IS_CLOSED:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lce/b;->o:I

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lce/b;->a(I)Z

    move-result v0

    const-string v2, "TBaseAd"

    if-nez v0, :cond_3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "TBaseAd --> code seat type does not match request type"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code seat type does not match request type ---> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_TYPE_LOAD_INCONSISTENCY:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/cloud/hisavana/sdk/common/util/l0;->c(J)J

    move-result-wide v5

    invoke-static {v3, v4}, Lcom/cloud/hisavana/sdk/common/util/l0;->b(J)J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_4

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayZeroClock()J

    move-result-wide v10

    cmp-long v0, v5, v10

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayShowTimes()I

    move-result v0

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v0, v5, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v9, :cond_5

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourZeroClock()J

    move-result-wide v5

    cmp-long v0, v7, v5

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourShowTimes()I

    move-result v0

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v0, v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getLastShowTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    goto :goto_0

    :cond_6
    neg-long v3, v3

    :goto_0
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, -0x3e8

    cmp-long v0, v5, v7

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_7

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "TBaseAd --> ad display did not reach the interval"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad display did not reach the interval,time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_NOT_IN_INTERVAL:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1

    :cond_8
    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "TBaseAd --> ad display has reached the limit of hours"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad display has reached the limit of hour,hour showTimes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_HOUR:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1

    :cond_9
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "TBaseAd --> ad show times can not exceed day show max"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad show times reach the limit of day,day showTimes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_DAY:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-nez v0, :cond_0

    new-instance v0, Lbe/t;

    invoke-direct {v0, p0}, Lbe/t;-><init>(Lce/b;)V

    iput-object v0, p0, Lce/b;->h:Lbe/t;

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "TBaseAd"

    const-string v1, "you should init first"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/b;->a:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/manager/b;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lce/b;->i:Z

    iput p1, p0, Lce/b;->v:I

    new-instance p1, Lce/a;

    invoke-direct {p1, p0}, Lce/a;-><init>(Lce/b;)V

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public b(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbe/t;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method public final b(ZI)V
    .locals 6

    invoke-static {}, Lcom/hisavana/common/tracking/TrackingUtil;->getTriggerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lce/b;->x:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lce/b;->z:Landroid/os/Bundle;

    iget-object v1, p0, Lce/b;->x:Ljava/lang/String;

    const-string v2, "trigger_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lce/b;->y:J

    iget-object v2, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v3, "trigger_ts"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "ad_type"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lce/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdCache;->getValidAndInvalidAdNum(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lt v3, v2, :cond_0

    const/4 v3, 0x0

    aget v3, v0, v3

    aget v0, v0, v1

    iget-object v4, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v5, "cache_valid_ads"

    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v4, "cache_expire_ads"

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lce/b;->z:Landroid/os/Bundle;

    iget-object v3, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestConcurrentCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "multi_count"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lce/b;->z:Landroid/os/Bundle;

    iget v3, p0, Lce/b;->v:I

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRealtimeBiddingWaitTime()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getBiddingWaitTime()Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "bidding_duration"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lce/b;->z:Landroid/os/Bundle;

    iget-object v2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "traffic_group_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lce/b;->z:Landroid/os/Bundle;

    iget-object v2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "experiment_group_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lce/b;->z:Landroid/os/Bundle;

    iget-object v2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    const-string v2, "request_num"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lce/b;->z:Landroid/os/Bundle;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lce/b;->z:Landroid/os/Bundle;

    iget-object v1, p0, Lce/b;->a:Ljava/lang/String;

    const-string v2, "code_seat_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v1, "is_pre_trigger"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lce/b;->z:Landroid/os/Bundle;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cld_app_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lce/b;->z:Landroid/os/Bundle;

    iget-object v0, p0, Lce/b;->a:Ljava/lang/String;

    const-string v1, "cld_code_seat_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string v0, "ad_trigger_status"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lce/b;->z:Landroid/os/Bundle;

    iget p2, p0, Lce/b;->k:I

    const-string v0, "priority_code"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lce/b;->z:Landroid/os/Bundle;

    const-string p2, "is_contain_vulgar"

    iget-boolean v0, p0, Lce/b;->q:Z

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lce/b;->z:Landroid/os/Bundle;

    iget p2, p0, Lce/b;->v:I

    const-string v0, "trigger_mode"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lce/b;->z:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/hisavana/common/tracking/TrackingManager;->trackingADTrigger(Landroid/os/Bundle;)V

    return-void
.end method

.method public c(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdxShowRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getEwShowRate()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v3, v1, :cond_1

    if-ge v2, p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    if-ge v3, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-ge v2, p1, :cond_3

    const/4 v0, 0x2

    :cond_3
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Traffic support config: adxShowRate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ewShowRate "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",current random result is: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TBaseAd"

    invoke-virtual {v2, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public c(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lce/b;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setErrorCode(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    iget-object v1, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v1, p1, v0}, Lbe/t;->d(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_1
    return-void
.end method

.method public abstract c()Z
.end method

.method public clearCurrentAd()V
    .locals 3

    iget-boolean v0, p0, Lce/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lce/b;->d:Lbe/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lce/b;->a()V

    :cond_0
    invoke-virtual {p0}, Lce/b;->stopTimer()V

    iget-object v0, p0, Lce/b;->d:Lbe/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbe/c;->w()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lce/b;->setIsShowing(Z)V

    iget-boolean v0, p0, Lce/b;->e:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "ad_flow"

    const-string v2, "cancel request ad "

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public d()Lbe/i;
    .locals 2

    new-instance v0, Lbe/i;

    invoke-direct {v0}, Lbe/i;-><init>()V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lbe/i;->c(Landroid/os/Bundle;)V

    iget v1, p0, Lce/b;->k:I

    invoke-virtual {v0, v1}, Lbe/i;->w(I)V

    iget-boolean v1, p0, Lce/b;->q:Z

    invoke-virtual {v0, v1}, Lbe/i;->k(Z)V

    iget-object v1, p0, Lce/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbe/i;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbe/i;->j(Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->t:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lbe/i;->f(Ljava/util/Map;)V

    iget-boolean v1, p0, Lce/b;->u:Z

    invoke-virtual {v0, v1}, Lbe/i;->n(Z)V

    return-object v0
.end method

.method public d(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lce/b;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setErrorCode(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    iget-object v1, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v1, p1, v0}, Lbe/t;->n(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    new-instance v0, Lce/b$b;

    invoke-direct {v0, p0}, Lce/b$b;-><init>(Lce/b;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lce/b;->o:I

    return v0
.end method

.method public enterScene(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "TBaseAd"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "appId is empty"

    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "you should init first"

    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lce/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lce/b;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    move-result p2

    const/16 v1, 0x18

    if-lt p2, v1, :cond_2

    iget-object p2, p0, Lce/b;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lce/b;->n:Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p2, p0, Lce/b;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final f()Lcom/hisavana/common/bean/AdditionalInfo;
    .locals 2

    new-instance v0, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {v0}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    iget-object v1, p0, Lce/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setPlacementId(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMcc(Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setTriggerId(Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setTrafficGroupId(Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setExperimentGroupId(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Li7/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setSdkVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public final g()Lbe/c;
    .locals 2

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lce/b;->d:Lbe/c;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lbe/c;

    move-result-object v0

    iput-object v0, p0, Lce/b;->d:Lbe/c;

    :cond_1
    iget-object v0, p0, Lce/b;->d:Lbe/c;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportFlag()I
    .locals 1

    iget v0, p0, Lce/b;->k:I

    return v0
.end method

.method public getTopPrice(I)D
    .locals 2

    invoke-static {p1}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lce/b;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lce/b;->q:Z

    invoke-virtual {p1, v0, v1}, Lcom/hisavana/common/bean/AdCache;->getMaxPrice(Ljava/lang/String;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Lcom/hisavana/common/bean/Network;
    .locals 3

    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/bean/Network;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAd()Z
    .locals 7

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TBaseAd"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "appId is empty"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "you should init first"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-boolean v0, p0, Lce/b;->m:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lce/b;->a(ZI)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "current object is destroyed"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v0, p0, Lce/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Lce/b;->a(ZI)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "isReady,mAdUnit is null"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_4

    iget-object v0, p0, Lce/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lbe/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    iput-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    :cond_4
    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p0, v2, v0}, Lce/b;->a(ZI)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "isReady,mCodeSeatConfig is null"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    invoke-virtual {p0, v0}, Lce/b;->b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lce/b;->a(ZI)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "isReady,cloud control inspection failed"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    invoke-virtual {p0, v2, v0}, Lce/b;->a(ZI)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "isReady,no ad cache"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_7
    iget-object v3, p0, Lce/b;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lce/b;->q:Z

    invoke-virtual {v0, v3, v4}, Lcom/hisavana/common/bean/AdCache;->hasAds(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReady key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lce/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hasAd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lce/b;->a(ZI)V

    goto :goto_1

    :cond_8
    :try_start_0
    iget-object v4, p0, Lce/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/hisavana/common/bean/AdCache;->getLastExpireReason(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v5

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    :goto_0
    invoke-virtual {p0, v2, v2, v4}, Lce/b;->a(ZII)V

    :try_start_1
    iget-object v2, p0, Lce/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/hisavana/common/bean/AdCache;->clearLastExpireReason(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v3
.end method

.method public final i()Lcom/hisavana/common/interfacz/ICacheAd;
    .locals 4

    iget-object v0, p0, Lce/b;->d:Lbe/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lbe/c;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    iget-object v1, p0, Lce/b;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lce/b;->q:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/hisavana/common/bean/AdCache;->getCache(Ljava/lang/String;ZIZ)Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lce/b;->f:Z

    return v0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lbe/c;

    move-result-object v0

    iput-object v0, p0, Lce/b;->d:Lbe/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v0, v1}, Lbe/c;->k(Lbe/t;)V

    iget-object v0, p0, Lce/b;->d:Lbe/c;

    iget-object v1, p0, Lce/b;->c:Lcom/hisavana/common/utils/RunTimer;

    invoke-virtual {v0, v1}, Lbe/c;->o(Lcom/hisavana/common/utils/RunTimer;)V

    iget-object v0, p0, Lce/b;->d:Lbe/c;

    iget v1, p0, Lce/b;->v:I

    invoke-virtual {v0, v1}, Lbe/c;->R(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lce/b;->d:Lbe/c;

    return-void
.end method

.method public final k()V
    .locals 13

    iget-object v0, p0, Lce/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lbe/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    iput-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lce/b;->b(ZI)V

    invoke-virtual {p0}, Lce/b;->m()V

    iget-boolean v1, p0, Lce/b;->p:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lce/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CODE_AD_IS_SHOWING:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lce/b;->f:Z

    invoke-virtual {p0}, Lce/b;->clearCurrentAd()V

    iput-boolean v2, p0, Lce/b;->e:Z

    iget-boolean v1, p0, Lce/b;->m:Z

    const-string v2, "ad_flow"

    const-string v3, "TBaseAd"

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lce/b;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CURRENT_OBJECT_IS_DESTROYED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "TBaseAd -->current object haved been destroyed"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current object haved been destroyed"

    invoke-static {v3, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lce/b;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_INVALID_APP_ID:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TBaseAd --> Network request is invalid, the appId or appToken must be valid ----- Current app id is:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "loadAdInternal,appId is empty"

    invoke-static {v3, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAdInternal,config is null\uff1bcodeSeatId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lce/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lce/b;->e:Z

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b(I)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "cloud_config_error_code"

    invoke-virtual {v0, v1}, Lj7/a;->f(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/hisavana/common/constant/ComConstants;->transferCloudErrorCode(I)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_UNIT_CONFIG_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lce/b;->o:I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v4, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCloudControlEnable()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "loadAdInternal,config is closed"

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lce/b;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CLOUD_AD_SEAT_IS_CLOSED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "TBaseAd --> current ad unit is close "

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cloud/hisavana/sdk/common/util/l0;->c(J)J

    move-result-wide v6

    invoke-static {v4, v5}, Lcom/cloud/hisavana/sdk/common/util/l0;->b(J)J

    move-result-wide v8

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_6

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayZeroClock()J

    move-result-wide v11

    cmp-long v1, v6, v11

    if-nez v1, :cond_6

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayShowTimes()I

    move-result v1

    iget-object v6, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v1, v6, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v10, :cond_7

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourZeroClock()J

    move-result-wide v6

    cmp-long v1, v8, v6

    if-nez v1, :cond_7

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourShowTimes()I

    move-result v1

    iget-object v6, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v1, v6, :cond_7

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getLastShowTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_8

    goto :goto_1

    :cond_8
    neg-long v4, v4

    :goto_1
    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    const-wide/16 v8, -0x3e8

    cmp-long v1, v6, v8

    if-eqz v1, :cond_9

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gtz v1, :cond_9

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v4, "TBaseAd --> ad display did not reach the interval"

    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad display did not reach the interval,time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lce/b;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_NOT_IN_INTERVAL:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_9
    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {p0, v1}, Lce/b;->c(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)I

    move-result v1

    iput v1, p0, Lce/b;->k:I

    invoke-virtual {p0}, Lce/b;->j()V

    invoke-virtual {p0}, Lce/b;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Lce/b;->a(I)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v4, "TBaseAd --> code seat type does not match request type"

    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code seat type does not match request type ---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lce/b;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_TYPE_LOAD_INCONSISTENCY:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_a
    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-static {v1}, Lbe/m;->a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v1

    iput-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v4, "TBaseAd --> net error "

    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "net error"

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lce/b;->e:Z

    invoke-virtual {p0}, Lce/b;->h()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {p0}, Lce/b;->g()Lbe/c;

    move-result-object v1

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lbe/c;->d0()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lce/b;->z:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lbe/c;->g(Landroid/os/Bundle;)V

    iget-object v2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lbe/c;->O(I)V

    iget-object v2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1, v2, v0}, Lbe/c;->u(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_NO_NETWORK_AND_OFFLINE:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WITH_NETWORK_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_c
    :goto_2
    return-void

    :cond_d
    invoke-virtual {p0}, Lce/b;->p()V

    invoke-virtual {p0}, Lce/b;->r()V

    return-void

    :cond_e
    :goto_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v4, "TBaseAd --> ad display has reached the limit of hours"

    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad display has reached the limit of hour,hour showTimes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lce/b;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_HOUR:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_f
    :goto_4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v4, "TBaseAd --> ad show times can not exceed day show max"

    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad show times reach the limit of day,day showTimes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lce/b;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_DAY:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lce/b;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    invoke-virtual {p0}, Lce/b;->i()Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setSource(Ljava/lang/Integer;)V

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationKey(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setCodeSeatId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setEcpm(Ljava/lang/Double;)V

    invoke-static {v2}, Lcom/hisavana/common/utils/AdUtil;->isWaterFall(Lcom/hisavana/common/bean/Network;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "estimated"

    goto :goto_1

    :cond_2
    const-string v3, "exact"

    :goto_1
    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setPrecision(Ljava/lang/String;)V

    const-string v3, "USD"

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setCurrency(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/hisavana/common/utils/AdUtil;->isBiddingNetwork(Lcom/hisavana/common/bean/Network;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hisavana/common/bean/AdditionalInfo;->setBidding(Ljava/lang/Boolean;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v1, v0}, Lbe/t;->c(Lcom/hisavana/common/bean/AdditionalInfo;)V

    return-void
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lce/b;->b(I)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lce/b;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    iget-object v1, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v1, v0}, Lbe/t;->q(Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lbe/t;->h(Lcom/hisavana/common/interfacz/TAdListener;)V

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v0, v1}, Lbe/t;->g(Lcom/hisavana/common/interfacz/OnSkipListener;)V

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v0, v1}, Lbe/t;->i(Lcom/hisavana/common/interfacz/TAdditionalListener;)V

    :cond_0
    iput-object v1, p0, Lce/b;->h:Lbe/t;

    iput-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-static {}, Lcom/hisavana/common/mock/RecordTestInfo;->destroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lce/b;->setIsShowing(Z)V

    invoke-virtual {p0}, Lce/b;->clearCurrentAd()V

    iget-boolean v1, p0, Lce/b;->e:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CURRENT_OBJECT_IS_DESTROYED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const v2, 0xea62

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v1, v3}, Lce/b;->trackingAdLoaded(ILjava/lang/String;I)V

    :cond_1
    iput-boolean v0, p0, Lce/b;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lce/b;->m:Z

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestTimeout()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lce/b;->j:I

    :cond_0
    iget v0, p0, Lce/b;->j:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lce/b;->c:Lcom/hisavana/common/utils/RunTimer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/hisavana/common/utils/RunTimer;

    invoke-direct {v0}, Lcom/hisavana/common/utils/RunTimer;-><init>()V

    iput-object v0, p0, Lce/b;->c:Lcom/hisavana/common/utils/RunTimer;

    :cond_1
    iget-object v0, p0, Lce/b;->c:Lcom/hisavana/common/utils/RunTimer;

    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->cancelTimeTask()V

    iget-object v0, p0, Lce/b;->c:Lcom/hisavana/common/utils/RunTimer;

    iget-object v1, p0, Lce/b;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/utils/RunTimer;->setTimeOutCallback(Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;)V

    iget-object v0, p0, Lce/b;->c:Lcom/hisavana/common/utils/RunTimer;

    iget v1, p0, Lce/b;->j:I

    invoke-virtual {v0, v1}, Lcom/hisavana/common/utils/RunTimer;->setScheduleTime(I)V

    iget-object v0, p0, Lce/b;->c:Lcom/hisavana/common/utils/RunTimer;

    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->runTimerTask()V

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lce/b;->d:Lbe/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbe/c;->i0()V

    :cond_0
    return-void
.end method

.method public final preload()V
    .locals 0

    invoke-virtual {p0}, Lce/b;->loadAd()V

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    const-string v1, "TBaseAd"

    if-nez v0, :cond_0

    const-string v0, "startLoadMediation codeSeat is null"

    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_UNIT_CONFIG_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*----> TBaseAd - current cloudConfig is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_flow"

    invoke-virtual {v0, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lce/b;->g()Lbe/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lce/b;->z:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lbe/c;->g(Landroid/os/Bundle;)V

    iget-object v2, p0, Lce/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lbe/c;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "prepare for request failed"

    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_PREPARE_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "TBaseAd --> ad is empty "

    invoke-virtual {v0, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startLoadMediation,network is empty"

    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_LIST_IS_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lce/b;->d:Lbe/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbe/c;->m0()V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lce/b;->c:Lcom/hisavana/common/utils/RunTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->cancelTimeTask()V

    const/4 v0, 0x0

    iput-object v0, p0, Lce/b;->c:Lcom/hisavana/common/utils/RunTimer;

    :cond_0
    return-void
.end method

.method public setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lce/b;->r:Ljava/lang/String;

    iput-object p2, p0, Lce/b;->s:Ljava/lang/String;

    iput-object p3, p0, Lce/b;->t:Ljava/util/Map;

    return-void
.end method

.method public setCodeSeatType(I)V
    .locals 0

    iput p1, p0, Lce/b;->o:I

    return-void
.end method

.method public setContainVulgarContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lce/b;->q:Z

    return-void
.end method

.method public setCurrActivityFullscreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lce/b;->u:Z

    return-void
.end method

.method public setIsShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lce/b;->p:Z

    return-void
.end method

.method public setLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lce/b;->f:Z

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lce/b;->e:Z

    return-void
.end method

.method public setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lce/b;->b()V

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody;->getScheduleTime()I

    move-result v0

    iput v0, p0, Lce/b;->j:I

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody;->getAdListener()Lcom/hisavana/common/interfacz/TAdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe/t;->h(Lcom/hisavana/common/interfacz/TAdListener;)V

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody;->getAdditionalListener()Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbe/t;->i(Lcom/hisavana/common/interfacz/TAdditionalListener;)V

    :cond_1
    return-void
.end method

.method public stopTimer()V
    .locals 1

    new-instance v0, Lce/b$c;

    invoke-direct {v0, p0}, Lce/b$c;-><init>(Lce/b;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_TRIGGER_SHOW_ONLINE_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object v1, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v1, v0}, Lbe/t;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_RIGGER_SHOW_OFFLINE_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lce/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object v1, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v1, v0}, Lbe/t;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public trackingAdLoaded(ILjava/lang/String;I)V
    .locals 26

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string v2, "is_preload"

    const-string v3, "filling_ad_type"

    const-string v4, "request_num"

    const-string v5, "request_id"

    const-string v6, "is_retreatad"

    const-string v7, "ad_count"

    const-string v8, "priority"

    const-string v9, "biddingType"

    const-string v10, "request_type"

    const-string v11, "is_pre_trigger"

    const-string v12, "ad_type"

    const-string v13, "trigger_ts"

    const-string v14, "trigger_id"

    const-string v15, "bidding_price"

    const-string v0, "code_seat_id"

    move-object/from16 v16, v2

    const-string v2, "ad_trigger_status"

    move-object/from16 v17, v3

    :try_start_0
    iget-object v3, v1, Lce/b;->z:Landroid/os/Bundle;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "ad_flow"

    const-string v3, "mBundle is null"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v18, v4

    iget-object v4, v1, Lce/b;->z:Landroid/os/Bundle;

    invoke-virtual {v4, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lce/b;->z:Landroid/os/Bundle;

    move-object v14, v5

    invoke-virtual {v4, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v13, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v4, v1, Lce/b;->z:Landroid/os/Bundle;

    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v12, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, v1, Lce/b;->z:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, v1, Lce/b;->d:Lbe/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v13, v1, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v13, :cond_1

    invoke-virtual {v4}, Lbe/c;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v4

    iget-object v13, v1, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v13}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v13

    iget v12, v1, Lce/b;->k:I

    move-object/from16 v20, v14

    iget-boolean v14, v1, Lce/b;->q:Z

    invoke-virtual {v4, v13, v5, v12, v14}, Lcom/hisavana/common/bean/AdCache;->getCache(Ljava/lang/String;ZIZ)Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object/from16 v20, v14

    const/4 v4, 0x0

    :goto_0
    const-string v12, "platform"

    if-eqz v4, :cond_5

    :try_start_1
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v13

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v21

    instance-of v5, v4, Lcom/hisavana/common/base/BaseAd;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/hisavana/common/base/BaseAd;

    iget-object v5, v5, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v5}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v5

    iget-object v5, v5, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    :goto_1
    move-wide/from16 v22, v13

    goto :goto_2

    :cond_3
    move-wide/from16 v22, v13

    const/4 v5, 0x0

    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v13

    const-string v14, "TBaseAd"

    move-object/from16 v24, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v6

    const-string v6, "trackingAdLoaded --> isNative = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v6, v4, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " \u8bbe\u7f6e\u6807\u8bc6\u7b26 contextBundle.PLATFORM="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_offline_ad"

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    move-result v6

    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "mediator_source"

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mediator_code_seat_id"

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceUnitId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v21

    move-wide/from16 v13, v22

    goto :goto_4

    :cond_5
    move-object/from16 v24, v2

    move-object/from16 v25, v6

    const-wide/16 v13, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    :goto_4
    invoke-virtual {v1, v3, v13, v14}, Lce/b;->a(Landroid/os/Bundle;D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "app_id"

    if-eqz v5, :cond_8

    :try_start_2
    invoke-virtual {v5, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v11, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v10, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v12, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v3, v15, v10, v11}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v9, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v8, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v6, v25

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v6, v20

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adTrackingFilling code_seat_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",platform:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",bidding_price:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_7

    const/4 v6, 0x3

    :cond_6
    :goto_5
    move-object/from16 v0, v17

    goto :goto_6

    :cond_7
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x2

    goto :goto_5

    :goto_6
    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    const-string v0, "adTrackingFilling"

    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    const-string v0, "cld_app_id"

    iget-object v4, v1, Lce/b;->z:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cld_code_seat_id"

    iget-object v2, v1, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, ""

    if-nez v2, :cond_9

    move-object v2, v4

    goto :goto_7

    :cond_9
    :try_start_3
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_timeout"

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_code"

    move/from16 v5, p1

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_message"

    invoke-static/range {p2 .. p2}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filling_source"

    move/from16 v6, p3

    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "filling_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "installed_facebook"

    sget-boolean v6, Lcom/hisavana/common/constant/ComConstants;->isFbAppExist:Z

    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "filter_count"

    iget-object v6, v1, Lce/b;->d:Lbe/c;

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v6}, Lbe/c;->M()I

    move-result v2

    :goto_8
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "optimize_status"

    iget-object v2, v1, Lce/b;->z:Landroid/os/Bundle;

    const-string v6, "optimize_status"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "priority_code"

    iget-object v2, v1, Lce/b;->z:Landroid/os/Bundle;

    const-string v6, "priority_code"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v1, Lce/b;->d:Lbe/c;

    if-eqz v0, :cond_b

    const-string v2, "max_price"

    invoke-virtual {v0}, Lbe/c;->S()D

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_b
    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill result code : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE7:I

    invoke-static {v0, v2}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    :cond_c
    const-string v0, "is_contain_vulgar"

    iget-boolean v2, v1, Lce/b;->q:Z

    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v19, :cond_d

    const-string v0, "price_coefficient"

    invoke-virtual/range {v19 .. v19}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v3, v0, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    invoke-virtual/range {v19 .. v19}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v12, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_d
    const-string v0, "traffic_group_id"

    iget-object v2, v1, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v2, :cond_e

    move-object v2, v4

    goto :goto_9

    :cond_e
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "experiment_group_id"

    iget-object v2, v1, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v2, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdLoaded(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_c

    :goto_b
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :goto_c
    return-void
.end method

.method public trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 7

    const-string v0, "platform"

    const-string v1, "bidding_price"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v3, p0, Lce/b;->z:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "trigger_ts"

    const-string v5, "trigger_id"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lce/b;->z:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Lce/b;->z:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lce/b;->z:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/hisavana/common/tracking/TrackingUtil;->getTriggerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_1

    iget-object v0, p0, Lce/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lbe/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    iput-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    :cond_1
    const-string v0, "cld_app_id"

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_id"

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code_seat_id"

    iget-object v1, p0, Lce/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cld_code_seat_id"

    iget-object v1, p0, Lce/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ad_type"

    invoke-virtual {p0}, Lce/b;->e()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v0, :cond_2

    const-string v1, "traffic_group_id"

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "experiment_group_id"

    iget-object v1, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "error_code"

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "error_message"

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "is_offline"

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lce/b;->i()Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "mediator_source"

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mediator_code_seat_id"

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v2}, Lcom/hisavana/common/tracking/TrackingManager;->trackingTriggerShow(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ad_flow"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
