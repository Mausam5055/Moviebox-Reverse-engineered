.class public final Lcom/transsion/edcation/list/CourseListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;

# interfaces
.implements Lr6/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lr6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0011\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ#\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/transsion/edcation/list/CourseListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/edcation/bean/CourseBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lr6/i;",
        "",
        "layoutResId",
        "<init>",
        "(I)V",
        "holder",
        "item",
        "",
        "E1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/edcation/bean/CourseBean;)V",
        "",
        "playModule",
        "H1",
        "(Lcom/transsion/edcation/bean/CourseBean;Ljava/lang/String;)V",
        "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;",
        "F",
        "Lkotlin/Lazy;",
        "G1",
        "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;",
        "mVideoDetailPlayDao",
        "Education_psRelease"
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
.field private final F:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/edcation/list/CourseListAdapter;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/transsion/edcation/list/a;

    invoke-direct {p1}, Lcom/transsion/edcation/list/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/edcation/list/CourseListAdapter;->F:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget p1, Lcom/transsion/edcation/R$layout;->item_my_course_list:I

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/edcation/list/CourseListAdapter;-><init>(I)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/edcation/list/CourseListAdapter;->F1(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/edcation/list/CourseListAdapter;->J1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic D1(Lcom/transsion/edcation/list/CourseListAdapter;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/edcation/list/CourseListAdapter;->G1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method private static final F1(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p2}, Lcom/transsion/edcation/list/CourseListAdapter;->I1(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final G1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/edcation/list/CourseListAdapter;->F:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0
.end method

.method public static synthetic I1(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/CourseListAdapter;->H1(Lcom/transsion/edcation/bean/CourseBean;Ljava/lang/String;)V

    return-void
.end method

.method private static final J1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
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


# virtual methods
.method protected E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/edcation/bean/CourseBean;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/edcation/R$id;->item_title:I

    invoke-virtual {p2}, Lcom/transsion/edcation/bean/CourseBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/edcation/R$id;->item_image:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/transsion/edcation/bean/CourseBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v0, v1, v2}, Lyp/a;->b(Landroid/widget/ImageView;Ljava/lang/String;F)V

    :cond_2
    sget v0, Lcom/transsion/edcation/R$id;->item_jump:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljg/c;->j(Landroid/view/View;Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/edcation/list/b;

    invoke-direct {v1, p0, p2}, Lcom/transsion/edcation/list/b;-><init>(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;-><init>(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/edcation/bean/CourseBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/CourseListAdapter;->E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/edcation/bean/CourseBean;)V

    return-void
.end method

.method public final H1(Lcom/transsion/edcation/bean/CourseBean;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "/movie/detail"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    :goto_0
    const-string v2, "subject_type"

    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "module_name"

    invoke-virtual {p1, v0, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string p2, "autoPlay"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method
