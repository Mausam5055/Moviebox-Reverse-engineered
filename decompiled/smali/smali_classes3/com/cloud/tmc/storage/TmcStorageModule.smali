.class public final Lcom/cloud/tmc/storage/TmcStorageModule;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cloud/tmc/storage/TmcStorageModule;",
        "",
        "()V",
        "sInit",
        "",
        "optionalInitCalls",
        "",
        "context",
        "Landroid/content/Context;",
        "storage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/storage/TmcStorageModule;

.field private static volatile sInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/storage/TmcStorageModule;

    invoke-direct {v0}, Lcom/cloud/tmc/storage/TmcStorageModule;-><init>()V

    sput-object v0, Lcom/cloud/tmc/storage/TmcStorageModule;->INSTANCE:Lcom/cloud/tmc/storage/TmcStorageModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final optionalInitCalls(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    sget-boolean v0, Lcom/cloud/tmc/storage/TmcStorageModule;->sInit:Z

    if-nez v0, :cond_2

    const-class v0, Lcom/cloud/tmc/storage/TmcStorageModule;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v1, Lcom/cloud/tmc/storage/TmcStorageModule;->sInit:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->C(Landroid/content/Context;)Ljava/lang/String;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/cloud/tmc/storage/TmcStorageModule;->sInit:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    const-string v0, "TmcStorageModule::"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/storage/TmcStorageModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method
