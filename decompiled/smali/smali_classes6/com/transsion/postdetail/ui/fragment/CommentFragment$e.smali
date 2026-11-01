.class public final Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/postdetail/util/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/CommentFragment;->W0()V
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

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->q0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Lcom/transsion/postdetail/comment/g;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/w;->dismiss()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
