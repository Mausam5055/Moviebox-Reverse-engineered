.class public final Lcom/transsion/postdetail/ui/adapter/i;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

# interfaces
.implements Lr6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/adapter/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        ">;",
        "Lr6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003BA\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0015\u001a\u00020\u00132\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/adapter/i;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "Lr6/i;",
        "Landroid/content/Context;",
        "context",
        "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;",
        "adapterFrom",
        "Lsj/b;",
        "exposureHelper",
        "",
        "pageName",
        "pageFrom",
        "Landroidx/lifecycle/LifecycleCoroutineScope;",
        "lifecycleScope",
        "<init>",
        "(Landroid/content/Context;Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;Lsj/b;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/LifecycleCoroutineScope;)V",
        "",
        "data",
        "",
        "position",
        "N1",
        "(Ljava/util/List;I)I",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "holder",
        "",
        "B0",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "G",
        "Lsj/b;",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        "H",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        "imageRecycledViewPool",
        "PostDetail_psRelease"
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
.field private final G:Lsj/b;

.field private final H:Landroidx/recyclerview/widget/RecyclerView$s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;Lsj/b;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/LifecycleCoroutineScope;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/transsion/postdetail/ui/adapter/i;->G:Lsj/b;

    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-direct {v5}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    iput-object v5, p0, Lcom/transsion/postdetail/ui/adapter/i;->H:Landroidx/recyclerview/widget/RecyclerView$s;

    sget-object p3, Lcom/transsion/postdetail/ui/adapter/i$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p3, p3, v2

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    new-instance p3, Lbp/z;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, p1

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lbp/z;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;Landroid/content/Context;Landroidx/lifecycle/LifecycleCoroutineScope;)V

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    new-instance p3, Lbp/t;

    invoke-direct {p3, p4, p5, v5}, Lbp/t;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    goto :goto_0

    :cond_2
    new-instance p3, Lbp/v;

    invoke-direct {p3, p4, p5, v5}, Lbp/v;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    goto :goto_0

    :cond_3
    new-instance p3, Lbp/u;

    invoke-direct {p3, p4, p5, v5}, Lbp/u;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    :goto_0
    sget-object p3, Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;->NEARBY:Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;

    if-ne p2, p3, :cond_5

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-class p4, Lcom/transsion/room/api/IRoomApi;

    invoke-static {p4, p3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/room/api/IRoomApi;

    if-eqz p3, :cond_4

    sget-object p4, Lcom/transsion/room/api/RoomsViewType;->TYPE_ROOM_HOME:Lcom/transsion/room/api/RoomsViewType;

    invoke-interface {p3, p1, p4}, Lcom/transsion/room/api/IRoomApi;->c(Landroid/content/Context;Lcom/transsion/room/api/RoomsViewType;)Laq/c;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    new-instance p1, Lbp/w;

    invoke-direct {p1, v0}, Lbp/w;-><init>(Laq/c;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    :cond_5
    sget-object p1, Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;->DEFAULT:Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;

    if-ne p2, p1, :cond_6

    new-instance p1, Lbp/s;

    invoke-direct {p1}, Lbp/s;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    new-instance p1, Lbp/r;

    invoke-direct {p1}, Lbp/r;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    :cond_6
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;Lsj/b;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/LifecycleCoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/ui/adapter/i;-><init>(Landroid/content/Context;Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;Lsj/b;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/LifecycleCoroutineScope;)V

    return-void
.end method


# virtual methods
.method public B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v3

    iget-object v1, p0, Lcom/transsion/postdetail/ui/adapter/i;->G:Lsj/b;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v2

    const-string p1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutManager"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lsj/b;->j(Lsj/b;Landroidx/recyclerview/widget/RecyclerView$m;IZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected N1(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->POST_DETAIL_FOR_YOU_NATIVE_AD:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->ROOM_LIST:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->ROOM_CACHE_LIST_START:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->ROOM_CACHE_LIST_END:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_3
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->CONTENT_ALL:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/adapter/i;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method
