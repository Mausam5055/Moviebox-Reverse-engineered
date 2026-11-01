.class public final synthetic Lcom/transsion/room/fragment/g1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/room/fragment/RoomListBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/fragment/RoomListBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/fragment/g1;->a:Lcom/transsion/room/fragment/RoomListBaseFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/fragment/g1;->a:Lcom/transsion/room/fragment/RoomListBaseFragment;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomNet;

    invoke-static {v0, p1}, Lcom/transsion/room/fragment/RoomListBaseFragment;->k0(Lcom/transsion/room/fragment/RoomListBaseFragment;Lcom/transsion/moviedetailapi/bean/RoomNet;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
