.class public final synthetic Lbp/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field public final synthetic b:Lbp/z;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp/x;->a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iput-object p2, p0, Lbp/x;->b:Lbp/z;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lbp/x;->a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v1, p0, Lbp/x;->b:Lbp/z;

    invoke-static {v0, v1, p1}, Lbp/z;->y(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/z;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
