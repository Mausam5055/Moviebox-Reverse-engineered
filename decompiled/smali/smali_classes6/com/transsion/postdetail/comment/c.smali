.class public final synthetic Lcom/transsion/postdetail/comment/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/comment/c;->a:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    iput-object p2, p0, Lcom/transsion/postdetail/comment/c;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/comment/c;->a:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    iget-object v1, p0, Lcom/transsion/postdetail/comment/c;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;->X(Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
