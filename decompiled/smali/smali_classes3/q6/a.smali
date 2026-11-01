.class public abstract Lq6/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq6/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILcom/chad/library/adapter/base/loadmore/LoadMoreStatus;)V
    .locals 2

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "loadMoreStatus"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lq6/a$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p2, p3, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lq6/a;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lq6/a;->a(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lq6/a;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lq6/a;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lq6/a;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lq6/a;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lq6/a;->a(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public abstract getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getRootView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method
