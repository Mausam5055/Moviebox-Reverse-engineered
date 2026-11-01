.class public final Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->showCommentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/Stat;->setCommentCount(Ljava/lang/Long;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$updateCommentCount(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;J)V

    return-void
.end method
