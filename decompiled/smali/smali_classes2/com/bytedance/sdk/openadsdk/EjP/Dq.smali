.class public Lcom/bytedance/sdk/openadsdk/EjP/Dq;
.super Ljava/lang/Object;


# instance fields
.field private final Dq:Landroid/webkit/WebView;

.field private final EjP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final HiB:Z

.field private Jcg:I

.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private TEQ:J

.field private final TKC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private uA:Ljava/lang/String;

.field private vS:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "landingpage"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->uA:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->sP:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->TKC:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->EjP:Ljava/util/Map;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Dq:Landroid/webkit/WebView;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->HiB:Z

    return-void
.end method

.method private Sj(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->vS:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Jcg:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->sP(Z)V

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->vS:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Jcg:I

    :goto_1
    if-lez p1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private sP(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Dq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->vS:I

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->HiB:Z

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->vS:I

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Jcg:I

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->HiB:Z

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Jcg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_0
    const-string v0, "ArbitrageLandingLog"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Zq()Lcom/bytedance/sdk/openadsdk/core/model/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->sP()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/uA/sP;->Sj(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->EjP:Ljava/util/Map;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->vS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    move-object v3, p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->uA:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->vS:I

    const/4 v5, 0x2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Sj(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->TEQ:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->uA:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->vS:I

    invoke-static {v1, v2, v3, p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILjava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->HiB:Z

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Sj(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->uA:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->vS:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->EjP:Ljava/util/Map;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->vS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->TEQ:J

    :cond_1
    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->uA:Ljava/lang/String;

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->EjP:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->vS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    move-object v4, v0

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->vS:I

    if-lez v3, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->uA:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
