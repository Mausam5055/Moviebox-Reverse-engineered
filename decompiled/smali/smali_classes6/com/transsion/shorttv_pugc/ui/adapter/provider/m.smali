.class public final Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "pageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->f:Z

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/adapter/provider/l;

    invoke-direct {p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/l;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->g:Lkotlin/Lazy;

    return-void
.end method

.method private static final B(Lcom/transsion/shorttv_pugc/bean/OperateItem;Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/bean/OperateItem;->getCustomData()Lcom/transsion/shorttv_pugc/bean/CustomData;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/CustomData;->getItems()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/shorttv_pugc/bean/BannerData;

    if-eqz p2, :cond_0

    invoke-direct {p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->G(Lcom/transsion/shorttv_pugc/bean/BannerData;)V

    invoke-direct {p1, p2, p4, p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->F(Lcom/transsion/shorttv_pugc/bean/BannerData;ILcom/transsion/shorttv_pugc/bean/OperateItem;)V

    :cond_0
    return-void
.end method

.method private static final C()Lcom/transsion/shorttv_pugc/ui/adapter/provider/m$a;
    .locals 1

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m$a;

    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m$a;-><init>()V

    return-object v0
.end method

.method private final D()Lcom/transsion/shorttv_pugc/ui/adapter/provider/m$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m$a;

    return-object v0
.end method

.method private final E(Lcom/transsion/shorttv_pugc/bean/OperateItem;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "browse_custom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    const-string v3, "title"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/OperateItem;->getOpId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_0
    const-string v2, "opId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-static {p1, v0}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->a(Lcom/transsion/shorttv_pugc/bean/OperateItem;Ljava/util/Map;)V

    :cond_4
    sget-object p1, Lhj/i;->a:Lhj/i;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final F(Lcom/transsion/shorttv_pugc/bean/BannerData;ILcom/transsion/shorttv_pugc/bean/OperateItem;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "click_custom_item"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/transsion/shorttv_pugc/bean/OperateItem;->getCustomData()Lcom/transsion/shorttv_pugc/bean/CustomData;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/CustomData;->getRowCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "rowCount"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-static {p1, v0}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->b(Lcom/transsion/shorttv_pugc/bean/BannerData;Ljava/util/Map;)V

    :cond_1
    invoke-static {p3, v0}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->a(Lcom/transsion/shorttv_pugc/bean/OperateItem;Ljava/util/Map;)V

    sget-object p1, Lhj/i;->a:Lhj/i;

    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->e:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final G(Lcom/transsion/shorttv_pugc/bean/BannerData;)V
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ldt/a;->a:Ldt/a;

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getOps()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&module_name=opt_custom&ops="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ldt/a;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lds/c;->j(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public static synthetic y()Lcom/transsion/shorttv_pugc/ui/adapter/provider/m$a;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->C()Lcom/transsion/shorttv_pugc/ui/adapter/provider/m$a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic z(Lcom/transsion/shorttv_pugc/bean/OperateItem;Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->B(Lcom/transsion/shorttv_pugc/bean/OperateItem;Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/OperateItem;)V
    .locals 10

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/shorttv/R$id;->sub_operation_variable_title:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/shorttv/R$id;->sub_operation_variable_recycle:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v8, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpCustomAdapter;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/OperateItem;->getCustomData()Lcom/transsion/shorttv_pugc/bean/CustomData;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/OperateItem;->getCustomData()Lcom/transsion/shorttv_pugc/bean/CustomData;

    move-result-object v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/CustomData;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/bean/BannerData;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-boolean v5, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->f:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpCustomAdapter;-><init>(ILjava/lang/String;Lcom/transsion/shorttv_pugc/bean/CustomData;Lcom/transsion/shorttv_pugc/bean/BannerData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v9, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/shorttv_pugc/base/widget/k;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv_pugc/base/widget/k;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->D()Lcom/transsion/shorttv_pugc/ui/adapter/provider/m$a;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->D()Lcom/transsion/shorttv_pugc/ui/adapter/provider/m$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/OperateItem;->getCustomData()Lcom/transsion/shorttv_pugc/bean/CustomData;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/CustomData;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/util/Collection;

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v8, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/adapter/provider/k;

    invoke-direct {p1, p2, p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/k;-><init>(Lcom/transsion/shorttv_pugc/bean/OperateItem;Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;)V

    invoke-virtual {v8, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-direct {p0, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->E(Lcom/transsion/shorttv_pugc/bean/OperateItem;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/shorttv_pugc/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;->CUSTOM_DATA:Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_op_custom:I

    return v0
.end method
