.class final Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->s(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/fragment/i;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel"
    f = "SubtitleDownloadViewModel.kt"
    l = {
        0xfb,
        0x100
    }
    m = "searchFromOpenSubtitleNewApi"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1;->this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1;->label:I

    iget-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1;->this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->f(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/fragment/i;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
