.class final Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/DownloadEsHelper;->d0(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.manager.DownloadEsHelper"
    f = "DownloadEsHelper.kt"
    l = {
        0x18a,
        0x199,
        0x19a
    }
    m = "updateReadProgress"
.end annotation


# instance fields
.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsnet/downloader/manager/DownloadEsHelper;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/manager/DownloadEsHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->this$0:Lcom/transsnet/downloader/manager/DownloadEsHelper;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->label:I

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->this$0:Lcom/transsnet/downloader/manager/DownloadEsHelper;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d0(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
