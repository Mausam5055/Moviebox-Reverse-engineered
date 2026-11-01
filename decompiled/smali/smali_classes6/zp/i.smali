.class public final synthetic Lzp/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/room/activity/MyRoomActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/activity/MyRoomActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzp/i;->a:Lcom/transsion/room/activity/MyRoomActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzp/i;->a:Lcom/transsion/room/activity/MyRoomActivity;

    check-cast p1, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;

    invoke-static {v0, p1}, Lcom/transsion/room/activity/MyRoomActivity;->F0(Lcom/transsion/room/activity/MyRoomActivity;Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
