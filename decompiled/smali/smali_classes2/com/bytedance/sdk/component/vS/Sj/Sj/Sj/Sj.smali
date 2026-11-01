.class public Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;
.super Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;->Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;

    move-result-object v0

    return-object v0
.end method
