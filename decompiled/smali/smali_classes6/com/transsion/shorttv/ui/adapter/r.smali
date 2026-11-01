.class public final Lcom/transsion/shorttv/ui/adapter/r;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J-\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00022\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/adapter/r;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Ljs/e;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "<init>",
        "()V",
        "item",
        "holder",
        "",
        "E1",
        "(Ljs/e;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "Lcom/transsion/shorttv/bean/Subject;",
        "subject",
        "F1",
        "(Lcom/transsion/shorttv/bean/Subject;)V",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljs/e;)V",
        "",
        "",
        "payloads",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljs/e;Ljava/util/List;)V",
        "",
        "ep",
        "D1",
        "(I)V",
        "F",
        "I",
        "selectEp",
        "G",
        "Lcom/transsion/shorttv/bean/Subject;",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private F:I

.field private G:Lcom/transsion/shorttv/bean/Subject;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_item_episode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/shorttv/ui/adapter/r;->F:I

    return-void
.end method

.method private final E1(Ljs/e;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 3

    sget v0, Lcom/transsion/shorttv/R$id;->v_ep:I

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;

    sget-object v0, Lzr/b;->a:Lzr/b;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/r;->G:Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {p1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzr/b;->c(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->showLockedImg(Z)V

    invoke-virtual {p1}, Ljs/e;->c()I

    move-result p1

    iget v0, p0, Lcom/transsion/shorttv/ui/adapter/r;->F:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->showPlayingImg(Z)V

    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljs/e;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/shorttv/R$id;->v_ep:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;

    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->useForEpList()V

    invoke-virtual {p2}, Ljs/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->showIndex(I)V

    invoke-direct {p0, p2, p1}, Lcom/transsion/shorttv/ui/adapter/r;->E1(Ljs/e;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljs/e;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Ljs/e;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Ljs/e;

    if-eqz p3, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/transsion/shorttv/ui/adapter/r;->E1(Ljs/e;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    :cond_0
    return-void
.end method

.method public final D1(I)V
    .locals 6

    iget v0, p0, Lcom/transsion/shorttv/ui/adapter/r;->F:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljs/e;

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v3

    iget v5, p0, Lcom/transsion/shorttv/ui/adapter/r;->F:I

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_1
    iput p1, p0, Lcom/transsion/shorttv/ui/adapter/r;->F:I

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljs/e;

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljs/e;

    invoke-virtual {v2}, Ljs/e;->c()I

    move-result v2

    if-ne v2, p1, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ltz v4, :cond_6

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljs/e;

    invoke-virtual {p0, v4, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljs/e;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/r;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljs/e;)V

    return-void
.end method

.method public final F1(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/r;->G:Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Ljs/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/r;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljs/e;Ljava/util/List;)V

    return-void
.end method
