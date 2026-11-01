.class final Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$a;->a:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/publish/model/PostEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$a;->a:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    invoke-virtual {p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->H()Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/publish/model/PostEntity;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1$a;->a(Lcom/transsion/publish/model/PostEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
