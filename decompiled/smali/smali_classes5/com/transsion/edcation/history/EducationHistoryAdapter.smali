.class public final Lcom/transsion/edcation/history/EducationHistoryAdapter;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0015\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/edcation/history/EducationHistoryAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lr6/i;",
        "",
        "data",
        "<init>",
        "(Ljava/util/List;)V",
        "item",
        "Landroid/widget/TextView;",
        "textView",
        "",
        "E1",
        "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;)V",
        "videoDetailPlayBean",
        "Landroid/content/Context;",
        "context",
        "",
        "I1",
        "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/content/Context;)Ljava/lang/String;",
        "holder",
        "F1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V",
        "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;",
        "F",
        "Lkotlin/Lazy;",
        "H1",
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
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/edcation/R$layout;->item_education_history:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    new-instance p1, Lcom/transsion/edcation/history/a;

    invoke-direct {p1}, Lcom/transsion/edcation/history/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter;->F:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->G1(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->J1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic D1(Lcom/transsion/edcation/history/EducationHistoryAdapter;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->H1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method private final E1(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;-><init>(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final G1(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->I1(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method

.method private final H1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter;->F:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0
.end method

.method private final I1(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    sget-object v0, Lak/t;->a:Lak/t;

    invoke-virtual {v0}, Lak/t;->b()Z

    move-result v0

    const-string v1, "play_subject"

    const-string v2, "Education History"

    const/4 v3, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, p2, Landroidx/fragment/app/FragmentActivity;

    if-eqz v4, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1, v2}, Lcom/transsnet/downloader/DownloadManagerApi;->t0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    :cond_3
    const-string v0, "/movie/detail"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    sget-object v4, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v4

    const-string v5, "subject_type"

    invoke-virtual {v0, v5, v4}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v3

    :goto_2
    const-string v4, "id"

    invoke-virtual {v0, v4, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "module_name"

    invoke-virtual {p1, v0, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, p2, v3, v0, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-object v1
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
.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->F1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    return-void
.end method

.method protected F1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/edcation/R$id;->education_history_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v1, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v0, Lcom/transsion/edcation/R$id;->education_history_title:I

    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/edcation/history/b;

    invoke-direct {v1, p0, p2}, Lcom/transsion/edcation/history/b;-><init>(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/edcation/R$id;->education_history_tag:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p2, p1}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->E1(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method
