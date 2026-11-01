.class public final synthetic Lcom/transsion/room/fragment/i1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/result/a;


# instance fields
.field public final synthetic a:Lcom/transsion/room/fragment/RoomListBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/fragment/RoomListBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/fragment/i1;->a:Lcom/transsion/room/fragment/RoomListBaseFragment;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/fragment/i1;->a:Lcom/transsion/room/fragment/RoomListBaseFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/transsion/room/fragment/RoomListBaseFragment;->q0(Lcom/transsion/room/fragment/RoomListBaseFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
