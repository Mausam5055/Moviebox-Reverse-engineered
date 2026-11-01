.class public final synthetic Lcom/transsion/postdetail/ui/fragment/r4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/r4;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/r4;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;

    check-cast p1, Lcom/transsion/room/api/bean/LocationPlace;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;->H0(Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;Lcom/transsion/room/api/bean/LocationPlace;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
