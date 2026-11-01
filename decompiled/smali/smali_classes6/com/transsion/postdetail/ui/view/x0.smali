.class public final synthetic Lcom/transsion/postdetail/ui/view/x0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/CommentBean;

.field public final synthetic c:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/x0;->a:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/x0;->b:Lcom/transsion/moviedetailapi/bean/CommentBean;

    iput-object p3, p0, Lcom/transsion/postdetail/ui/view/x0;->c:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/x0;->a:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/x0;->b:Lcom/transsion/moviedetailapi/bean/CommentBean;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/x0;->c:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->r(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V

    return-void
.end method
