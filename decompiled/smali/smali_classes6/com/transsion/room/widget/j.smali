.class public final synthetic Lcom/transsion/room/widget/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/room/widget/RoomsBaseView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/widget/RoomsBaseView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/widget/j;->a:Lcom/transsion/room/widget/RoomsBaseView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/widget/j;->a:Lcom/transsion/room/widget/RoomsBaseView;

    check-cast p1, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;

    invoke-static {v0, p1}, Lcom/transsion/room/widget/RoomsBaseView;->m(Lcom/transsion/room/widget/RoomsBaseView;Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
