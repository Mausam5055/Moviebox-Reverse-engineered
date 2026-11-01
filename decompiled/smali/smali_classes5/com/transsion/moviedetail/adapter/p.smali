.class public final Lcom/transsion/moviedetail/adapter/p;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR$\u0010#\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0018\u0010\'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/moviedetail/adapter/p;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/DownloadItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "movieDetailBean",
        "",
        "list",
        "<init>",
        "(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/List;)V",
        "",
        "E1",
        "()V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "onAttachedToRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "holder",
        "item",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/DownloadItem;)V",
        "Lcom/transsion/baselib/db/download/VipInfo;",
        "vipInfo",
        "H1",
        "(Lcom/transsion/baselib/db/download/VipInfo;)V",
        "",
        "F",
        "Ljava/lang/String;",
        "resourceId",
        "G",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "D1",
        "()Lcom/transsion/moviedetailapi/bean/Subject;",
        "G1",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "mMovieDetailBean",
        "Lcom/transsnet/downloader/widget/DownloadView;",
        "H",
        "Lcom/transsnet/downloader/widget/DownloadView;",
        "downloadView",
        "I",
        "Lcom/transsion/baselib/db/download/VipInfo;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private F:Ljava/lang/String;

.field private G:Lcom/transsion/moviedetailapi/bean/Subject;

.field private H:Lcom/transsnet/downloader/widget/DownloadView;

.field private I:Lcom/transsion/baselib/db/download/VipInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/transsion/moviedetail/R$layout;->adapter_resource_detector_alone_layout:I

    invoke-direct {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/moviedetail/adapter/p;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/moviedetail/adapter/p;->F1(Lcom/transsion/moviedetail/adapter/p;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final E1()V
    .locals 9

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v8, Lcom/transsion/moviedetail/adapter/o;

    invoke-direct {v8, p0}, Lcom/transsion/moviedetail/adapter/o;-><init>(Lcom/transsion/moviedetail/adapter/p;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "getName(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final F1(Lcom/transsion/moviedetail/adapter/p;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p0, Llg/a;->a:Llg/a$a;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const-string v2, " callback change data fail"

    invoke-static {p0, v2, v0, p1, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_2
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/DownloadItem;)V
    .locals 12

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/moviedetail/R$id;->tvTitle:I

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/DownloadItem;->getResolution()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "P "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v1

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/DownloadItem;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v1

    :goto_2
    const/4 v0, 0x1

    invoke-static {v4, v5, v0}, Loh/b;->a(JI)Ljava/lang/String;

    move-result-object v4

    cmp-long v1, v6, v1

    if-lez v1, :cond_3

    const-wide/16 v1, 0x3e8

    mul-long/2addr v6, v1

    invoke-static {v6, v7}, Lcom/transsion/baseui/util/TimeUtilKt;->n(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    sget v1, Lcom/transsion/moviedetail/R$id;->tvSize:I

    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/moviedetail/R$id;->innerIvDownload:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsnet/downloader/widget/DownloadView;

    iput-object v1, p0, Lcom/transsion/moviedetail/adapter/p;->H:Lcom/transsnet/downloader/widget/DownloadView;

    if-eqz v1, :cond_4

    const-string v2, "subjectdetail"

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/widget/DownloadView;->setPageFrom(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/transsion/moviedetail/adapter/p;->F:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/moviedetail/adapter/p;->H:Lcom/transsnet/downloader/widget/DownloadView;

    if-eqz v4, :cond_6

    iget-object p2, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->isSeries()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_5
    move-object v7, v3

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    :cond_6
    iget-object p2, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    const/16 v1, 0x8

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->isMusicType()Z

    move-result p2

    if-ne p2, v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->isEduType()Z

    move-result p2

    if-ne p2, v0, :cond_8

    :goto_3
    sget p2, Lcom/transsion/moviedetail/R$id;->vipIcon:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_8
    iget-object p2, p0, Lcom/transsion/moviedetail/adapter/p;->I:Lcom/transsion/baselib/db/download/VipInfo;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/VipInfo;->getRequireMemberType()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_a

    sget p2, Lcom/transsion/moviedetail/R$id;->vipIcon:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_a
    :goto_4
    sget p2, Lcom/transsion/moviedetail/R$id;->vipIcon:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public final D1()Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    return-object v0
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/adapter/p;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/DownloadItem;)V

    return-void
.end method

.method public final G1(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method

.method public final H1(Lcom/transsion/baselib/db/download/VipInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/p;->I:Lcom/transsion/baselib/db/download/VipInfo;

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p0}, Lcom/transsion/moviedetail/adapter/p;->E1()V

    return-void
.end method
