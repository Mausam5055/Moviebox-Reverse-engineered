.class public final Lom/b;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# static fields
.field public static final a:Lom/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lom/b;

    invoke-direct {v0}, Lom/b;-><init>()V

    sput-object v0, Lom/b;->a:Lom/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    const-class v0, Lom/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0, p0}, Lnh/m;->l(Lnh/n;)V

    return-void
.end method

.method public onConnected()V
    .locals 0

    invoke-static {p0}, Lnh/n$a;->a(Lnh/n;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/lib_web/download_render/utils/d;->a:Lcom/transsion/lib_web/download_render/utils/d;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/d;->b()V

    sget-object p1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->l()V

    sget-object p1, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->a:Lcom/transsion/lib_web/download_render/FileRemoteDataManager;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->k()V

    sget-object p1, Lgm/i;->a:Lgm/i;

    invoke-direct {p0}, Lom/b;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onConnected() --> \u7f51\u7edc\u91cd\u65b0\u94fe\u63a5\u7684\u65f6\u5019\u68c0\u67e5\u4e00\u4e0b\u5b57\u5e55\u4e0b\u8f7d --> \u5ef6\u8fdf5\u79d2\uff0c\u4f18\u5316\u7f51\u7edc\u6296\u52a8 ....."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgm/i;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/download_render/utils/d;->a:Lcom/transsion/lib_web/download_render/utils/d;

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/d;->c()V

    return-void
.end method
