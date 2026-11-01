.class public final Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c1(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
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

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    const-string v1, "delete_comment"

    invoke-static {v0, v1, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->A0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
