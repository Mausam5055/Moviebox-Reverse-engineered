.class final Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

.field final synthetic this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$1;->$offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    new-instance v9, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    iget-object v2, v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$1;->$offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v9}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    sget-object v10, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    iget-object v1, v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;

    invoke-static {v1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;->access$getPreviousStep$p(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$1;->$offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v14

    const-string v15, "200"

    const-string v16, "success"

    const-string v11, "step_download"

    const/4 v13, 0x1

    invoke-virtual/range {v10 .. v16}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackPrePullCdnRecord(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "step_unzip"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
