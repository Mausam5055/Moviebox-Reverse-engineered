.class public final Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;
.super Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment<",
        "Lfu/d;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J!\u0010\u0011\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;",
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;",
        "Lfu/d;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "h0",
        "(Landroid/view/LayoutInflater;)Lfu/d;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "initView",
        "onDestroy",
        "",
        "g",
        "Z",
        "isSelect",
        "",
        "h",
        "Ljava/lang/String;",
        "searchName",
        "i",
        "isVideoStartCheck",
        "j",
        "a",
        "VideoSubtitle_psRelease"
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
.field public static final j:Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$a;


# instance fields
.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->j:Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->i:Z

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->j0(Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->i0(Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final i0(Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfu/d;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfu/d;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->g:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->g:Z

    return-void
.end method

.method private static final j0(Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfu/d;->b:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b0()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->n()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/d;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lfu/d;->b:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b0()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->h()Landroidx/lifecycle/b0;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, "DOWNLOAD_SUBTITLE"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    sget-object p0, Luh/b;->a:Luh/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsion/subtitle/R$string;->subtitle_search_empty_tips:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->h0(Landroid/view/LayoutInflater;)Lfu/d;

    move-result-object p1

    return-object p1
.end method

.method public h0(Landroid/view/LayoutInflater;)Lfu/d;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfu/d;->c(Landroid/view/LayoutInflater;)Lfu/d;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "EXTRA_NAME"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->h:Ljava/lang/String;

    const-string p2, "KEY_VIDEO_START_CHECK"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->i:Z

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfu/d;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lfu/d;->b:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfu/d;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lfu/d;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->i:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfu/d;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lfu/d;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/transsion/subtitle/fragment/b;

    invoke-direct {p2, p0}, Lcom/transsion/subtitle/fragment/b;-><init>(Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfu/d;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lfu/d;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/transsion/subtitle/fragment/c;

    invoke-direct {p2, p0}, Lcom/transsion/subtitle/fragment/c;-><init>(Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfu/d;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lfu/d;->b:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$b;

    invoke-direct {p2, p0}, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$b;-><init>(Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_6
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "no_subtitle_tip_again"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "dialog_no_subtitle"

    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->e0(Ljava/lang/String;)V

    return-void
.end method
