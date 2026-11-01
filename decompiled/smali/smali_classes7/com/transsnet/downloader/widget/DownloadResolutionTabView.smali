.class public final Lcom/transsnet/downloader/widget/DownloadResolutionTabView;
.super Lcom/noober/background/view/BLConstraintLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\'\u0010\u0017\u001a\u00020\u000c2\u000e\u0010\u0015\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00142\u0006\u0010\u0016\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001e\u0010\u0012J\u0015\u0010 \u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\t\u00a2\u0006\u0004\u0008 \u0010\u0012J#\u0010%\u001a\u00020\u000c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0!2\u0006\u0010$\u001a\u00020\t\u00a2\u0006\u0004\u0008%\u0010&J#\u0010)\u001a\u00020\u000c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\'0!2\u0006\u0010(\u001a\u00020\t\u00a2\u0006\u0004\u0008)\u0010&J\'\u0010,\u001a\u00020\u000c2\u0018\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u000c0*\u00a2\u0006\u0004\u0008,\u0010-J\'\u0010.\u001a\u00020\u000c2\u0018\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u000c0*\u00a2\u0006\u0004\u0008.\u0010-J\u001b\u00100\u001a\u00020\u000c2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u000c0/\u00a2\u0006\u0004\u00080\u00101J\u001b\u00102\u001a\u00020\u000c2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u000c0/\u00a2\u0006\u0004\u00082\u00101J\u0017\u00105\u001a\u00020\u000c2\u0008\u00104\u001a\u0004\u0018\u000103\u00a2\u0006\u0004\u00085\u00106R\u0014\u00109\u001a\u0002038\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0014\u0010@\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR*\u0010G\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u000c\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR*\u0010I\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u000c\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010FR\u001e\u0010L\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u001e\u0010N\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010KR\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010?R\u0016\u0010R\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010?R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0016\u0010\u0010\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010?R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010V\u00a8\u0006W"
    }
    d2 = {
        "Lcom/transsnet/downloader/widget/DownloadResolutionTabView;",
        "Lcom/noober/background/view/BLConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "res",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "n",
        "()V",
        "p",
        "curSeason",
        "t",
        "(I)V",
        "l",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "adapter",
        "position",
        "o",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "setSubject",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "seasons",
        "setSeasons",
        "season",
        "setSeason",
        "",
        "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
        "data",
        "resolutionPosition",
        "setResolutionContentData",
        "(Ljava/util/List;I)V",
        "Lcom/transsion/moviedetailapi/bean/DubsInfo;",
        "audioPosition",
        "setAudioContentData",
        "Lkotlin/Function2;",
        "listener",
        "setResolutionItemClickListener",
        "(Lkotlin/jvm/functions/Function2;)V",
        "setAudioItemClickListener",
        "Lkotlin/Function0;",
        "setSeasonClickListener",
        "(Lkotlin/jvm/functions/Function0;)V",
        "setAudioClickListener",
        "",
        "name",
        "updateAudioTrack",
        "(Ljava/lang/String;)V",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "Lpy/y0;",
        "b",
        "Lpy/y0;",
        "viewBinding",
        "c",
        "I",
        "dp16",
        "Lcom/transsnet/downloader/adapter/r;",
        "d",
        "Lcom/transsnet/downloader/adapter/r;",
        "resolutionTabAdapter",
        "e",
        "Lkotlin/jvm/functions/Function2;",
        "resolutionItemClickListener",
        "f",
        "audioItemClickListener",
        "g",
        "Lkotlin/jvm/functions/Function0;",
        "audioClickListener",
        "h",
        "seasonClickListener",
        "i",
        "curResPosition",
        "j",
        "curAudioPosition",
        "k",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "m",
        "Ljava/lang/Integer;",
        "Downloader_psRelease"
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
.field private final a:Ljava/lang/String;

.field private final b:Lpy/y0;

.field private final c:I

.field private d:Lcom/transsnet/downloader/adapter/r;

.field private e:Lkotlin/jvm/functions/Function2;

.field private f:Lkotlin/jvm/functions/Function2;

.field private g:Lkotlin/jvm/functions/Function0;

.field private h:Lkotlin/jvm/functions/Function0;

.field private i:I

.field private j:I

.field private k:Lcom/transsion/moviedetailapi/bean/Subject;

.field private l:I

.field private m:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/noober/background/view/BLConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "DownloadResolutionTabView"

    iput-object p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->a:Ljava/lang/String;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->c:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->j:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->l:I

    sget p2, Lcom/transsnet/downloader/R$layout;->layout_download_re_resolution_tab:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lpy/y0;->a(Landroid/view/View;)Lpy/y0;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->n()V

    return-void
.end method

.method public static final synthetic access$refreshResolutionRes(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->o(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V

    return-void
.end method

.method public static synthetic h(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->q(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->r(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->m(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic k(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->s(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V

    return-void
.end method

.method private final l()V
    .locals 4

    new-instance v0, Lcom/transsnet/downloader/adapter/r;

    invoke-direct {v0}, Lcom/transsnet/downloader/adapter/r;-><init>()V

    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->k:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/adapter/r;->E1(Lcom/transsion/moviedetailapi/bean/Subject;)V

    new-instance v1, Lcom/transsnet/downloader/widget/v;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/widget/v;-><init>(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    iput-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->d:Lcom/transsnet/downloader/adapter/r;

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v0, v0, Lpy/y0;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lig/a;

    const/16 v2, 0x8

    invoke-static {v2}, Ldk/a;->b(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Lig/a;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_0
    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->d:Lcom/transsnet/downloader/adapter/r;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final m(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    if-ne p3, p2, :cond_0

    return-void

    :cond_0
    sget-object p2, Lnh/m;->a:Lnh/m;

    invoke-virtual {p2}, Lnh/m;->e()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_tips:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_1
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;->getResolution()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lcom/transsnet/downloader/widget/DownloadResolutionTabView$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView$a;-><init>(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V

    invoke-interface {v0, p2, v1}, Lcom/transsion/memberapi/IMemberApi;->o(Ljava/lang/Integer;Lzm/a;)V

    :cond_3
    return-void
.end method

.method private final n()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    :cond_1
    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->c:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->c:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->l()V

    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->p()V

    return-void
.end method

.method private final o(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;->setSelected(Z)V

    :cond_1
    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;->setSelected(Z)V

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->e:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private final p()V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v0, v0, Lpy/y0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/transsnet/downloader/widget/s;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/widget/s;-><init>(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v0, v0, Lpy/y0;->i:Lcom/noober/background/view/BLTextView;

    new-instance v1, Lcom/transsnet/downloader/widget/t;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/widget/t;-><init>(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v0, v0, Lpy/y0;->f:Lcom/noober/background/view/BLTextView;

    new-instance v1, Lcom/transsnet/downloader/widget/u;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/widget/u;-><init>(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final q(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 3

    const-string p1, "/profile/user_center_labels_feedback"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "feedback_from_page"

    const-string v1, "SUBJECT_DETAIL"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->k:Lcom/transsion/moviedetailapi/bean/Subject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "subject_id"

    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p1, p0, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private static final r(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadDialog"

    const-string v2, "innerTvTitle click then switch audio track"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->g:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final s(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadDialog"

    const-string v2, "Switch seasons"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    iget-object p0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->h:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final t(I)V
    .locals 5

    const/4 v0, 0x0

    iput p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->l:I

    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->k:Lcom/transsion/moviedetailapi/bean/Subject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->isTvType()Z

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v1, v1, Lpy/y0;->f:Lcom/noober/background/view/BLTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    sget v2, Lcom/transsnet/downloader/R$string;->download_video_detail_season_index:I

    invoke-static {p1}, Ljn/f;->a(I)Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->k:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->isEduType()Z

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v1, v1, Lpy/y0;->f:Lcom/noober/background/view/BLTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    sget v2, Lcom/transsnet/downloader/R$string;->download_video_detail_unit_index:I

    invoke-static {p1}, Ljn/f;->a(I)Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object p1, p1, Lpy/y0;->f:Lcom/noober/background/view/BLTextView;

    const-string v0, "ivSeasons"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final setAudioClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setAudioContentData(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/DubsInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioContentData size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "DownloadDialog"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->j:I

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v0, v0, Lpy/y0;->i:Lcom/noober/background/view/BLTextView;

    const-string v1, "tvLanguage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-ltz p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v0, v0, Lpy/y0;->i:Lcom/noober/background/view/BLTextView;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/DubsInfo;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->getLanName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final setAudioItemClickListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/transsion/moviedetailapi/bean/DubsInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->f:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setResolutionContentData(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v0, v0, Lpy/y0;->h:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "qualityRecyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v0, v0, Lpy/y0;->k:Landroid/view/View;

    const-string v1, "vLine"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->d:Lcom/transsnet/downloader/adapter/r;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->o(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V

    :cond_0
    return-void
.end method

.method public final setResolutionItemClickListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setSeason(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->t(I)V

    return-void
.end method

.method public final setSeasonClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setSeasons(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->m:Ljava/lang/Integer;

    const/4 v0, 0x1

    const-string v1, "ivSeasons"

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object p1, p1, Lpy/y0;->f:Lcom/noober/background/view/BLTextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object p1, p1, Lpy/y0;->f:Lcom/noober/background/view/BLTextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 1

    const-string v0, "subject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->k:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetectors()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v0, v0, Lpy/y0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getUploadBy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final updateAudioTrack(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lpy/y0;

    iget-object v0, v0, Lpy/y0;->i:Lcom/noober/background/view/BLTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
