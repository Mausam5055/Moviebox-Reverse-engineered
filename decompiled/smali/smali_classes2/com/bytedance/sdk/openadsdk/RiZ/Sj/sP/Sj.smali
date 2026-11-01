.class public Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;
.super Ljava/lang/Object;


# static fields
.field private static volatile sP:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;


# instance fields
.field private Sj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->Sj:Ljava/lang/String;

    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;

    return-object v0
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->Sj:Ljava/lang/String;

    return-void
.end method

.method public sP()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    const-string v1, "gaid"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->LqL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->Sj:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
