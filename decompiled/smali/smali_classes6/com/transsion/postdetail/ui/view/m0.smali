.class public final synthetic Lcom/transsion/postdetail/ui/view/m0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field public final synthetic b:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/m0;->a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/m0;->b:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    iput-boolean p3, p0, Lcom/transsion/postdetail/ui/view/m0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/m0;->a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/m0;->b:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    iget-boolean v2, p0, Lcom/transsion/postdetail/ui/view/m0;->c:Z

    invoke-static {v0, v1, v2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->x(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Z)V

    return-void
.end method
