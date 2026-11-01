.class public final synthetic Lcom/transsion/moviedetail/adapter/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/adapter/i$a;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/h;->a:Lcom/transsion/moviedetail/adapter/i$a;

    iput-object p2, p0, Lcom/transsion/moviedetail/adapter/h;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iput-object p3, p0, Lcom/transsion/moviedetail/adapter/h;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/h;->a:Lcom/transsion/moviedetail/adapter/i$a;

    iget-object v1, p0, Lcom/transsion/moviedetail/adapter/h;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v2, p0, Lcom/transsion/moviedetail/adapter/h;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/moviedetail/adapter/i$a;->C1(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
