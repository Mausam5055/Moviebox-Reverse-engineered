.class public Lcom/bytedance/sdk/openadsdk/core/LqL;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/wE;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HiB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field EjP:Ljava/lang/String;

.field Sj:Z

.field TKC:Ljava/lang/String;

.field sP:Z

.field private vS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/LqL$1;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/LqL$1;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/LqL;->HiB:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/LqL;->Sj:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/LqL;->sP:Z

    const-string v1, "com.union_test.internationad"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/LqL;->TKC:Ljava/lang/String;

    const-string v1, "8025677"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/LqL;->EjP:Ljava/lang/String;

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/LqL;->vS:I

    return-void
.end method

.method public static Dq()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/LqL$4;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/LqL$4;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "TTAdManagerImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Jcg()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/LqL$3;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/LqL$3;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "TTAdManagerImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Sj(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 1

    if-eqz p2, :cond_0

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/dx;

    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->BIDDING_TOKEN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/dx;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/zR;->Sj(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Sj;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->getBannerSize()Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "width"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    const-string v4, "height"

    if-ne v2, v3, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getMaxHeight()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getHeight()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v2, "type"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getType()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    :cond_1
    return-object v0
.end method

.method private uA()Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->FPG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->FPG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static vS()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/LqL$2;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/LqL$2;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "TTAdManagerImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public EjP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/LqL;->vS:I

    return v0
.end method

.method public EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/LqL;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Ljava/lang/String;)V

    return-object p0
.end method

.method public EjP(I)Lcom/bytedance/sdk/openadsdk/core/wE;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/uA;->TKC(I)V

    return-object p0
.end method

.method public HiB()I
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->Ym()I

    move-result v0

    return v0
.end method

.method public HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/LqL;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/uA;->TKC(Ljava/lang/String;)V

    return-object p0
.end method

.method public HiB(I)Lcom/bytedance/sdk/openadsdk/core/wE;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/uA;->HiB(I)V

    return-object p0
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/core/wE;
    .locals 1

    const-string v0, "PangleSDK-7114"

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Zq;->Sj(Ljava/lang/String;)V

    invoke-static {v0}, Lw5/b;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->sP()V

    invoke-static {}, Lcom/bytedance/sdk/component/Jcg/Sj;->Sj()V

    invoke-static {}, Lw5/b;->a()V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/sU;->Sj()V

    return-object p0
.end method

.method public Sj(I)Lcom/bytedance/sdk/openadsdk/core/wE;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/uA;->vS(I)V

    return-object p0
.end method

.method public synthetic Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/wE;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/LqL;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/LqL;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "boot"

    const-string v2, "gaid"

    const-string v3, "target_region"

    const-string v4, "ttopenadsdk"

    const-string v5, ""

    :try_start_0
    const-string v6, "getBiddingToken"

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TEQ(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->Sj()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/LqL;->vS()V

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->getAdxId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->getAdxId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/uA;->wE()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Xqg()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/LqL;->uA()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->LD(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/LqL;->Dq()V

    return-object v5

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/uA;->aa()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/LqL;->Dq()V

    return-object v5

    :cond_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "is_init"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->HiB()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v8

    invoke-interface {v8}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uA()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v9

    invoke-interface {v9}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->RiZ()Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_4

    if-eqz v9, :cond_4

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "version"

    invoke-virtual {v12, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "param"

    invoke-virtual {v12, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "abtest"

    invoke-virtual {v7, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v8, "language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa;->sP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "ad_sdk_version"

    const-string v9, "7.1.1.4"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "package_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    const-string v8, "user_data"

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->getSlotId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    new-instance v9, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->getSlotId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v9

    :goto_2
    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    const-string v14, "ts"

    invoke-virtual {v7, v14, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "key_ipv6"

    invoke-static {v4, v8, v5}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->sP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    const-string v4, "ipv6"

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_7
    const-string v8, "key_ipv4"

    invoke-static {v4, v8, v5}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->sP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "ipv4"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    :goto_3
    const-string v4, "adx_id"

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v4

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->oWa()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/16 v8, 0xa78

    if-gt v6, v8, :cond_c

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->LqL(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    if-eqz p1, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/LqL;->sP(Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v9, "banner"

    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    const-string v2, "app_reg"

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->zwV()Z

    move-result v9

    invoke-virtual {v7, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    const-string v9, "apk-sign"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->Jcg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "app_set_id_scope"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->sP()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "app_set_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->TKC()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "installed_source"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->EjP()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "app_running_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->Sj()J

    move-result-wide v16

    sub-long v14, v14, v16

    div-long/2addr v14, v12

    invoke-virtual {v7, v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "rewardedfull_link"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v12

    invoke-interface {v12}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->eI()Z

    move-result v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "js_render_ver"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->sP()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "js_render_v3_ver"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->TKC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "gp_v_name"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->HiB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "gp_v_code"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->vS(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "vendor"

    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "model"

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "user_agent_device"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->sP()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "user_agent_webview"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "sys_compiling_time"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa;->sP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "screen_height"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "screen_width"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "rom_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/uP;->Sj()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "carrier_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ley;->Sj()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "os_version"

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "conn_type"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->aa(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->LqL(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lorg/json/JSONObject;)V

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->Sj(Lorg/json/JSONObject;)V

    invoke-static {v7, v2}, Lcom/bytedance/sdk/openadsdk/utils/Jcg;->Sj(Lorg/json/JSONObject;Landroid/content/Context;)V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/LqL;->HiB:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_4

    :cond_c
    const/4 v1, 0x2

    :goto_4
    if-lez v1, :cond_d

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-le v2, v8, :cond_d

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/LqL;->HiB:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TX()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    sget-object v6, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->BIDDING_TOKEN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-interface {v2, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v10, v11

    :cond_e
    invoke-direct {v0, v7, v10}, Lcom/bytedance/sdk/openadsdk/core/LqL;->Sj(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v2

    :goto_5
    if-lez v1, :cond_f

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/16 v8, 0x1000

    if-le v6, v8, :cond_f

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/LqL;->HiB:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v0, v7, v10}, Lcom/bytedance/sdk/openadsdk/core/LqL;->Sj(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->EjP()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/LqL;->Jcg()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/LqL;->Dq()V

    return-object v5
.end method

.method public Sj(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    move-object v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/LqL;->TKC:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/LqL;->EjP:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/uA;->EjP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v7

    :cond_1
    :try_start_0
    const-string v6, "com.bytedance.sdk.openadsdk.TTC3Proxy"

    const-string v8, "verityPlayable"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v5

    aput-object v10, v9, v3

    aput-object v10, v9, v2

    aput-object v10, v9, v1

    invoke-static {v6, v8, v9}, Lcom/bytedance/sdk/component/utils/ley;->Sj(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object v8, v4, v5

    aput-object p3, v4, v3

    aput-object p4, v4, v2

    aput-object p5, v4, v1

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return v5

    :cond_3
    :goto_0
    return v7
.end method

.method public TKC(I)Lcom/bytedance/sdk/openadsdk/core/wE;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/LqL;->vS:I

    return-object p0
.end method

.method public TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/wE;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/uA;->Dq(Ljava/lang/String;)V

    return-object p0
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    const-string v0, "7.1.1.4"

    return-object v0
.end method

.method public sP()I
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->TEQ()I

    move-result v0

    return v0
.end method

.method public sP(I)Lcom/bytedance/sdk/openadsdk/core/wE;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/uA;->EjP(I)V

    return-object p0
.end method

.method public synthetic sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/wE;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/LqL;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/LqL;

    move-result-object p1

    return-object p1
.end method
