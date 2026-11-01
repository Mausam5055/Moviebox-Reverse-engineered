.class public final Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000E\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001c\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J:\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0019\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u001a\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J$\u0010\u001b\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006!"
    }
    d2 = {
        "com/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1",
        "Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;",
        "offPkgConfig",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "getOffPkgConfig",
        "()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "serverLastModify",
        "",
        "getServerLastModify",
        "()Ljava/lang/String;",
        "setServerLastModify",
        "(Ljava/lang/String;)V",
        "contentType",
        "",
        "contextType",
        "Lokhttp3/MediaType;",
        "onCancel",
        "",
        "url",
        "callbackId",
        "onFailed",
        "errorCode",
        "errorMsg",
        "e",
        "Ljava/io/IOException;",
        "onFinish",
        "onPrepare",
        "onProgress",
        "progress",
        "",
        "responseHeader",
        "headers",
        "Lokhttp3/Headers;",
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


# instance fields
.field final synthetic $downloadUrl:Ljava/lang/String;

.field final synthetic $error:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filePath:Ljava/lang/String;

.field final synthetic $success:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

.field private serverLastModify:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$downloadUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$error:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$success:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;

    iput-object p5, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    return-void
.end method


# virtual methods
.method public contentType(Lokhttp3/MediaType;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrePullAppInfoDownloadTask"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    return-object v0
.end method

.method public final getServerLastModify()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->serverLastModify:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancel url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callbackId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrePullAppInfoDownloadTask"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$error:Lkotlin/jvm/functions/Function3;

    if-eqz p1, :cond_0

    const-string p2, "cancel download"

    const/4 v0, 0x0

    const-string v1, "106"

    invoke-interface {p1, v1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " errorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " errorMsg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callbackId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "PrePullAppInfoDownloadTask"

    invoke-static {p5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "D008"

    const-string p5, "D009"

    filled-new-array {p1, p5}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setLastUpdateTime(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getStackTraceString(e)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "No new version available"

    invoke-static {p3, p1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v6, p1

    sget-object p1, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;

    invoke-static {p2}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;->access$getPreviousStep$p(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "102"

    const-string v1, "step_download"

    const/4 v3, 0x2

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackPrePullCdnRecord(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportPrePullCdnRecord()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$error:Lkotlin/jvm/functions/Function3;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2, p3, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callbackId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrePullAppInfoDownloadTask"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->serverLastModify:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {p2, v0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setLastModify(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$success:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepare url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callbackId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrePullAppInfoDownloadTask"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " progress: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callbackId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrePullAppInfoDownloadTask"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/kernel/proxy/network/a;->a(Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;ILjava/lang/String;JJ)V

    return-void
.end method

.method public responseHeader(Lokhttp3/Headers;)Z
    .locals 9

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    new-instance v1, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1$responseHeader$isEquals$1;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1$responseHeader$isEquals$1;-><init>(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->checkResponseHeader(Lokhttp3/Headers;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance v8, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$downloadUrl:Ljava/lang/String;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final setServerLastModify(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->serverLastModify:Ljava/lang/String;

    return-void
.end method
