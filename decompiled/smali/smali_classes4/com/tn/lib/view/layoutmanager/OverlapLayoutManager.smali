.class public final Lcom/tn/lib/view/layoutmanager/OverlapLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J#\u0010\u0008\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/tn/lib/view/layoutmanager/OverlapLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "Landroidx/recyclerview/widget/RecyclerView$t;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView$y;",
        "state",
        "",
        "onLayoutChildren",
        "(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)V",
        "",
        "a",
        "I",
        "overlapAmount",
        "UI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:I


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 10

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$t;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    move v8, v1

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$t;->o(I)Landroid/view/View;

    move-result-object v3

    const-string v2, "getViewForPosition(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->measureChildWithMargins(Landroid/view/View;II)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v9

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v7

    const/4 v5, 0x0

    add-int v6, v8, v9

    move-object v2, p0

    move v4, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView$m;->layoutDecorated(Landroid/view/View;IIII)V

    iget v2, p0, Lcom/tn/lib/view/layoutmanager/OverlapLayoutManager;->a:I

    sub-int/2addr v9, v2

    add-int/2addr v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
