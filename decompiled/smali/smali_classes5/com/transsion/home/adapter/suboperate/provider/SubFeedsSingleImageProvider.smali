.class public Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:I

.field private final f:Z

.field private final g:Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;

.field private final h:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->e:I

    iput-boolean p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->f:Z

    new-instance p1, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;

    invoke-direct {p1, p2}, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->g:Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;

    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/r;

    invoke-direct {p1}, Lcom/transsion/home/adapter/suboperate/provider/r;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic A(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;ILcom/transsion/moviedetailapi/bean/Subject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->H(ILcom/transsion/moviedetailapi/bean/Subject;Z)V

    return-void
.end method

.method private static final D(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Landroid/view/View;)V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p2

    if-eqz p2, :cond_3

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "opt_sub_feeds"

    invoke-static {p2, v0}, Lrl/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->H(ILcom/transsion/moviedetailapi/bean/Subject;Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    new-instance v6, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;

    invoke-direct {v6, p1, p0, p2, v2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_3
    return-void
.end method

.method private static final E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v1, p1, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->e:I

    invoke-virtual {v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "opt_sub_feeds"

    invoke-static {p2, v0, v1, v2}, Lrl/h;->g(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->H(ILcom/transsion/moviedetailapi/bean/Subject;Z)V

    return-void
.end method

.method private static final G()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;
    .locals 1

    new-instance v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    invoke-direct {v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;-><init>()V

    return-object v0
.end method

.method private final H(ILcom/transsion/moviedetailapi/bean/Subject;Z)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    const-string v1, "browse_feeds_single_item"

    goto :goto_0

    :cond_0
    const-string v1, "click_feeds_single_item"

    :goto_0
    const-string v2, "event_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_type"

    const-string v1, "rec"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    const-string v2, "ops"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    const-string p1, "subject_id"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "1"

    goto :goto_2

    :cond_3
    const-string p1, "0"

    :goto_2
    const-string v1, "builtin"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->e:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tabId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getExplains()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/ExplainBean;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ExplainBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x2c

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->r1(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    const-string v1, "rec_explain_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Lil/b;->e(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    if-eqz p3, :cond_5

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->e:I

    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    :cond_5
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->e:I

    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    :goto_4
    return-void
.end method

.method public static synthetic y()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;
    .locals 1

    invoke-static {}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->G()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic z(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->D(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->g:Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->E(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->H(ILcom/transsion/moviedetailapi/bean/Subject;Z)V

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/s;

    invoke-direct {v0, p2, p0}, Lcom/transsion/home/adapter/suboperate/provider/s;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->g:Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;

    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->H()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/t;

    invoke-direct {v0, p2, p0}, Lcom/transsion/home/adapter/suboperate/provider/t;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected final F()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    return-object v0
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->SINGLE_SUBJECT:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->g:Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;

    invoke-virtual {v0}, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->m()I

    move-result v0

    return v0
.end method
