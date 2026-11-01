.class public final Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$c;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

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

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$l;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_4

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p2}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$isRTL$p(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p2}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p2}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p2}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p2}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p2}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$isRTL$p(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p2}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p2}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_4
    :goto_0
    return-void
.end method
