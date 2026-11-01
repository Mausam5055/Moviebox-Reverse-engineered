.class public Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;
.super Lcom/bytedance/sdk/component/uA/vS;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$TKC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;,
        Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;,
        Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$Sj;
    }
.end annotation


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/core/Dq/zR;

.field protected EjP:Z

.field private Fmk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected HiB:Z

.field Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private Ym:Ljava/lang/String;

.field private Zq:I

.field private aa:I

.field private sef:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;

.field private uA:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;

.field private uvD:J

.field vS:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->EjP:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->HiB:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->aa:I

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Ym:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Zq:I

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)Lcom/bytedance/sdk/openadsdk/core/Dq/zR;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/Dq/zR;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Fmk:Ljava/util/List;

    return-object p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private dx()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Fmk:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Ym:Ljava/lang/String;

    const-string v2, "dsp_html_success_url"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$3;

    const-string v1, "dsp_html_error_url"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Fmk:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public RiZ()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;->e_()V

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "render_duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uvD:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Ym:Ljava/lang/String;

    const-string v3, "render_html_success"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public Sj()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->EjP:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->HiB:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->RiZ()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->dx()V

    :cond_0
    return-void
.end method

.method public Sj(II)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;->Sj(II)V

    :cond_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->aa:I

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "error_code"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "render_duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uvD:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Ym:Ljava/lang/String;

    const-string v1, "render_html_fail"

    invoke-static {p2, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Ym:Ljava/lang/String;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/Dq/zR;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$Sj;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$TKC;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->sP()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/Dq/zR;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Ym:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/utils/TzV;->Sj(Ljava/lang/String;)Z

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v3, p1

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Ym;)V

    move-object v8, v10

    goto :goto_2

    :goto_1
    move-object v8, v3

    :goto_2
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Z)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Ym:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v4, v1

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;ZLjava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->sP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->sP()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Ym:Ljava/lang/String;

    const-string v6, "open_fallback_url"

    invoke-static {v4, v5, v6, v10}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v9, v3

    goto :goto_4

    :cond_4
    :goto_3
    move-object v9, v8

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :goto_4
    if-nez v2, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Ym:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v1

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;ZLjava/lang/String;)Z

    goto :goto_5

    :cond_6
    return-void

    :cond_7
    :goto_5
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/Dq/zR;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;

    const/4 v2, 0x2

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;->Sj()Landroid/view/View;

    move-result-object v10

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;->sP()Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;

    invoke-interface {v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;->Sj(Landroid/view/View;I)V

    move-object/from16 v19, v10

    move-object v10, v1

    move-object/from16 v1, v19

    goto :goto_6

    :cond_8
    move-object v1, v10

    :goto_6
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/Dq/zR;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v10, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->Sj(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    move-result-object v14

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "click_scence"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Ym:Ljava/lang/String;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/Dq/zR;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP()Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v18, v11

    goto :goto_7

    :cond_9
    move/from16 v18, v2

    :goto_7
    const-string v12, "click"

    const/16 v16, 0x1

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v18}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    :cond_a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/Dq/zR;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->Sj()V

    :cond_b
    :goto_8
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/sdk/component/uA/vS;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->EjP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj()V

    invoke-super {p0}, Lcom/bytedance/sdk/component/uA/vS;->onDetachedFromWindow()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "rate"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Zq:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Ym:Ljava/lang/String;

    const-string v3, "load_rate"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->HiB:Z

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj(Z)V

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Fmk:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Fmk:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Fmk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sU()V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object v6, v2

    :goto_0
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->aa:I

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v7, "text/html"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uvD:J

    return-void
.end method

.method public uvD()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->sP()V

    invoke-super {p0}, Lcom/bytedance/sdk/component/uA/vS;->uvD()V

    return-void
.end method
