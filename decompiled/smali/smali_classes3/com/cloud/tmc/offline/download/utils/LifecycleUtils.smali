.class public final Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;",
        "",
        "()V",
        "TAG",
        "",
        "addOfflineLifecycleObserver",
        "",
        "appId",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "com.cloud.tmc.offline_download"
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
.field public static final INSTANCE:Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: LifecycleUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addOfflineLifecycleObserver(Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    .locals 3

    const-string v0, "TmcOfflineDownload: LifecycleUtils"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "\u5f53\u524d\u4e0d\u5728\u4e3b\u7ebf\u7a0b\u4e2d\uff0c\u4e0d\u5141\u8bb8\u6ce8\u518c\u89c2\u5bdf\u8005"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "appId or lifecycle is null or empty"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
