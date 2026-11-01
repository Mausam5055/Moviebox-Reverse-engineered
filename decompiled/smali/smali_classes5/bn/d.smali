.class public final Lbn/d;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lbn/d;->e:Ljava/lang/String;

    iput-object p2, p0, Lbn/d;->f:Ljava/lang/String;

    new-instance p1, Lbn/c;

    invoke-direct {p1, p0}, Lbn/c;-><init>(Lbn/d;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lbn/d;->g:Lkotlin/Lazy;

    return-void
.end method

.method private final A()Laq/c;
    .locals 1

    iget-object v0, p0, Lbn/d;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq/c;

    return-object v0
.end method

.method private static final B(Lbn/d;)Laq/c;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IRoomApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IRoomApi;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/transsion/room/api/RoomsViewType;->TYPE_SUBJECT_DETAIL:Lcom/transsion/room/api/RoomsViewType;

    invoke-interface {v0, p0, v1}, Lcom/transsion/room/api/IRoomApi;->c(Landroid/content/Context;Lcom/transsion/room/api/RoomsViewType;)Laq/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic y(Lbn/d;)Laq/c;
    .locals 0

    invoke-static {p0}, Lbn/d;->B(Lbn/d;)Laq/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, p1, p2}, Lbn/d;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/MediaType;->ROOM_LIST:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_rooms:I

    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/moviedetail/R$id;->fl_root:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lbn/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lbn/d;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->COMMENTS:Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {p0}, Lbn/d;->A()Laq/c;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v0, v1}, Laq/c;->setReportName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getRoomList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lbn/d;->A()Laq/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Laq/c;->setList(Ljava/util/List;)V

    :cond_2
    invoke-direct {p0}, Lbn/d;->A()Laq/c;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Laq/c;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method
