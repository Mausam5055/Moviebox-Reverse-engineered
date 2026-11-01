.class public final Lcom/cloud/tmc/component_api_ps/async/MiniAppProtocolModuleThreadPoolPolicy;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/component_api_ps/async/MiniAppProtocolModuleThreadPoolPolicy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/component_api_ps/async/MiniAppProtocolModuleThreadPoolPolicy;",
        "Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;",
        "()V",
        "rejectedExecution",
        "",
        "r",
        "Ljava/lang/Runnable;",
        "e",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "Companion",
        "com.cloud.tmc.component_api_ps"
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
.field public static final Companion:Lcom/cloud/tmc/component_api_ps/async/MiniAppProtocolModuleThreadPoolPolicy$Companion;

.field private static final TAG:Ljava/lang/String; = "MiniAppProtocolModuleThreadPoolPolicy"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppProtocolModuleThreadPoolPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/component_api_ps/async/MiniAppProtocolModuleThreadPoolPolicy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppProtocolModuleThreadPoolPolicy;->Companion:Lcom/cloud/tmc/component_api_ps/async/MiniAppProtocolModuleThreadPoolPolicy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
