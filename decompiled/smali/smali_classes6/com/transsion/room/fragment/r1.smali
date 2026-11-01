.class public final synthetic Lcom/transsion/room/fragment/r1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/room/fragment/RoomListFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/fragment/RoomListFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/fragment/r1;->a:Lcom/transsion/room/fragment/RoomListFragment;

    iput-object p2, p0, Lcom/transsion/room/fragment/r1;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/room/fragment/r1;->a:Lcom/transsion/room/fragment/RoomListFragment;

    iget-object v1, p0, Lcom/transsion/room/fragment/r1;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/transsion/room/fragment/RoomListFragment;->R0(Lcom/transsion/room/fragment/RoomListFragment;Landroid/view/View;)V

    return-void
.end method
