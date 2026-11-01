.class final Lcom/transsion/moviedetail/staff/s$c;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetail/staff/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/staff/s$c;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/moviedetail/staff/s$c;->f:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static synthetic y(Lcom/transsion/moviedetail/staff/s$c;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/moviedetail/staff/s$c;->z(Lcom/transsion/moviedetail/staff/s$c;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private static final z(Lcom/transsion/moviedetail/staff/s$c;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Staff"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Staff;

    const-string p3, "/movie/staff"

    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    const-string v0, "staff"

    invoke-virtual {p3, v0, p1}, Lcom/therouter/router/Navigator;->J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p3, p2, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "module_name"

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/moviedetail/staff/s$c;->e:Ljava/lang/String;

    const-string p3, ""

    if-nez p0, :cond_0

    move-object p0, p3

    :cond_0
    const-string v0, "staff_id"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Staff;->getStaffId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p0

    :goto_0
    const-string p0, "related_staff_id"

    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string p1, "staff_info"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/helper/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final A()Lkotlin/jvm/functions/Function2;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/s$c;->f:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/moviedetail/R$id;->rv:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    instance-of v0, p2, Lcom/transsion/moviedetail/staff/bean/MovieStaffList;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Lig/f;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lig/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/transsion/moviedetail/adapter/b;

    check-cast p2, Lcom/transsion/moviedetail/staff/bean/MovieStaffList;

    invoke-virtual {p2}, Lcom/transsion/moviedetail/staff/bean/MovieStaffList;->getItems()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    const-string v1, "emptyList(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-direct {v0, p2}, Lcom/transsion/moviedetail/adapter/b;-><init>(Ljava/util/List;)V

    new-instance p2, Lcom/transsion/moviedetail/staff/t;

    invoke-direct {p2, p0}, Lcom/transsion/moviedetail/staff/t;-><init>(Lcom/transsion/moviedetail/staff/s$c;)V

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Lcom/transsion/moviedetail/staff/s$c$a;

    invoke-direct {p2, p0}, Lcom/transsion/moviedetail/staff/s$c$a;-><init>(Lcom/transsion/moviedetail/staff/s$c;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_3
    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_staff_item_related:I

    return v0
.end method
