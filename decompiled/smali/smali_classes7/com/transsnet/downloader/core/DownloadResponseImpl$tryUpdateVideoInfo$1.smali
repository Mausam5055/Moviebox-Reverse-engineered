.class final Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadResponseImpl;->m(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsnet.downloader.core.DownloadResponseImpl"
    f = "DownloadResponseImpl.kt"
    l = {
        0xf2,
        0xf5,
        0xf2,
        0xf5,
        0xf2,
        0xf5
    }
    m = "tryUpdateVideoInfo"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsnet/downloader/core/DownloadResponseImpl;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/DownloadResponseImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/core/DownloadResponseImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->this$0:Lcom/transsnet/downloader/core/DownloadResponseImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->label:I

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->this$0:Lcom/transsnet/downloader/core/DownloadResponseImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->g(Lcom/transsnet/downloader/core/DownloadResponseImpl;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
