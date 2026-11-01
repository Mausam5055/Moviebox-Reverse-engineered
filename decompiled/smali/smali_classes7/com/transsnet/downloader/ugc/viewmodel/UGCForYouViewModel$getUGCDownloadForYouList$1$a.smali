.class final Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$a;->a:Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$a;->a:Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    invoke-virtual {v0, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->k(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$a;->a:Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    invoke-static {p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->e(Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;)Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
