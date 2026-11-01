.class public final Lcom/transsion/room/viewmodel/RoomDetailViewModel$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomDetailViewModel;->p(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/room/viewmodel/RoomDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$b;->d:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$b;->d:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    invoke-static {p1}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->j(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    invoke-virtual {p0, p1}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$b;->e(Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    return-void
.end method

.method public e(Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$b;->d:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    invoke-static {v0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->j(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
