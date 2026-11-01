.class final Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/a;

.field final synthetic b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;


# direct methods
.method constructor <init>(Leu/a;Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->a:Leu/a;

    iput-object p2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;->getLink()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->a:Leu/a;

    invoke-virtual {p2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    invoke-virtual {p1}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->a:Leu/a;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1$a;->a(Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
