.class public final Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o0:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0OO:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0Oo:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0o0:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0OO:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 0

    const-string p1, "errorCode"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorMsg"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0OO:Ljava/lang/String;

    const-string p4, ""

    const/4 p5, 0x0

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object p1, Lcom/cloud/tmc/integration/utils/FilePathUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/FilePathUtils;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/utils/FilePathUtils;->getDowngradeStatus(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "1000886706715795456"

    if-eqz p1, :cond_0

    :try_start_1
    const-class p1, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0Oo:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0o0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, p2, v1}, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "manager.generateVUrl(downloadPath, MC_APPID, name)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-class p1, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0Oo:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0o0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "temp_data"

    invoke-interface {p1, v0, p2, v1, v2}, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "manager.generateVUrl(dow\u2026Constants.TEMP_DATA_PATH)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0OO:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p2, v0, v1, p1, v2}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    const-string p2, "IconDownloadManager"

    const-string v0, "[downloadIcon] error"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0OO:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "url1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callbackId1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    const-string p2, "url1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callbackId1"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    const-string p2, "url1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callbackId1"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
