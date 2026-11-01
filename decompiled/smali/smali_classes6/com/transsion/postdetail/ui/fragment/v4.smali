.class public final synthetic Lcom/transsion/postdetail/ui/fragment/v4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;->J0()Lcom/transsion/room/api/IRoomApi;

    move-result-object v0

    return-object v0
.end method
