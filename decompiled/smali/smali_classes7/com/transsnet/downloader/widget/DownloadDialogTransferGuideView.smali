.class public final Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0001\u0015B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u001b\u0010\u0012\u001a\u00020\u000c2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;",
        "Landroid/widget/FrameLayout;",
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
        "d",
        "()V",
        "startCountdown",
        "Lkotlin/Function0;",
        "callback",
        "setCloseCallback",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Lpy/t0;",
        "a",
        "Lpy/t0;",
        "viewBinding",
        "b",
        "Lkotlin/jvm/functions/Function0;",
        "closeCallback",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView$a;


# instance fields
.field private final a:Lpy/t0;

.field private b:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->Companion:Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p2, Lcom/transsnet/downloader/R$layout;->layout_download_dialog_transfer_guide:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lpy/t0;->a(Landroid/view/View;)Lpy/t0;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->a:Lpy/t0;

    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->f(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->e(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->g(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final d()V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->a:Lpy/t0;

    iget-object v0, v0, Lpy/t0;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsnet/downloader/widget/c;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/widget/c;-><init>(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->a:Lpy/t0;

    iget-object v0, v0, Lpy/t0;->d:Lcom/tn/lib/view/CircleProgressBar;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/CircleProgressBar;->setMax(I)V

    return-void
.end method

.method private static final e(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method

.method private static final f(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;I)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->a:Lpy/t0;

    iget-object p0, p0, Lpy/t0;->d:Lcom/tn/lib/view/CircleProgressBar;

    invoke-virtual {p0, p1}, Lcom/tn/lib/view/CircleProgressBar;->setProgress(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final g(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->a:Lpy/t0;

    iget-object v0, v0, Lpy/t0;->d:Lcom/tn/lib/view/CircleProgressBar;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/CircleProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final setCloseCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final startCountdown()V
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/widget/a;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/widget/a;-><init>(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;)V

    new-instance v2, Lcom/transsnet/downloader/widget/b;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/widget/b;-><init>(Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;)V

    const/16 v3, 0xf

    invoke-static {v3, v0, v1, v2}, Lcom/transsion/baseui/util/TimeUtilKt;->b(ILkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/t1;

    return-void
.end method
