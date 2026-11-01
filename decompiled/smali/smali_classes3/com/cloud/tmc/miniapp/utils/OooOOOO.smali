.class public final Lcom/cloud/tmc/miniapp/utils/OooOOOO;
.super Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO00o;


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

.field public final synthetic OooO0OO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO0O0:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO0OO:Ljava/lang/String;

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO00o;-><init>()V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$loadCheckCallback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->hideLoading()V

    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;->onLoadSuccess(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPackageLoadFailed(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 0

    sget-object p1, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->hideLoading()V

    return-void
.end method

.method public onPackageLoadSuccess()V
    .locals 3

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO0O0:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO0OO:Ljava/lang/String;

    new-instance v2, Lcom/cloud/tmc/miniapp/utils/q;

    invoke-direct {v2, v0, v1}, Lcom/cloud/tmc/miniapp/utils/q;-><init>(Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method
