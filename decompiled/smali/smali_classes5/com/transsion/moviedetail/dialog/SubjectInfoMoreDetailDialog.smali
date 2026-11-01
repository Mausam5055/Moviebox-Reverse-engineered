.class public final Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;
.super Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment<",
        "Lcn/p;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000b\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;",
        "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;",
        "Lcn/p;",
        "<init>",
        "()V",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "",
        "u0",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "mMovieDetailBean",
        "v0",
        "",
        "releaseDate",
        "q0",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "r0",
        "(Landroid/view/LayoutInflater;)Lcn/p;",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "initViewData",
        "initViewModel",
        "retryLoadData",
        "initListener",
        "",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "b",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "c",
        "Ljava/lang/String;",
        "mSubjectId",
        "d",
        "a",
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


# static fields
.field public static final d:Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog$a;


# instance fields
.field private b:Lcom/transsion/moviedetailapi/bean/Subject;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->d:Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->s0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->t0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V

    return-void
.end method

.method private final q0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private static final s0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V
    .locals 10

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const-string v2, "detail_info"

    const-string v3, "preview"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/transsion/baselib/helper/a;->j(Lcom/transsion/baselib/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v1, Lcom/transsion/ninegridview/ImageInfo;

    invoke-direct {v1}, Lcom/transsion/ninegridview/ImageInfo;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/ninegridview/ImageInfo;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput v2, v1, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float v3, p0

    :cond_1
    iput v3, v1, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/transsion/ninegridview/ImageInfo;

    aput-object v1, p0, v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->Companion:Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "getContext(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0, p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;->a(Landroid/content/Context;ILjava/util/List;)V

    :cond_2
    return-void
.end method

.method private static final t0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;->m0(Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method private final u0(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/p;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/p;->d:Lcom/transsion/moviedetail/view/InfoExtendView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/moviedetail/view/InfoExtendView;->showData(Lcom/transsion/moviedetailapi/bean/Subject;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lcn/p;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/p;->d:Lcom/transsion/moviedetail/view/InfoExtendView;

    if-eqz p1, :cond_4

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lcn/p;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/p;->d:Lcom/transsion/moviedetail/view/InfoExtendView;

    if-eqz p1, :cond_4

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final v0(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v2

    if-gt v0, v2, :cond_0

    if-gt v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getStaffList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "getChildFragmentManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p1

    const-string v0, "beginTransaction()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/moviedetail/fragment/StarringFragment;

    invoke-direct {v0}, Lcom/transsion/moviedetail/fragment/StarringFragment;-><init>()V

    sget v1, Lcom/transsion/moviedetail/R$id;->fl_starring:I

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    invoke-virtual {p1}, Landroidx/fragment/app/w;->j()I

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->r0(Landroid/view/LayoutInflater;)Lcn/p;

    move-result-object p1

    return-object p1
.end method

.method public initListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/p;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_0

    new-instance v1, Ldn/b;

    invoke-direct {v1, p0}, Ldn/b;-><init>(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/p;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/p;->j:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1

    new-instance v1, Ldn/c;

    invoke-direct {v1, p0}, Ldn/c;-><init>(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public initViewData()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "data_key_resource_detectors"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    instance-of v4, v2, Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/transsion/moviedetailapi/bean/Subject;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    iput-object v2, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    iput-object v2, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lhj/b;->k(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v2

    const-string v4, ""

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    move-object v5, v4

    :cond_5
    const-string v6, "subject_id"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v5, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_7
    move-object v5, v3

    :goto_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "subject_type"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v5, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_4

    :cond_9
    move-object v5, v3

    :goto_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "has_resource"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lcn/p;

    if-eqz v2, :cond_f

    iget-object v2, v2, Lcn/p;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v2, :cond_f

    sget-object v5, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "requireContext(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    :cond_b
    move-object v6, v4

    :cond_c
    invoke-virtual {v5, v6}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e

    :cond_d
    move-object v6, v4

    :cond_e
    invoke-virtual {v5, v6}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_f
    iget-object v2, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/moviedetailapi/g;->a(Ljava/lang/Integer;)I

    move-result v5

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v6

    check-cast v6, Lcn/p;

    if-eqz v6, :cond_10

    iget-object v6, v6, Lcn/p;->e:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_10

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v5

    check-cast v5, Lcn/p;

    if-eqz v5, :cond_11

    iget-object v5, v5, Lcn/p;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_11

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeNum()Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ","

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-le v5, v1, :cond_14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_12

    sget v3, Lcom/transsion/moviedetail/R$string;->movie_detail_seasons:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v0

    invoke-virtual {v7, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lcn/p;

    if-eqz v1, :cond_19

    iget-object v1, v1, Lcn/p;->p:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_19

    if-nez v3, :cond_13

    goto :goto_5

    :cond_13
    move-object v4, v3

    :goto_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_14
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_15

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    goto :goto_6

    :cond_15
    move v3, v0

    :goto_6
    const/16 v4, 0xa

    if-le v3, v4, :cond_16

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lcn/p;

    if-eqz v3, :cond_19

    iget-object v3, v3, Lcn/p;->p:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_19

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcom/transsion/moviedetail/R$string;->movie_detail_subtitles_count:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "10+"

    aput-object v7, v1, v0

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_16
    if-le v3, v1, :cond_17

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v4

    check-cast v4, Lcn/p;

    if-eqz v4, :cond_19

    iget-object v4, v4, Lcn/p;->p:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_19

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v5

    sget v7, Lcom/transsion/moviedetail/R$string;->movie_detail_subtitles_count:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-virtual {v5, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_17
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lcn/p;

    if-eqz v1, :cond_18

    iget-object v1, v1, Lcn/p;->p:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_18

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_18
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lcn/p;

    if-eqz v1, :cond_19

    iget-object v1, v1, Lcn/p;->s:Landroid/view/View;

    if-eqz v1, :cond_19

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_19
    :goto_7
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lcn/p;

    if-eqz v1, :cond_1a

    iget-object v1, v1, Lcn/p;->h:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_1a

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lcn/p;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lcn/p;->o:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_1b

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1b
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lcn/p;

    if-eqz v3, :cond_1c

    iget-object v3, v3, Lcn/p;->k:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v3, :cond_1c

    invoke-virtual {v3, v1}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1d

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lcn/p;

    if-eqz v1, :cond_1d

    iget-object v1, v1, Lcn/p;->r:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v0}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lcn/p;

    if-eqz v1, :cond_23

    iget-object v1, v1, Lcn/p;->q:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v1, :cond_23

    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1e
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lcn/p;

    if-eqz v3, :cond_1f

    iget-object v3, v3, Lcn/p;->n:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v3, :cond_1f

    invoke-virtual {v3, v1}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lcn/p;

    if-eqz v3, :cond_20

    iget-object v3, v3, Lcn/p;->q:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v3, :cond_20

    invoke-direct {p0, v1}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lcn/p;

    if-eqz v3, :cond_21

    iget-object v3, v3, Lcn/p;->k:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v3, :cond_21

    invoke-virtual {v3, v1}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    :cond_21
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_22

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lcn/p;

    if-eqz v1, :cond_22

    iget-object v1, v1, Lcn/p;->r:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v1, :cond_22

    invoke-virtual {v1, v0}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    :cond_22
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/p;

    if-eqz v0, :cond_23

    iget-object v0, v0, Lcn/p;->o:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_23

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    :goto_8
    iget-object v0, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->u0(Lcom/transsion/moviedetailapi/bean/Subject;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->v0(Lcom/transsion/moviedetailapi/bean/Subject;)V

    :cond_24
    return-void
.end method

.method public initViewModel()V
    .locals 0

    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "detail_info"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logPause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public r0(Landroid/view/LayoutInflater;)Lcn/p;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/p;->c(Landroid/view/LayoutInflater;)Lcn/p;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public retryLoadData()V
    .locals 0

    return-void
.end method
