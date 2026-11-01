.class public final synthetic Lcom/transsion/room/fragment/t0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/room/fragment/RoomHomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/fragment/RoomHomeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/fragment/t0;->a:Lcom/transsion/room/fragment/RoomHomeFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/fragment/t0;->a:Lcom/transsion/room/fragment/RoomHomeFragment;

    check-cast p1, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;

    invoke-static {v0, p1}, Lcom/transsion/room/fragment/RoomHomeFragment;->N0(Lcom/transsion/room/fragment/RoomHomeFragment;Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
