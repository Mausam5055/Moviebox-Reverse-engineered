.class public final Lbp/e;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Landroidx/fragment/app/Fragment;

.field private f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Z

.field private final m:I

.field private final n:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageFrom"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lbp/e;->e:Landroidx/fragment/app/Fragment;

    iput-boolean p2, p0, Lbp/e;->f:Z

    iput-object p3, p0, Lbp/e;->g:Ljava/lang/String;

    iput-object p4, p0, Lbp/e;->h:Ljava/lang/String;

    iput-boolean p5, p0, Lbp/e;->i:Z

    iput-object p6, p0, Lbp/e;->j:Ljava/lang/String;

    iput-object p7, p0, Lbp/e;->k:Ljava/lang/String;

    iput-boolean p8, p0, Lbp/e;->l:Z

    const/4 p1, 0x1

    iput p1, p0, Lbp/e;->m:I

    sget p1, Lcom/transsion/postdetail/R$layout;->item_immersion_video:I

    iput p1, p0, Lbp/e;->n:I

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, p1, p2}, Lbp/e;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lbp/e;->m:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lbp/e;->n:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 12

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/postdetail/R$id;->view_video_item:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    iget-object v3, p0, Lbp/e;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, p0, Lbp/e;->f:Z

    iget-object v6, p0, Lbp/e;->g:Ljava/lang/String;

    iget-object v7, p0, Lbp/e;->h:Ljava/lang/String;

    iget-boolean v8, p0, Lbp/e;->i:Z

    iget-object v9, p0, Lbp/e;->j:Ljava/lang/String;

    iget-object v10, p0, Lbp/e;->k:Ljava/lang/String;

    iget-boolean v11, p0, Lbp/e;->l:Z

    move-object v2, p2

    invoke-virtual/range {v1 .. v11}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
