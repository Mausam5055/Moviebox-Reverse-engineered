.class final Lcom/transsion/room/viewmodel/RoomHotViewModel$getPostSubject$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomHotViewModel$getPostSubject$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/viewmodel/RoomHotViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/room/viewmodel/RoomHotViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel$getPostSubject$1$a;->a:Lcom/transsion/room/viewmodel/RoomHotViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel$getPostSubject$1$a;->a:Lcom/transsion/room/viewmodel/RoomHotViewModel;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->getPerPage()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    invoke-virtual {p2, v0}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->e0(I)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "0"

    :cond_2
    invoke-static {p2, v0}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->V(Lcom/transsion/room/viewmodel/RoomHotViewModel;Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel$getPostSubject$1$a;->a:Lcom/transsion/room/viewmodel/RoomHotViewModel;

    invoke-static {p2}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->T(Lcom/transsion/room/viewmodel/RoomHotViewModel;)Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomHotViewModel$getPostSubject$1$a;->a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
