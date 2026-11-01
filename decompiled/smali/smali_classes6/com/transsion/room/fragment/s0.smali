.class public final synthetic Lcom/transsion/room/fragment/s0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/room/api/RoomHomeRefreshCacheEvent;

    invoke-static {p1}, Lcom/transsion/room/fragment/RoomHomeFragment;->G0(Lcom/transsion/room/api/RoomHomeRefreshCacheEvent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
