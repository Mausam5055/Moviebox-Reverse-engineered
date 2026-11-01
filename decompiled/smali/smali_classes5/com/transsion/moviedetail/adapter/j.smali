.class public final Lcom/transsion/moviedetail/adapter/j;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

# interfaces
.implements Lr6/i;


# annotations
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B3\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J%\u0010\u0015\u001a\u00020\u000f2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0019\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/moviedetail/adapter/j;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "Lr6/i;",
        "",
        "postSubjectList",
        "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;",
        "viewModel",
        "",
        "pageName",
        "pageFrom",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;Ljava/lang/String;Ljava/lang/String;)V",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "holder",
        "",
        "position",
        "",
        "w0",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V",
        "data",
        "N1",
        "(Ljava/util/List;I)I",
        "Q1",
        "()V",
        "G",
        "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;",
        "S1",
        "()Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;",
        "H",
        "Ljava/lang/String;",
        "R1",
        "()Ljava/lang/String;",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        "I",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        "imageRecycledViewPool",
        "MovieDetail_psRelease"
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
.field private final G:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

.field private final H:Ljava/lang/String;

.field private final I:Landroidx/recyclerview/widget/RecyclerView$s;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
            ">;",
            "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "postSubjectList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/transsion/moviedetail/adapter/j;->G:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    iput-object p3, p0, Lcom/transsion/moviedetail/adapter/j;->H:Ljava/lang/String;

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/j;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->A()Lcom/transsion/moviedetailapi/enum/PostListSource;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/transsion/moviedetailapi/enum/PostListSource;->PROFILE:Lcom/transsion/moviedetailapi/enum/PostListSource;

    const/4 v3, 0x0

    const-class v4, Lcom/transsion/postdetailapi/IPostDetailApi;

    if-ne v1, v2, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/postdetailapi/IPostDetailApi;

    if-eqz v1, :cond_1

    invoke-interface {v1, p3, p4, p1}, Lcom/transsion/postdetailapi/IPostDetailApi;->o(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_1

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/postdetailapi/IPostDetailApi;

    if-eqz v1, :cond_1

    invoke-interface {v1, p3, p4, p1}, Lcom/transsion/postdetailapi/IPostDetailApi;->h(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    :cond_3
    new-instance p1, Lbn/b;

    invoke-direct {p1}, Lbn/b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    new-instance p1, Lbn/d;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->B()Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-direct {p1, p3, v0}, Lbn/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
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

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->ROOM_LIST:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->SUBJECT_DETAIL_NATIVE_AD:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_1
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->CONTENT_ALL:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public final Q1()V
    .locals 1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final R1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/j;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final S1()Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/j;->G:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    return-object v0
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/adapter/j;->w0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void
.end method

.method public w0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/moviedetail/R$id;->root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/moviedetail/adapter/j;->G:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p1, v0, p2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->H(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    :cond_1
    return-void
.end method
