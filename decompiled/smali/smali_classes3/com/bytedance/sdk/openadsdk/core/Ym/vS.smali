.class public Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
.super Ljava/lang/Object;


# instance fields
.field final Sj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;"
        }
    .end annotation
.end field

.field private sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj:Ljava/util/Set;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/HiB;->Sj(Landroid/content/Context;)V

    return-void
.end method

.method private Dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->TKC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private HiB()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->sP()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private Jcg()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->EjP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;-><init>()V

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->vS()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Landroid/view/View;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(Landroid/view/View;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(Z)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;ZF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(ZF)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Dq()V

    return-void
.end method

.method private sP(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->sP(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private sP(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj(Ljava/util/Set;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private sP(Landroid/view/View;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Dq;->Sj(Landroid/view/View;Ljava/util/Set;)Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "createVideoSession failed : "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "scene"

    const-string v1, "createVideoSession"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/HiB;->Sj(Ljava/util/Map;)V

    return-void
.end method

.method private sP(Landroid/webkit/WebView;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Dq;->Sj(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "createWebViewSession failed : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "scene"

    const-string v2, "createWebViewSession"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/HiB;->Sj(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Jcg()V

    return-void
.end method

.method private sP(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private sP(ZF)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj(ZF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private vS()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->sP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 2

    invoke-static {}, Lf6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Dq()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->HiB()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(I)V
    .locals 2

    invoke-static {}, Lf6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->HiB()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(JZ)V
    .locals 2

    invoke-static {}, Lf6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(JZ)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->HiB()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lf6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->HiB()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(Landroid/view/View;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lf6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(Landroid/view/View;Ljava/util/Set;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->HiB()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Landroid/view/View;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public Sj(Landroid/webkit/WebView;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lf6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(Landroid/webkit/WebView;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->HiB()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public Sj(Z)V
    .locals 2

    invoke-static {}, Lf6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->HiB()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(ZF)V
    .locals 2

    invoke-static {}, Lf6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(ZF)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->HiB()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;ZF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public TKC()V
    .locals 2

    invoke-static {}, Lf6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Jcg()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->HiB()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sP()V
    .locals 2

    invoke-static {}, Lf6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->vS()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->HiB()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sP(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;

    if-eqz v0, :cond_0

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    :try_start_0
    invoke-virtual {v0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
