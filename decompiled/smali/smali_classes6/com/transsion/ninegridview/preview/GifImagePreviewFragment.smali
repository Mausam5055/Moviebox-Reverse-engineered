.class public final Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lon/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lon/c;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "d0",
        "(Landroid/view/LayoutInflater;)Lon/c;",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "Lcom/transsion/moviedetailapi/bean/Image;",
        "a",
        "Lcom/transsion/moviedetailapi/bean/Image;",
        "image",
        "",
        "b",
        "I",
        "index",
        "",
        "c",
        "Ljava/lang/Boolean;",
        "isBuiltIn",
        "d",
        "NineGridView_psRelease"
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
.field public static final d:Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;


# instance fields
.field private a:Lcom/transsion/moviedetailapi/bean/Image;

.field private b:I

.field private c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->d:Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->f0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->e0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic c0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;)Lcom/transsion/moviedetailapi/bean/Image;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    return-object p0
.end method

.method private static final e0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.transsion.ninegridview.preview.GifImagePreviewActivity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    :cond_0
    return-void
.end method

.method private static final f0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.transsion.ninegridview.preview.GifImagePreviewActivity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-virtual {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->finishActivityAnim()V

    :cond_0
    return-void
.end method


# virtual methods
.method public d0(Landroid/view/LayoutInflater;)Lon/c;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lon/c;->c(Landroid/view/LayoutInflater;)Lon/c;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->d0(Landroid/view/LayoutInflater;)Lon/c;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lon/c;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lon/c;->b:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/transsion/ninegridview/preview/d;

    invoke-direct {p2, p0}, Lcom/transsion/ninegridview/preview/d;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Image;->getWidth()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Image;->getHeight()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_2
    int-to-float p2, p2

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p2

    goto :goto_2

    :goto_3
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, p1

    mul-float/2addr p2, v0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lon/c;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lon/c;->e:Lcom/transsion/photoview/PhotoView;

    if-eqz p1, :cond_3

    new-instance v1, Lcom/transsion/ninegridview/preview/e;

    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/e;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;)V

    invoke-virtual {p1, v1}, Lcom/transsion/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lon/c;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lon/c;->e:Lcom/transsion/photoview/PhotoView;

    if-eqz p1, :cond_4

    new-instance v1, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$b;

    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$b;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;)V

    invoke-virtual {p1, v1}, Lcom/transsion/photoview/PhotoView;->setSlideUpAndDownListener(Lcom/transsion/photoview/i;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lon/c;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lon/c;->e:Lcom/transsion/photoview/PhotoView;

    if-nez p1, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getFirstFrameUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, v2

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object v3, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->c:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object p2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object p2

    :cond_8
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$initView$5;

    invoke-direct {v6, p0, p1, v2}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$initView$5;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Lcom/transsion/photoview/PhotoView;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_a
    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    if-nez v1, :cond_b

    const-string v1, ""

    :cond_b
    invoke-virtual {v2, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v2, Lcom/transsion/ninegridview/R$drawable;->ic_default_color:I

    invoke-virtual {v1, v2}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v0

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lej/f$b;->j(I)Lej/f$b;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lej/f$b;->f(Z)Lej/f$b;

    move-result-object p2

    invoke-virtual {p2, v1}, Lej/f$b;->e(Z)Lej/f$b;

    move-result-object p2

    invoke-virtual {p2, v0}, Lej/f$b;->k(Z)Lej/f$b;

    move-result-object p2

    invoke-virtual {p2, v0}, Lej/f$b;->h(Z)Lej/f$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "image_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    const-string v0, "CURRENT_ITEM"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->b:I

    const-string v0, "IS_BUILTIN"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->c:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method
