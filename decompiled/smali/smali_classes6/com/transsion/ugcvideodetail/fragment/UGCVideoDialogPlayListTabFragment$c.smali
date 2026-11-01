.class public final Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListTabFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListTabFragment;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListTabFragment$c;->a:I

    iput p2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListTabFragment$c;->b:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-nez p2, :cond_1

    iget p2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListTabFragment$c;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListTabFragment$c;->b:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    if-ne p2, p3, :cond_2

    iget p2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListTabFragment$c;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListTabFragment$c;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListTabFragment$c;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    return-void
.end method
