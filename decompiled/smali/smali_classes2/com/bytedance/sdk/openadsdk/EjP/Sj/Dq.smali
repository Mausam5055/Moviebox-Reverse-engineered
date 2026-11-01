.class public Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;


# static fields
.field public static final Sj:Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;


# instance fields
.field private volatile sP:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public EjP()Ljava/lang/String;
    .locals 1

    const-string v0, "logstats"

    return-object v0
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    const-string v0, "logstatsbatch"

    return-object v0
.end method

.method public Sj(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;->sP:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;->sP:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/HiB;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/HiB;->Sj()Lcom/bytedance/sdk/openadsdk/core/vS$TKC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/vS$TKC;->Sj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;->sP:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;->sP:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "loghighpriority"

    return-object v0
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    const-string v0, "adevent"

    return-object v0
.end method

.method public vS()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
