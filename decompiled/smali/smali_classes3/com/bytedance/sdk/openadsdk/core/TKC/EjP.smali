.class public Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;
.super Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;,
        Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;
    }
.end annotation


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

.field protected EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private Fmk:Ljava/lang/String;

.field HiB:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private final Jcg:Z

.field protected Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

.field private final TEQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private Ym:Z

.field private final Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aa:Z

.field protected final sP:Landroid/content/Context;

.field private sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field private uA:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

.field private uvD:Z

.field protected final vS:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    const-string v0, "banner_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS:Landroid/view/View$OnAttachStateChangeListener;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Jcg:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uvD:Z

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC()V

    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    return-object p0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private Sj(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/Jcg;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/core/Jcg;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/Jcg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private Sj(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    if-eqz p4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1

    const-string p5, "dynamic_show_type"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    move-result v0

    invoke-virtual {p4, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p1, :cond_2

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p5, "width"

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "height"

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "alpha"

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p2, p5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string p5, "root_view"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    invoke-static {p3, p2, p4}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "PAGBannerAdImpl"

    const-string p4, "onShowFun json error"

    invoke-static {p2, p4}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Dq:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result p4

    invoke-interface {p2, p1, p4}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onAdShow(Landroid/view/View;I)V

    :cond_3
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eI()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/view/View;)V

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->getCurView()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->getCurView()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->getCurView()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq()V

    :cond_5
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/Jcg;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/Jcg;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Jcg;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method private Sj(ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UmR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Hs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Jcg(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->at()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/WMZ;)V

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;

    invoke-direct {v0, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;-><init>(ZLcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uvD:Z

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uvD:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Dq:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    return-object p0
.end method

.method private TKC()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP()V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uA:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP(ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    const-string v0, "PAGBannerAdImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private sP(ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_0
    const-string p2, "PAGBannerAdImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    return-object p0
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    return-object v0
.end method

.method public Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method protected Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 11
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uA:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ib;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    move-result-object v7

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClosedListenerKey(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setBannerClickClosedListener(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Jcg:Z

    const/4 v8, 0x1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/Jcg;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Jcg;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/Jcg;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    move-object v9, v1

    new-instance v10, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, v9

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Jcg;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->setCallback(Lcom/bytedance/sdk/openadsdk/core/Jcg$Sj;)V

    goto :goto_0

    :cond_2
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    const/4 v0, 0x0

    invoke-static {p1, v8, v8, v9, v0}, Lcom/bytedance/sdk/openadsdk/utils/Wjd;->Sj(Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/utils/Wjd$sP;Ljava/util/List;)V

    move-object v9, v0

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    :cond_3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, v0, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/uA;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/api/PangleAd;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uA:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/Dq/uA;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/api/PangleAd;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    instance-of v1, p2, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    if-eqz v1, :cond_4

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->getVideoController()Lu5/b;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lu5/b;)V

    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uA:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Jcg:Z

    if-nez p1, :cond_5

    invoke-virtual {v9, v8}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->setNeedCheckingShow(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->TKC()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public getBannerSize()Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    return-object v0
.end method

.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "PAGBannerAdImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->aa:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/LqL;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->aa:Z

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->sP()V

    return-void
.end method

.method public setAdInteractionCallback(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionCallback;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/HiB;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Dq:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/HiB;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Dq:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Ym:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/LqL;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/Double;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Ym:Z

    :cond_0
    return-void
.end method
