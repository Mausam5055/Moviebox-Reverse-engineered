.class public final Lcom/transsion/home/fragment/rank/RankListFragment$b;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;

# interfaces
.implements Lr6/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/fragment/rank/RankListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lr6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\r\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\'\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000cJ\u0017\u0010\u0014\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0019\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/home/fragment/rank/RankListFragment$b;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lr6/i;",
        "<init>",
        "()V",
        "item",
        "",
        "pos",
        "",
        "M1",
        "(Lcom/transsion/moviedetailapi/bean/Subject;I)V",
        "N1",
        "position",
        "",
        "type",
        "K1",
        "(Lcom/transsion/moviedetailapi/bean/Subject;ILjava/lang/String;)V",
        "J1",
        "I1",
        "(I)I",
        "subject",
        "Lcom/transsnet/downloader/widget/DownloadView;",
        "downloadView",
        "L1",
        "(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;)V",
        "holder",
        "E1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final F:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/home/R$layout;->item_movie_rank_subject:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->G1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic C1(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->F1(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/moviedetailapi/bean/Subject;)V

    return-void
.end method

.method public static synthetic D1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->H1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V

    return-void
.end method

.method private static final F1(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final G1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->N1(Lcom/transsion/moviedetailapi/bean/Subject;I)V

    return-void
.end method

.method private static final H1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->M1(Lcom/transsion/moviedetailapi/bean/Subject;I)V

    return-void
.end method

.method private final I1(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget p1, Lcom/transsion/home/R$mipmap;->ic_rank_defalut:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/home/R$mipmap;->ic_rank_03:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/home/R$mipmap;->ic_rank_02:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/transsion/home/R$mipmap;->ic_rank_01:I

    :goto_0
    return p1
.end method

.method private final J1(Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1, v0}, Lil/b;->e(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    const-string p1, "event_type"

    const-string v1, "rank_item_browse"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "position"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string p2, "rank_all_page"

    invoke-virtual {p1, p2, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final K1(Lcom/transsion/moviedetailapi/bean/Subject;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1, v0}, Lil/b;->e(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    const-string p1, "position"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_type"

    const-string p2, "rank_item_click"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "click_type"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string p2, "rank_all_page"

    invoke-virtual {p1, p2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final L1(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    sget-object v0, Lak/t;->a:Lak/t;

    invoke-virtual {v0}, Lak/t;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    :goto_1
    invoke-virtual {p2}, Lcom/transsnet/downloader/widget/DownloadView;->setShowPlayType()V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    sget v7, Lcom/transsion/baseui/R$string;->download_movie:I

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v9}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Ljg/c;->h(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private final M1(Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rank_all"

    const-string v2, "rank_all_page"

    invoke-static {p1, v2, v0, v1}, Lrl/h;->g(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->K1(Lcom/transsion/moviedetailapi/bean/Subject;ILjava/lang/String;)V

    return-void
.end method

.method private final N1(Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 1

    const-string v0, "rank_all"

    invoke-static {p1, v0}, Lrl/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    const-string v0, "poster_click"

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->K1(Lcom/transsion/moviedetailapi/bean/Subject;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$id;->rank_item_image:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v3

    :cond_3
    invoke-virtual {v1, v2}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lak/k;->e(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    sget v1, Lcom/transsion/home/R$id;->rank_item_rank_tag:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->I1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_4
    sget v1, Lcom/transsion/home/R$id;->rank_item_corner:I

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    const/16 v1, 0x9

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget v2, Lcom/transsion/home/R$id;->rank_item_tag_rank:I

    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    :cond_6
    sget v1, Lcom/transsion/home/R$id;->rank_item_tag_rank:I

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_1
    sget v1, Lcom/transsion/home/R$id;->rank_item_title:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/home/R$id;->rank_item_des:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lil/a;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Lcom/transsion/home/fragment/rank/o;

    invoke-direct {v3, v2, v1, p2}, Lcom/transsion/home/fragment/rank/o;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/moviedetailapi/bean/Subject;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget v1, Lcom/transsion/home/R$id;->rank_item_download:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsnet/downloader/widget/DownloadView;

    invoke-direct {p0, p2, v1}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->L1(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;)V

    sget v1, Lcom/transsion/home/R$id;->rank_item_imdb:I

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/home/fragment/rank/p;

    invoke-direct {v2, p0, p2, v0}, Lcom/transsion/home/fragment/rank/p;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/home/R$id;->rank_item_download:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/transsion/home/fragment/rank/q;

    invoke-direct {v1, p0, p2, v0}, Lcom/transsion/home/fragment/rank/q;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p2, v0}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->J1(Lcom/transsion/moviedetailapi/bean/Subject;I)V

    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method
