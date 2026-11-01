.class public final Lcom/transsion/room/widget/MyRoomsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0017\u001a\u00020\u000f2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0013\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0019\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/room/widget/MyRoomsView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
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
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "item",
        "position",
        "",
        "n",
        "(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V",
        "k",
        "m",
        "()V",
        "",
        "dataList",
        "setList",
        "(Ljava/util/List;)V",
        "",
        "getDataList",
        "()Ljava/util/List;",
        "Lbq/j0;",
        "a",
        "Lbq/j0;",
        "viewBinding",
        "Lcom/transsion/room/adapter/YourRoomsAdapter;",
        "b",
        "Lcom/transsion/room/adapter/YourRoomsAdapter;",
        "mAdapter",
        "Room_psRelease"
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
.field private final a:Lbq/j0;

.field private b:Lcom/transsion/room/adapter/YourRoomsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/room/widget/MyRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/room/widget/MyRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/transsion/room/adapter/YourRoomsAdapter;

    invoke-direct {p1}, Lcom/transsion/room/adapter/YourRoomsAdapter;-><init>()V

    new-instance p2, Lcom/transsion/room/widget/a;

    invoke-direct {p2, p0}, Lcom/transsion/room/widget/a;-><init>(Lcom/transsion/room/widget/MyRoomsView;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    iput-object p1, p0, Lcom/transsion/room/widget/MyRoomsView;->b:Lcom/transsion/room/adapter/YourRoomsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsion/room/R$layout;->view_your_rooms:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lbq/j0;->a(Landroid/view/View;)Lbq/j0;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/room/widget/MyRoomsView;->a:Lbq/j0;

    iget-object p2, p1, Lbq/j0;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p3, v0, v1}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance p3, Lig/a;

    const/16 v0, 0x8

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, v1, v1}, Lig/a;-><init>(IIII)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object p3, p0, Lcom/transsion/room/widget/MyRoomsView;->b:Lcom/transsion/room/adapter/YourRoomsAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p1, Lbq/j0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/transsion/room/widget/b;

    invoke-direct {p2, p0}, Lcom/transsion/room/widget/b;-><init>(Lcom/transsion/room/widget/MyRoomsView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/room/widget/MyRoomsView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/widget/MyRoomsView;->l(Lcom/transsion/room/widget/MyRoomsView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/room/widget/MyRoomsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/widget/MyRoomsView;->j(Lcom/transsion/room/widget/MyRoomsView;Landroid/view/View;)V

    return-void
.end method

.method private static final j(Lcom/transsion/room/widget/MyRoomsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/widget/MyRoomsView;->m()V

    return-void
.end method

.method private final k(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/RoomItem;->setNewPostCount(Ljava/lang/Long;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/room/widget/MyRoomsView;->b:Lcom/transsion/room/adapter/YourRoomsAdapter;

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private static final l(Lcom/transsion/room/widget/MyRoomsView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/transsion/room/widget/MyRoomsView;->n(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V

    return-void
.end method

.method private final m()V
    .locals 4

    sget-object v0, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    const-string v1, "room_home"

    invoke-virtual {v0, v1}, Lcom/transsion/room/helper/l;->a(Ljava/lang/String;)V

    const-string v0, "/room/list"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private final n(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V
    .locals 4

    sget-object v0, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    const-string v1, "room_home"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/room/helper/l;->b(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    const-string v0, "/room/detail"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/room/widget/MyRoomsView;->k(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V

    return-void
.end method


# virtual methods
.method public final getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/room/widget/MyRoomsView;->b:Lcom/transsion/room/adapter/YourRoomsAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final setList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "tvMore"

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/room/widget/MyRoomsView;->a:Lbq/j0;

    iget-object v0, v0, Lbq/j0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/room/widget/MyRoomsView;->a:Lbq/j0;

    iget-object v0, v0, Lbq/j0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/room/widget/MyRoomsView;->b:Lcom/transsion/room/adapter/YourRoomsAdapter;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    return-void
.end method
