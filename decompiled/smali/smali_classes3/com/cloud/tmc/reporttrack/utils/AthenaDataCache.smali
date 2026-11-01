.class public final Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0006\u0010\n\u001a\u00020\tJ\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000cJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;",
        "",
        "()V",
        "CACHE_MAX_COUNT",
        "",
        "dataCache",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;",
        "checkOverFlow",
        "",
        "clearAthenaData",
        "getAthenaData",
        "",
        "setAthenaData",
        "athenaDataBean",
        "com.cloud.tmc.reporttrack"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CACHE_MAX_COUNT:I = 0x64

.field public static final INSTANCE:Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;

.field private static final dataCache:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;

    invoke-direct {v0}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;-><init>()V

    sput-object v0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->INSTANCE:Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->dataCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkOverFlow()V
    .locals 3

    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->dataCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->checkOverFlow()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final clearAthenaData()V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->dataCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public final getAthenaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->dataCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final setAthenaData(Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;)V
    .locals 1

    const-string v0, "athenaDataBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->checkOverFlow()V

    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->dataCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
