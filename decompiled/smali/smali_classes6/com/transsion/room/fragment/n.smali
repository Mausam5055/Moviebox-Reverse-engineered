.class public final synthetic Lcom/transsion/room/fragment/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/room/fragment/RoomDetailFragment;

.field public final synthetic b:Lcom/tn/lib/view/ToolBarCheckInAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/fragment/RoomDetailFragment;Lcom/tn/lib/view/ToolBarCheckInAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/fragment/n;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    iput-object p2, p0, Lcom/transsion/room/fragment/n;->b:Lcom/tn/lib/view/ToolBarCheckInAnimationView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/room/fragment/n;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    iget-object v1, p0, Lcom/transsion/room/fragment/n;->b:Lcom/tn/lib/view/ToolBarCheckInAnimationView;

    invoke-static {v0, v1, p1}, Lcom/transsion/room/fragment/RoomDetailFragment;->v0(Lcom/transsion/room/fragment/RoomDetailFragment;Lcom/tn/lib/view/ToolBarCheckInAnimationView;Landroid/view/View;)V

    return-void
.end method
