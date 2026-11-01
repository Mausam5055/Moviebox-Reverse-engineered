.class final Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/transsion/room/viewmodel/RoomViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/room/viewmodel/RoomViewModel;)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$a;->a:Z

    iput-object p2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$a;->b:Lcom/transsion/room/viewmodel/RoomViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/RoomBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$a;->a:Z

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetailapi/bean/RoomBean;->setRefresh(Z)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$a;->b:Lcom/transsion/room/viewmodel/RoomViewModel;

    invoke-static {p2}, Lcom/transsion/room/viewmodel/RoomViewModel;->n(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$a;->a(Lcom/transsion/moviedetailapi/bean/RoomBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
