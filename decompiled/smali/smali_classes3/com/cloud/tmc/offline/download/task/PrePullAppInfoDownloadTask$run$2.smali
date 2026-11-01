.class final Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;->run(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/io/IOException;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "errorCode",
        "",
        "errorMsg",
        "e",
        "Ljava/io/IOException;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

.field final synthetic this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$2;->$offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$2;->this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/io/IOException;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$2;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;)V
    .locals 9

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    new-instance v8, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$2;->$offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "getStackTraceString(e)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    move-object v6, p2

    goto :goto_0

    :cond_1
    move-object v6, p3

    :goto_0
    sget-object p2, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    iget-object p3, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$2;->this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;

    invoke-static {p3}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;->access$getPreviousStep$p(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;)Ljava/lang/String;

    move-result-object v2

    iget-object p3, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$2;->$offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v4

    const-string v1, "step_download"

    const/4 v3, 0x0

    move-object v0, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackPrePullCdnRecord(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportPrePullCdnRecord()V

    return-void
.end method
