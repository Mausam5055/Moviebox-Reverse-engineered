.class final Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.subtitle_download.task.GetInStationSubtitleListTask"
    f = "GetInStationSubtitleListTask.kt"
    l = {
        0x18a
    }
    m = "saveAdnDownload"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->this$0:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iput-object p1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->label:I

    iget-object v0, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->this$0:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v12, p0

    invoke-static/range {v0 .. v12}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->e(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
