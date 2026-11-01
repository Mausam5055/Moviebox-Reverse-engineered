.class public Lbe/n;
.super Lbe/c;


# instance fields
.field public B:I


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lbe/i;Lbe/t;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbe/c;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lbe/i;Lbe/t;)V

    const/4 p1, 0x0

    iput p1, p0, Lbe/n;->B:I

    return-void
.end method


# virtual methods
.method public G()Lcom/hisavana/common/bean/AdCache;
    .locals 1

    iget v0, p0, Lbe/c;->q:I

    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    return-object v0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lbe/n;->B:I

    return v0
.end method

.method public d0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic p(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lbe/n;->s0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public q0(IIZZ)Ljava/util/ArrayList;
    .locals 8

    invoke-virtual {p0}, Lbe/n;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    iget-object v1, p0, Lbe/c;->j:Ljava/lang/String;

    iget v2, p0, Lbe/c;->q:I

    const/4 v3, 0x6

    const/4 v7, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    move v2, p2

    move v3, p3

    move v5, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/hisavana/common/bean/AdCache;->getCaches(Ljava/lang/String;IZZIZ)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "*---->get ad from cache,size:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_1
    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "NativeCacheHandler"

    invoke-virtual {p2, v0, p4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lbe/n;->u0(Ljava/util/ArrayList;)V

    :cond_3
    return-object p1

    :cond_4
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "get 0 native ad from cache"

    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public r0(Lcom/hisavana/common/bean/TAdNativeInfo;Lbe/t;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getTAdAllianceListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->getAdListener()Lcom/hisavana/common/interfacz/TInnerAdListener;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "NativeCacheHandler"

    const-string v2, "NativeCacheHandler setAdListener"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->setAdListener(Lcom/hisavana/common/interfacz/TInnerAdListener;)V

    :cond_3
    return-void
.end method

.method public s0(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final t0(Lcom/hisavana/common/bean/TAdNativeInfo;Lbe/t;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lbe/c;->d(Lcom/hisavana/common/interfacz/Iad;I)Lcom/hisavana/common/bean/TInnerAdRequestBody;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hisavana/common/interfacz/Iad;->addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V

    invoke-virtual {p0, v0, p2}, Lbe/c;->m(Lcom/hisavana/common/bean/TInnerAdRequestBody;Lbe/t;)V

    return-void
.end method

.method public u0(Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/bean/TAdNativeInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->getShowId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->setShowId(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lbe/c;->b:Lbe/t;

    invoke-virtual {p0, v0, v1}, Lbe/n;->t0(Lcom/hisavana/common/bean/TAdNativeInfo;Lbe/t;)V

    goto :goto_0

    :cond_2
    return-void
.end method
