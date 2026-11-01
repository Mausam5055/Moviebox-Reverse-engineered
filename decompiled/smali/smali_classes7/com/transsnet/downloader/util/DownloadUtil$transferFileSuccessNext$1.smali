.class final Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/util/DownloadUtil;->Q(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsnet.downloader.util.DownloadUtil"
    f = "DownloadUtil.kt"
    l = {
        0x384
    }
    m = "transferFileSuccessNext"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsnet/downloader/util/DownloadUtil;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/util/DownloadUtil;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/util/DownloadUtil;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->this$0:Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iput-object p1, p0, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->label:I

    iget-object v0, p0, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->this$0:Lcom/transsnet/downloader/util/DownloadUtil;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lcom/transsnet/downloader/util/DownloadUtil;->h(Lcom/transsnet/downloader/util/DownloadUtil;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
