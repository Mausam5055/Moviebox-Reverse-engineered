.class public final synthetic Lcom/transsion/room/fragment/c2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/room/fragment/RoomsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/fragment/RoomsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/fragment/c2;->a:Lcom/transsion/room/fragment/RoomsFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/fragment/c2;->a:Lcom/transsion/room/fragment/RoomsFragment;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomBean;

    invoke-static {v0, p1}, Lcom/transsion/room/fragment/RoomsFragment;->Q0(Lcom/transsion/room/fragment/RoomsFragment;Lcom/transsion/moviedetailapi/bean/RoomBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
