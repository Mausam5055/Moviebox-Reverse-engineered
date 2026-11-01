.class public final synthetic Lcom/transsion/postdetail/ui/view/y0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/CommentBean;

.field public final synthetic b:Lcom/transsion/postdetail/ui/view/PostBaseItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/PostBaseItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/y0;->a:Lcom/transsion/moviedetailapi/bean/CommentBean;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/y0;->b:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/y0;->a:Lcom/transsion/moviedetailapi/bean/CommentBean;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/y0;->b:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    check-cast p1, Lin/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->k(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lin/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
