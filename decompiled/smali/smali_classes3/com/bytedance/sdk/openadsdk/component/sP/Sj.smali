.class public Lcom/bytedance/sdk/openadsdk/component/sP/Sj;
.super Ljava/lang/Object;


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/component/sP/Sj;


# instance fields
.field private final sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/component/sP/Sj;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP/Sj;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/component/sP/Sj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP/Sj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/sP/Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/component/sP/Sj;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP/Sj;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP/Sj;

    return-object v0
.end method


# virtual methods
.method public Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/vS;)V
    .locals 9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/model/ib;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/model/ib;-><init>()V

    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/sP/Sj$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/sP/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/sP/Sj;Lcom/bytedance/sdk/openadsdk/common/vS;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/utils/WMZ;)V

    const/4 p1, 0x5

    invoke-interface {v6, p2, v7, p1, v8}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V

    return-void
.end method
