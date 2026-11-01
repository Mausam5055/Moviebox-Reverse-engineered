.class public final Lcom/transsion/postdetail/ui/fragment/CommentFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/CommentFragment;->I0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    invoke-static {p0}, Lnh/n$a;->a(Lnh/n;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->r0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Lcom/transsion/postdetail/comment/n;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q0()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->z0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
