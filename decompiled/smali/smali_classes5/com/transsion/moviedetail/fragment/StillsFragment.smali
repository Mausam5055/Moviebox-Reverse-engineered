.class public final Lcom/transsion/moviedetail/fragment/StillsFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/fragment/StillsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lcn/o;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/moviedetail/fragment/StillsFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lcn/o;",
        "<init>",
        "()V",
        "Lcom/transsion/moviedetailapi/bean/Cover;",
        "cover",
        "",
        "d0",
        "(Lcom/transsion/moviedetailapi/bean/Cover;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "c0",
        "(Landroid/view/LayoutInflater;)Lcn/o;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
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


# static fields
.field public static final a:Lcom/transsion/moviedetail/fragment/StillsFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/moviedetail/fragment/StillsFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/moviedetail/fragment/StillsFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/moviedetail/fragment/StillsFragment;->a:Lcom/transsion/moviedetail/fragment/StillsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic a0(Lcn/o;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/StillsFragment;->e0(Lcn/o;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/StillsFragment;->f0(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;Landroid/view/View;)V

    return-void
.end method

.method private final d0(Lcom/transsion/moviedetailapi/bean/Cover;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/o;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/core/utils/e;->f()I

    move-result v3

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    if-nez v2, :cond_0

    move-object v2, v8

    :cond_0
    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lej/f$a;->e(Lej/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v10, v8

    goto :goto_0

    :cond_1
    move-object v10, v2

    :goto_0
    sget-object v9, Lcom/transsion/base/image/blurhash/e;->a:Lcom/transsion/base/image/blurhash/e;

    new-instance v13, Lcom/transsion/moviedetail/fragment/n1;

    invoke-direct {v13, v0}, Lcom/transsion/moviedetail/fragment/n1;-><init>(Lcn/o;)V

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v15}, Lcom/transsion/base/image/blurhash/e;->d(Lcom/transsion/base/image/blurhash/e;Ljava/lang/String;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, v0, Lcn/o;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v0, v0, Lcn/o;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v1, Lcom/transsion/moviedetail/fragment/o1;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v2}, Lcom/transsion/moviedetail/fragment/o1;-><init>(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    :goto_1
    return-void
.end method

.method private static final e0(Lcn/o;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcn/o;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final f0(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;Landroid/view/View;)V
    .locals 3

    const/4 p2, 0x0

    new-instance v0, Lcom/transsion/ninegridview/ImageInfo;

    invoke-direct {v0}, Lcom/transsion/ninegridview/ImageInfo;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/ninegridview/ImageInfo;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float v2, p0

    :cond_1
    iput v2, v0, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/transsion/ninegridview/ImageInfo;

    aput-object v0, p0, p2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->Companion:Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "requireContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;->a(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public c0(Landroid/view/LayoutInflater;)Lcn/o;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/o;->c(Landroid/view/LayoutInflater;)Lcn/o;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/fragment/StillsFragment;->c0(Landroid/view/LayoutInflater;)Lcn/o;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public lazyLoadData()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "cover"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Cover;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/fragment/StillsFragment;->d0(Lcom/transsion/moviedetailapi/bean/Cover;)V

    :cond_1
    return-void
.end method
