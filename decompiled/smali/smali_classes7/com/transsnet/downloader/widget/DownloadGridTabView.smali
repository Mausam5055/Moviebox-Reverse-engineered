.class public final Lcom/transsnet/downloader/widget/DownloadGridTabView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0014\u001a\u00020\u000f2\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000f0\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001b\u0010\u0018\u001a\u00020\u000f2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u001fR\u0016\u0010#\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R*\u0010&\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsnet/downloader/widget/DownloadGridTabView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "res",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "position",
        "Lcom/transsnet/downloader/widget/e;",
        "item",
        "",
        "b",
        "(ILcom/transsnet/downloader/widget/e;)V",
        "Lkotlin/Function2;",
        "callback",
        "setItemClickCallback",
        "(Lkotlin/jvm/functions/Function2;)V",
        "",
        "dataList",
        "setDataList",
        "(Ljava/util/List;)V",
        "Lpy/v0;",
        "a",
        "Lpy/v0;",
        "viewBinding",
        "Lcom/transsnet/downloader/widget/d;",
        "Lcom/transsnet/downloader/widget/d;",
        "mAdapter",
        "c",
        "I",
        "curIndex",
        "d",
        "Lkotlin/jvm/functions/Function2;",
        "itemClickCallback",
        "Downloader_psRelease"
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
.field private final a:Lpy/v0;

.field private b:Lcom/transsnet/downloader/widget/d;

.field private c:I

.field private d:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsnet/downloader/widget/DownloadGridTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsnet/downloader/widget/DownloadGridTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsnet/downloader/R$layout;->layout_download_grid_tab:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lpy/v0;->a(Landroid/view/View;)Lpy/v0;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->a:Lpy/v0;

    new-instance p2, Lcom/transsnet/downloader/widget/d;

    invoke-direct {p2}, Lcom/transsnet/downloader/widget/d;-><init>()V

    new-instance p3, Lcom/transsnet/downloader/widget/f;

    invoke-direct {p3, p2, p0}, Lcom/transsnet/downloader/widget/f;-><init>(Lcom/transsnet/downloader/widget/d;Lcom/transsnet/downloader/widget/DownloadGridTabView;)V

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    iput-object p2, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    iget-object p1, p1, Lpy/v0;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x4

    invoke-direct {p2, p3, v0}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance p2, Lig/a;

    const/16 p3, 0x8

    invoke-static {p3}, Ldk/a;->b(I)I

    move-result v0

    invoke-static {p3}, Ldk/a;->b(I)I

    move-result p3

    const/4 v1, 0x0

    invoke-direct {p2, v0, p3, v1, v1}, Lig/a;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object p2, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/widget/d;Lcom/transsnet/downloader/widget/DownloadGridTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c(Lcom/transsnet/downloader/widget/d;Lcom/transsnet/downloader/widget/DownloadGridTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private final b(ILcom/transsnet/downloader/widget/e;)V
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/widget/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/e;->c(Z)V

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iput p1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c:I

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsnet/downloader/widget/e;->c(Z)V

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->d:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private static final c(Lcom/transsnet/downloader/widget/d;Lcom/transsnet/downloader/widget/DownloadGridTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsnet/downloader/widget/e;

    invoke-direct {p1, p4, p0}, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b(ILcom/transsnet/downloader/widget/e;)V

    return-void
.end method


# virtual methods
.method public final setDataList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsnet/downloader/widget/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsnet/downloader/widget/e;

    invoke-virtual {v3}, Lcom/transsnet/downloader/widget/e;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    iput v2, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c:I

    if-gez v2, :cond_2

    iput v1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c:I

    :cond_2
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    return-void
.end method

.method public final setItemClickCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/transsnet/downloader/widget/e;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method
