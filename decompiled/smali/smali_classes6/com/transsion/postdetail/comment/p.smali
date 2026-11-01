.class public final synthetic Lcom/transsion/postdetail/comment/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/comment/CommentHolder;

.field public final synthetic b:Ln6/a;

.field public final synthetic c:Lcom/transsion/postdetail/comment/g0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/comment/CommentHolder;Ln6/a;Lcom/transsion/postdetail/comment/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/comment/p;->a:Lcom/transsion/postdetail/comment/CommentHolder;

    iput-object p2, p0, Lcom/transsion/postdetail/comment/p;->b:Ln6/a;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/p;->c:Lcom/transsion/postdetail/comment/g0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/comment/p;->a:Lcom/transsion/postdetail/comment/CommentHolder;

    iget-object v1, p0, Lcom/transsion/postdetail/comment/p;->b:Ln6/a;

    iget-object v2, p0, Lcom/transsion/postdetail/comment/p;->c:Lcom/transsion/postdetail/comment/g0;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/postdetail/comment/CommentHolder;->h(Lcom/transsion/postdetail/comment/CommentHolder;Ln6/a;Lcom/transsion/postdetail/comment/g0;Landroid/view/View;)V

    return-void
.end method
