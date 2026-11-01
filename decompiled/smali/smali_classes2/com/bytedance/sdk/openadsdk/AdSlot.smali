.class public Lcom/bytedance/sdk/openadsdk/AdSlot;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    }
.end annotation


# static fields
.field public static final ANCHORED_BANNER:I = 0x2

.field public static final FIX_BANNER:I = 0x1

.field public static final INLINE_BANNER:I = 0x3

.field public static final TYPE_BANNER:I = 0x1

.field public static final TYPE_CACHED_SPLASH:I = 0x4

.field public static final TYPE_FEED:I = 0x5

.field public static final TYPE_FULL_SCREEN_VIDEO:I = 0x8

.field public static final TYPE_INTERACTION_AD:I = 0x2

.field public static final TYPE_OPEN_AD:I = 0x3

.field public static final TYPE_REWARD_VIDEO:I = 0x7


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:F

.field private Fmk:Z

.field private HiB:F

.field private Jcg:Z

.field private RiZ:Ljava/lang/String;

.field private Sj:Ljava/lang/String;

.field private TEQ:Ljava/lang/String;

.field private TKC:I

.field private TzV:Ljava/lang/String;

.field private Ym:Ljava/lang/String;

.field private Zq:Ljava/lang/String;

.field private aa:I

.field private dNu:Ljava/lang/String;

.field private dx:I

.field private ib:I

.field private kF:I

.field private sP:I

.field private sU:I

.field private sef:Z

.field private uA:I

.field private uP:Z

.field private uvD:Ljava/lang/String;

.field private vS:I

.field private wE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zR:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Fmk:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->sef:Z

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->sU:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->dx:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->zR:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->kF:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/AdSlot$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;-><init>()V

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->TzV:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->uA:I

    return p1
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Ym:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->aa:I

    return p1
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Zq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->kF:I

    return p1
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->dNu:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->EjP:F

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->vS:I

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->wE:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Jcg:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->TKC:I

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->TEQ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->sef:Z

    return p1
.end method

.method public static getPosition(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public static getSlot(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 11

    const-string v0, "mMediaExtra"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    :try_start_0
    const-string v3, "mImgAcceptedWidth"

    const/16 v4, 0x280

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "mImgAcceptedHeight"

    const/16 v5, 0x140

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "mExpressViewAcceptedWidth"

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v5, "mExpressViewAcceptedHeight"

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v7, "mCodeId"

    invoke-virtual {p0, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v7, "mAdCount"

    const/4 v10, 0x1

    invoke-virtual {p0, v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v7, "mIsAutoPlay"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v2, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v3, "mSupportDeepLink"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v3, "mRewardName"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v3, "mRewardAmount"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v3, "mUserID"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v1, "mNativeAdType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v1, "mIsExpressAd"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->isExpressAd(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v1, "mBidAdm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v1, "mAdId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v1, "mCreativeId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCreativeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v1, "mExt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExt(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const-string v0, "mBannerType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setBannerType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    const-string v1, "mDurationSlotType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setDurationSlotType(I)V

    return-object v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->HiB:F

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP:I

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Dq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Fmk:Z

    return p1
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->RiZ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->ib:I

    return p1
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->uvD:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAdCount()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->vS:I

    return v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->uvD:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->kF:I

    return v0
.end method

.method public getBidAdm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Zq:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->dNu:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationSlotType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->ib:I

    return v0
.end method

.method public getExpressViewAcceptedHeight()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->HiB:F

    return v0
.end method

.method public getExpressViewAcceptedWidth()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->EjP:F

    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->TzV:Ljava/lang/String;

    return-object v0
.end method

.method public getImgAcceptedHeight()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->TKC:I

    return v0
.end method

.method public getImgAcceptedWidth()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP:I

    return v0
.end method

.method public getIsRotateBanner()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->sU:I

    return v0
.end method

.method public getMediaExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->TEQ:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeAdType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->aa:I

    return v0
.end method

.method public getRequestExtraMap()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->wE:Ljava/util/Map;

    return-object v0
.end method

.method public getRewardAmount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->uA:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Dq:Ljava/lang/String;

    return-object v0
.end method

.method public getRotateOrder()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->zR:I

    return v0
.end method

.method public getRotateTime()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->dx:I

    return v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->RiZ:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Ym:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Fmk:Z

    return v0
.end method

.method public isExpressAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->sef:Z

    return v0
.end method

.method public isPreload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->uP:Z

    return v0
.end method

.method public isSupportDeepLink()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Jcg:Z

    return v0
.end method

.method public setAdCount(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->vS:I

    return-void
.end method

.method public setDurationSlotType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->ib:I

    return-void
.end method

.method public setExpressViewAccepted(FF)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->EjP:F

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->HiB:F

    return-void
.end method

.method public setIsRotateBanner(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->sU:I

    return-void
.end method

.method public setNativeAdType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->aa:I

    return-void
.end method

.method public setPreload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->uP:Z

    return-void
.end method

.method public setRotateOrder(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->zR:I

    return-void
.end method

.method public setRotateTime(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->dx:I

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->RiZ:Ljava/lang/String;

    return-void
.end method

.method public toJsonObj()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mCodeId"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mAdCount"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->vS:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mIsAutoPlay"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Fmk:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mImgAcceptedWidth"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mImgAcceptedHeight"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->TKC:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mExpressViewAcceptedWidth"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->EjP:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "mExpressViewAcceptedHeight"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->HiB:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "mSupportDeepLink"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Jcg:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mRewardName"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mRewardAmount"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->uA:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mMediaExtra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->TEQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mUserID"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Ym:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mNativeAdType"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->aa:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mIsExpressAd"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->sef:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mAdId"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->uvD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mCreativeId"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->dNu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mExt"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->TzV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mBidAdm"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->Zq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mUserData"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->RiZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mDurationSlotType"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->ib:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mBannerType"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->kF:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
