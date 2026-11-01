.class public Lcom/bytedance/sdk/openadsdk/TKC/sP;
.super Ljava/lang/Object;


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/TKC/sP;


# instance fields
.field private final sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/RiZ<",
            "Lcom/bytedance/sdk/openadsdk/EjP/Sj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/TKC/sP;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/sP;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/TKC/sP;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/sP;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/TKC/sP;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/TKC/sP;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/sP;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/sP;

    return-object v0
.end method


# virtual methods
.method public Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/TKC/sP;->Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
