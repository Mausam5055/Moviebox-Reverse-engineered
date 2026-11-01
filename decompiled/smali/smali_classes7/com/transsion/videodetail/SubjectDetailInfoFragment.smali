.class public final Lcom/transsion/videodetail/SubjectDetailInfoFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Ljx/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J!\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001bR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Lcom/transsion/videodetail/SubjectDetailInfoFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Ljx/g;",
        "<init>",
        "()V",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "movieDetailBean",
        "",
        "k0",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "",
        "seconds",
        "",
        "d0",
        "(I)Ljava/lang/String;",
        "subtitles",
        "i0",
        "(Ljava/lang/String;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "f0",
        "(Landroid/view/LayoutInflater;)Ljx/g;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "initData",
        "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
        "a",
        "Lkotlin/Lazy;",
        "e0",
        "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
        "movieDetailViewModel",
        "b",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "mMovieDetailBean",
        "c",
        "Ljava/lang/String;",
        "ops",
        "d",
        "mSubjectId",
        "VideoDetail_psRelease"
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
.field private final a:Lkotlin/Lazy;

.field private b:Lcom/transsion/moviedetailapi/bean/Subject;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    const-class v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsion/videodetail/SubjectDetailInfoFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsion/videodetail/SubjectDetailInfoFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->j0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->g0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->h0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V

    return-void
.end method

.method private final d0(I)Ljava/lang/String;
    .locals 4

    div-int/lit16 v0, p1, 0xe10

    rem-int/lit16 p1, p1, 0xe10

    div-int/lit8 p1, p1, 0x3c

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%02dh%02dm"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final e0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    return-object v0
.end method

.method private static final g0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 4

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get movie detail data=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "videoDetail"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->k0(Lcom/transsion/moviedetailapi/bean/Subject;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Lhj/b;->k(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const-string v2, "subject_id"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "has_resource"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V
    .locals 13

    new-instance p1, Lan/j;

    iget-object v0, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-direct {p1, v0}, Lan/j;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lan/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    sget-object v4, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    iget-object v8, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->d:Ljava/lang/String;

    iget-object v10, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->c:Ljava/lang/String;

    const/16 v11, 0x10

    const/4 v12, 0x0

    const-string v5, "subjectdetail"

    const-string v6, "movie_poster"

    const-string v7, ""

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lcom/transsion/baselib/helper/a;->j(Lcom/transsion/baselib/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/transsion/moviedetail/activity/MoviePosterActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final i0(Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->e0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->v(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_1

    iget-object p1, p1, Ljx/g;->g:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_2

    iget-object p1, p1, Ljx/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_6

    iget-object p1, p1, Ljx/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string p1, "getPaint(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/core/utils/e;->f()I

    move-result p1

    const/high16 v0, 0x43020000    # 130.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v0

    sub-int v4, p1, v0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-le p1, v0, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v2, v0, p1, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/text/StaticLayout;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_4

    iget-object p1, p1, Ljx/g;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_4

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_6

    iget-object p1, p1, Ljx/g;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/transsion/videodetail/l0;

    invoke-direct {v0, p0}, Lcom/transsion/videodetail/l0;-><init>(Lcom/transsion/videodetail/SubjectDetailInfoFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_6

    iget-object p1, p1, Ljx/g;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_6

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_8

    iget-object p1, p1, Ljx/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_8

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_9

    iget-object p1, p1, Ljx/g;->g:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_9

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_a

    iget-object p1, p1, Ljx/g;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_a

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method private static final j0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_0

    iget-object p1, p1, Ljx/g;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Ljx/g;

    if-eqz p0, :cond_1

    iget-object p0, p0, Ljx/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_1

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    return-void
.end method

.method private final k0(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 7

    iput-object p1, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/Subject;->setOps(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/moviedetailapi/g;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Ljx/g;

    if-eqz v2, :cond_3

    iget-object v2, v2, Ljx/g;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Ljx/g;

    if-eqz v1, :cond_4

    iget-object v1, v1, Ljx/g;->k:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-direct {p0, v0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->i0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->isMusicType()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, " / "

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/g;

    if-eqz v0, :cond_6

    iget-object v0, v0, Ljx/g;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_6

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/g;

    if-eqz v0, :cond_7

    iget-object v0, v0, Ljx/g;->f:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_7

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/g;

    if-eqz v0, :cond_8

    iget-object v0, v0, Ljx/g;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_8

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/g;

    if-eqz v0, :cond_9

    iget-object v0, v0, Ljx/g;->g:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/g;

    if-eqz v0, :cond_a

    iget-object v0, v0, Ljx/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_a

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_a
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-le v4, v1, :cond_c

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_c
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_d
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_e

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_e
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDuration()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_10

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_f

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_f
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_10
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_11
    move v1, v2

    :goto_2
    if-lez v1, :cond_13

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_12
    invoke-direct {p0, v2}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->d0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_13
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_2a

    iget-object p1, p1, Ljx/g;->j:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_2a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_14
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/g;

    if-eqz v0, :cond_19

    iget-object v0, v0, Ljx/g;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_19

    sget-object v4, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "requireContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_16

    :cond_15
    move-object v5, v6

    :cond_16
    invoke-virtual {v4, v5}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_17

    goto :goto_4

    :cond_17
    move-object v6, v5

    :cond_18
    :goto_4
    invoke-virtual {v4, v6}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_19
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1b

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1a

    move v6, v5

    goto :goto_5

    :cond_1a
    move v6, v2

    :goto_5
    if-eqz v6, :cond_1b

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1b
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1c

    move v6, v5

    goto :goto_6

    :cond_1c
    move v6, v2

    :goto_6
    if-eqz v6, :cond_1d

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1d
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDuration()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1e

    move v6, v5

    goto :goto_7

    :cond_1e
    move v6, v2

    :goto_7
    if-eqz v6, :cond_21

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1f

    move v2, v5

    :cond_1f
    if-eqz v2, :cond_20

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_20
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_21
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_8

    :cond_22
    move v4, v2

    :goto_8
    if-lez v4, :cond_24

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_23
    invoke-direct {p0, v2}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->d0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_24
    :goto_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Ljx/g;

    if-eqz v2, :cond_25

    iget-object v2, v2, Ljx/g;->o:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_25

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_26
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-le v2, v1, :cond_27

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_27
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_28
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Ljx/g;

    if-eqz v1, :cond_29

    iget-object v1, v1, Ljx/g;->j:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_29

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_29
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/g;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Ljx/g;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    :goto_a
    return-void
.end method


# virtual methods
.method public f0(Landroid/view/LayoutInflater;)Ljx/g;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljx/g;->c(Landroid/view/LayoutInflater;)Ljx/g;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->f0(Landroid/view/LayoutInflater;)Ljx/g;

    move-result-object p1

    return-object p1
.end method

.method public initData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->initData(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "ops"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "id"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->e0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->F()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/transsion/videodetail/k0;

    invoke-direct {p2, p0}, Lcom/transsion/videodetail/k0;-><init>(Lcom/transsion/videodetail/SubjectDetailInfoFragment;)V

    new-instance v0, Lcom/transsion/videodetail/SubjectDetailInfoFragment$a;

    invoke-direct {v0, p2}, Lcom/transsion/videodetail/SubjectDetailInfoFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Ljx/g;

    if-eqz p1, :cond_0

    iget-object p1, p1, Ljx/g;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/transsion/videodetail/j0;

    invoke-direct {p2, p0}, Lcom/transsion/videodetail/j0;-><init>(Lcom/transsion/videodetail/SubjectDetailInfoFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method
