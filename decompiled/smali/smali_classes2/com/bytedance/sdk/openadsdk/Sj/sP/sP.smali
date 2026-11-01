.class public Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;
.super Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;

# interfaces
.implements Lu5/b$a;
.implements Lu5/b$c;
.implements Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj$Sj;


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

.field private Fmk:J

.field private TEQ:Z

.field private Ym:Z

.field private aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private final uA:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->HiB:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->uA:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->vS:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Sj(I)V

    const-string p1, "embeded_ad"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Sj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;Lcom/bytedance/sdk/openadsdk/core/uvD;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IZ)V

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->HiB:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->uA:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->vS:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Sj(I)V

    const-string p1, "embeded_ad"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Sj(Ljava/lang/String;)V

    invoke-virtual {p5, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->uA:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    return-object p0
.end method

.method private Sj(I)V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    move-result p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_2
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v2, p1, :cond_4

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    if-ne v2, p1, :cond_6

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    :goto_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public HiB()Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->TKC:Landroid/content/Context;

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const-string v2, "getAdView null"

    if-eqz v0, :cond_5

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->TKC:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lu5/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj(Lu5/b;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    :cond_2
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdClickListenerTTNativeAd(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setAdCreativeClickListener(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdLoadListener(Lu5/b$a;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdInteractionListener(Lu5/b$c;)V

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->HiB:I

    const/4 v4, 0x5

    if-ne v4, v3, :cond_4

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isAutoPlay()Z

    move-result v3

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    :goto_1
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setIsAutoPlay(Z)V

    goto :goto_2

    :cond_4
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setIsAutoPlay(Z)V

    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->vS:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TKC(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "feedGetAdView"

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string v3, ""

    invoke-static {v3, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v1

    :goto_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(JZZ)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    return-object v0

    :cond_7
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    return-object v1
.end method

.method public Sj(II)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->Sj(II)V

    :cond_0
    return-void
.end method

.method public Sj(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Fmk:J

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    return-void
.end method

.method protected Sj(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Sj(Ljava/lang/String;)V

    return-void
.end method

.method public d_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method public g_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method public h_()V
    .locals 0

    return-void
.end method

.method public i_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method public showPrivacyActivity()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->aa()V

    :cond_0
    return-void
.end method

.method public vS()Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->uA:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    return-object v0
.end method
