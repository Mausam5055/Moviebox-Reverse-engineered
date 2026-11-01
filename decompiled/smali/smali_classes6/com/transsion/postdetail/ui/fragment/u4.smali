.class public final synthetic Lcom/transsion/postdetail/ui/fragment/u4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/u4;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/u4;->b:Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/u4;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/u4;->b:Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;->L0(Landroid/view/View;Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;)V

    return-void
.end method
