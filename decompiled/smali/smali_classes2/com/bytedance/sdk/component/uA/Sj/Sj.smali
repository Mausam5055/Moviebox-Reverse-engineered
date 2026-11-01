.class public Lcom/bytedance/sdk/component/uA/Sj/Sj;
.super Ljava/lang/Object;


# static fields
.field private static volatile sP:Lcom/bytedance/sdk/component/uA/Sj/Sj;


# instance fields
.field private volatile Sj:Lcom/bytedance/sdk/component/uA/Sj/sP;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/component/uA/Sj/Sj;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/uA/Sj/Sj;->sP:Lcom/bytedance/sdk/component/uA/Sj/Sj;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/uA/Sj/Sj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/uA/Sj/Sj;->sP:Lcom/bytedance/sdk/component/uA/Sj/Sj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/uA/Sj/Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/uA/Sj/Sj;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/uA/Sj/Sj;->sP:Lcom/bytedance/sdk/component/uA/Sj/Sj;

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
    sget-object v0, Lcom/bytedance/sdk/component/uA/Sj/Sj;->sP:Lcom/bytedance/sdk/component/uA/Sj/Sj;

    return-object v0
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/uA/Sj/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/Sj/sP;

    return-void
.end method

.method public sP()Lcom/bytedance/sdk/component/uA/Sj/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/Sj/sP;

    return-object v0
.end method
