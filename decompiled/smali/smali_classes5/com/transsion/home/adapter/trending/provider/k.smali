.class public final Lcom/transsion/home/adapter/trending/provider/k;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    return-void
.end method

.method private static final B(Lcom/transsion/home/adapter/trending/provider/k;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p0

    instance-of v0, p0, Lcom/transsion/home/adapter/trending/b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/home/adapter/trending/b;

    invoke-virtual {p0}, Lcom/transsion/home/adapter/trending/b;->R1()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId$a;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tn/lib/view/r;->b(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final C()Lkotlin/Unit;
    .locals 2

    sget-object v0, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    invoke-virtual {v1}, Lcom/transsion/home/enum/HomeTabId$a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tn/lib/view/r;->c(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/trending/provider/k;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/adapter/trending/provider/k;->B(Lcom/transsion/home/adapter/trending/provider/k;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/k;->C()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/transsion/home/R$id;->no_network:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tn/lib/view/NoNetworkSmallView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/transsion/home/adapter/trending/provider/i;

    invoke-direct {p2, p0}, Lcom/transsion/home/adapter/trending/provider/i;-><init>(Lcom/transsion/home/adapter/trending/provider/k;)V

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/NoNetworkSmallView;->retry(Lkotlin/jvm/functions/Function0;)V

    new-instance p2, Lcom/transsion/home/adapter/trending/provider/j;

    invoke-direct {p2}, Lcom/transsion/home/adapter/trending/provider/j;-><init>()V

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/NoNetworkSmallView;->goToSetting(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    sget-object p1, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    sget-object p2, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    invoke-virtual {p2}, Lcom/transsion/home/enum/HomeTabId$a;->g()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tn/lib/view/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/k;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->NO_NETWORK:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_no_network:I

    return v0
.end method
