.class public final Lcom/transsion/room/fragment/RoomHomeFragment$e;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomHomeFragment;->z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomHomeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomHomeFragment;)V
    .locals 4

    iput-object p1, p0, Lcom/transsion/room/fragment/RoomHomeFragment$e;->a:Lcom/transsion/room/fragment/RoomHomeFragment;

    const-wide/16 v0, 0x1388

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomHomeFragment$e;->a:Lcom/transsion/room/fragment/RoomHomeFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbq/q;->b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
