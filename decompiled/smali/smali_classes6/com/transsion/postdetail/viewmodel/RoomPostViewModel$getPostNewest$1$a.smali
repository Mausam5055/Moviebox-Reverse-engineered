.class final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNewest$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNewest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNewest$1$a;->a:Z

    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNewest$1$a;->b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNewest$1$a;->a:Z

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->setRefresh(Z)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNewest$1$a;->b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-static {p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->m(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNewest$1$a;->a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
