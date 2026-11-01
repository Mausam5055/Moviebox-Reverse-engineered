.class public final Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field private final e:I

.field private f:Lkotlinx/coroutines/t1;

.field private g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field private h:Lcom/transsion/edcation/bean/CourseBean;

.field private final i:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/e0;

    invoke-direct {p1}, Lcom/transsion/home/adapter/suboperate/provider/e0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->i:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->V(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V

    return-void
.end method

.method public static synthetic B(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->M(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->N(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->Q(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)V

    return-void
.end method

.method public static final synthetic E(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)Lcom/transsion/edcation/bean/CourseBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    return-object p0
.end method

.method public static final synthetic F(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-object p0
.end method

.method public static final synthetic G(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->O()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic H(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/edcation/bean/CourseBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    return-void
.end method

.method public static final synthetic I(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->U(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;F)V

    return-void
.end method

.method public static final synthetic J(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->W()V

    return-void
.end method

.method private static final L(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 2

    const-string p1, "/edu/courseList"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private static final M(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 2

    const-string p3, "/home/filter"

    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    iget v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    const-string v1, "tabId"

    invoke-virtual {p3, v1, v0}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p3, p1, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    const-string p1, "click_my_course_explore"

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->T(Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method private static final N(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 68

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    new-instance v1, Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v3, v0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    iget-object v3, v0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectType()Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    move-object v5, v2

    const v66, 0x7ffffff

    const/16 v67, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, -0x4

    move-object v3, v1

    invoke-direct/range {v3 .. v67}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;Lcom/transsion/baselib/db/download/VipInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "operation_course"

    invoke-static {v1, v2}, Lrl/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    :cond_3
    const-string v1, "click_my_course_learn"

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->T(Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method private final O()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0
.end method

.method private static final P()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->D1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method private static final Q(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->W()V

    return-void
.end method

.method private final R()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$registerCourse$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$registerCourse$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->f:Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final S(Lcom/transsion/home/bean/OperateItem;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "browse_my_course"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "title"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tabId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    invoke-virtual {v1, v2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/transsion/baselib/helper/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final T(Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "title"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "tabId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    const-string p2, "subjectId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->e:I

    invoke-virtual {p2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final U(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;F)V
    .locals 4

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.0f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/home/R$id;->sub_operation_course_item_percent_text:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lcom/transsion/home/R$id;->sub_operation_course_item_percent_bg:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/i0;

    invoke-direct {v1, p1, v0, p2}, Lcom/transsion/home/adapter/suboperate/provider/i0;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private static final V(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V
    .locals 1

    sget v0, Lcom/transsion/home/R$id;->sub_operation_course_item_percent_view:I

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    const/16 p2, 0x64

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final W()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/home/R$id;->sub_operation_course_start_liner:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/home/R$id;->sub_operation_course_item_liner:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->h(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/home/R$id;->sub_operation_course_start_liner:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljg/c;->h(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    if-eqz v0, :cond_4

    sget v1, Lcom/transsion/home/R$id;->sub_operation_course_item_liner:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const-string v1, ""

    if-eqz v0, :cond_9

    sget v2, Lcom/transsion/home/R$id;->sub_operation_course_item_image:I

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/edcation/bean/CourseBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    :cond_5
    move-object v3, v1

    :cond_6
    invoke-virtual {v2, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/edcation/bean/CourseBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_7
    move-object v3, v1

    :cond_8
    invoke-virtual {v2, v3}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->h:Lcom/transsion/edcation/bean/CourseBean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/edcation/bean/CourseBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move-object v1, v0

    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    if-eqz v0, :cond_c

    sget v2, Lcom/transsion/home/R$id;->sub_operation_course_item_title_text:I

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static synthetic y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->L(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->P()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public K(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$id;->sub_operation_course_title:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/f0;

    invoke-direct {v1, p1}, Lcom/transsion/home/adapter/suboperate/provider/f0;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/home/R$id;->sub_operation_course_explore:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/g0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/g0;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/home/R$id;->sub_operation_course_learn:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/h0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/home/adapter/suboperate/provider/h0;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/transsion/home/bean/OperateItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->S(Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->K(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->MY_COURSE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_my_course:I

    return v0
.end method

.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/d0;

    invoke-direct {v0, p0}, Lcom/transsion/home/adapter/suboperate/provider/d0;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->f:Lkotlinx/coroutines/t1;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->R()V

    :cond_0
    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->f:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->f:Lkotlinx/coroutines/t1;

    return-void
.end method
