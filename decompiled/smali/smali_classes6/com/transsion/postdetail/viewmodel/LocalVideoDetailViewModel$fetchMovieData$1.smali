.class public final Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    invoke-virtual {p1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->g()Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    invoke-static {p1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->c(Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->e(Lcom/transsion/moviedetailapi/bean/Subject;)V

    return-void
.end method

.method public e(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    invoke-static {v0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1$onSuccess$1;

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, v2}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1$onSuccess$1;-><init>(Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lsg/a;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    return-void
.end method
