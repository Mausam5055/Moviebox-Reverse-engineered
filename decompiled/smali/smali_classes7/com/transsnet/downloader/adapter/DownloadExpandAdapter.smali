.class public final Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;

# interfaces
.implements Lr6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Ln6/a;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;",
        "Lr6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001cB\u00a4\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012w\u0010\u0019\u001as\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00180\r\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ%\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001e2\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001cH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010)\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010+\u001a\u00020\u00182\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001cH\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u001f\u0010/\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008/\u00100J-\u00103\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00022\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002010\u001cH\u0014\u00a2\u0006\u0004\u00083\u00104J\u0017\u00105\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u00085\u00106J\u0017\u00107\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u00087\u00106J\u0015\u00108\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u00088\u00109J\r\u0010:\u001a\u00020\u0018\u00a2\u0006\u0004\u0008:\u0010;R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0016\u0010\n\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010@R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0085\u0001\u0010\u0019\u001as\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00180\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u001d\u0010R\u001a\u0004\u0018\u00010M8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010QR\u001d\u0010W\u001a\u0004\u0018\u00010S8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010O\u001a\u0004\u0008U\u0010VR\u001d\u0010\\\u001a\u0004\u0018\u00010X8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010O\u001a\u0004\u0008Z\u0010[R$\u0010b\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010^\u001a\u0004\u0008_\u0010`\"\u0004\u0008a\u00109\u00a8\u0006d"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Ln6/a;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lr6/i;",
        "",
        "pageType",
        "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
        "fragment",
        "Landroid/widget/FrameLayout;",
        "fragmentRootView",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "wrapperNativeManager",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "position",
        "Landroid/view/View;",
        "view",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "bean",
        "type",
        "Lcom/transsnet/downloader/adapter/u0$b;",
        "listener",
        "",
        "popSaveListener",
        "<init>",
        "(ILcom/transsnet/downloader/fragment/DownloadPanelFragment;Landroid/widget/FrameLayout;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lkotlin/jvm/functions/Function5;)V",
        "",
        "list",
        "",
        "O1",
        "(Ljava/util/List;)Ljava/util/List;",
        "it",
        "P1",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)I",
        "Z1",
        "(I)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "z0",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "X1",
        "(Ljava/util/List;)V",
        "holder",
        "item",
        "L1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ln6/a;)V",
        "",
        "payloads",
        "M1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ln6/a;Ljava/util/List;)V",
        "B0",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "V1",
        "W1",
        "(Lcom/transsnet/downloader/adapter/u0$b;)V",
        "K1",
        "()V",
        "G",
        "I",
        "H",
        "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
        "Landroid/widget/FrameLayout;",
        "J",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "K",
        "Lkotlin/jvm/functions/Function5;",
        "Lcom/transsnet/downloader/manager/u;",
        "L",
        "Lcom/transsnet/downloader/manager/u;",
        "guideHelper",
        "",
        "M",
        "Z",
        "isSmallScreen",
        "Lcom/transsion/room/api/IAudioApi;",
        "N",
        "Lkotlin/Lazy;",
        "Q1",
        "()Lcom/transsion/room/api/IAudioApi;",
        "mAudioApi",
        "Lcom/transsion/room/api/IFloatingApi;",
        "O",
        "R1",
        "()Lcom/transsion/room/api/IFloatingApi;",
        "mFloatApi",
        "Ljj/a;",
        "P",
        "N1",
        "()Ljj/a;",
        "audioDao",
        "Q",
        "Lcom/transsnet/downloader/adapter/u0$b;",
        "S1",
        "()Lcom/transsnet/downloader/adapter/u0$b;",
        "Y1",
        "onItemChangeListener",
        "LayoutType",
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
.field private final G:I

.field private final H:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

.field private final I:Landroid/widget/FrameLayout;

.field private final J:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private final K:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Ljava/lang/Integer;",
            "Lcom/transsnet/downloader/adapter/u0$b;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/transsnet/downloader/manager/u;

.field private final M:Z

.field private final N:Lkotlin/Lazy;

.field private final O:Lkotlin/Lazy;

.field private final P:Lkotlin/Lazy;

.field private Q:Lcom/transsnet/downloader/adapter/u0$b;


# direct methods
.method public constructor <init>(ILcom/transsnet/downloader/fragment/DownloadPanelFragment;Landroid/widget/FrameLayout;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lkotlin/jvm/functions/Function5;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
            "Landroid/widget/FrameLayout;",
            "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/transsnet/downloader/adapter/u0$b;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popSaveListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G:I

    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->H:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    iput-object p3, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->I:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->J:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    iput-object p5, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->K:Lkotlin/jvm/functions/Function5;

    const/high16 p1, 0x42f00000    # 120.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide p3, 0x3fd6666666666666L    # 0.35

    cmpl-double p1, p1, p3

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->M:Z

    new-instance p1, Lcom/transsnet/downloader/adapter/h;

    invoke-direct {p1}, Lcom/transsnet/downloader/adapter/h;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->N:Lkotlin/Lazy;

    new-instance p1, Lcom/transsnet/downloader/adapter/i;

    invoke-direct {p1}, Lcom/transsnet/downloader/adapter/i;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->O:Lkotlin/Lazy;

    new-instance p1, Lcom/transsnet/downloader/adapter/j;

    invoke-direct {p1}, Lcom/transsnet/downloader/adapter/j;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->P:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic D1()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->T1()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic E1()Ljj/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->J1()Ljj/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic F1()Lcom/transsion/room/api/IFloatingApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->U1()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic G1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)Ljj/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->N1()Ljj/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic H1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)I
    .locals 0

    iget p0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G:I

    return p0
.end method

.method public static final synthetic I1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Z1(I)V

    return-void
.end method

.method private static final J1()Ljj/a;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->o1()Ljj/a;

    move-result-object v0

    return-object v0
.end method

.method private final N1()Ljj/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->P:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj/a;

    return-object v0
.end method

.method private final O1(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;)",
            "Ljava/util/List<",
            "Ln6/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct {p0, v1}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->P1(Lcom/transsion/baselib/db/download/DownloadBean;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setItemType(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final P1(Lcom/transsion/baselib/db/download/DownloadBean;)I
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->NO_DONE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->ALL_EP_BTN:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->AD_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->HIDE_MORE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->TITLE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->DONE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final Q1()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->N:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method

.method private final R1()Lcom/transsion/room/api/IFloatingApi;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->O:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    return-object v0
.end method

.method private static final T1()Lcom/transsion/room/api/IAudioApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IAudioApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method

.method private static final U1()Lcom/transsion/room/api/IFloatingApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IFloatingApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    return-object v0
.end method

.method private final Z1(I)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln6/a;

    instance-of v0, p1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Q1()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/room/api/IAudioApi;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->R1()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-interface {v0, v1}, Lcom/transsion/room/api/IFloatingApi;->f(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;-><init>(Ln6/a;Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    return-void
.end method


# virtual methods
.method public B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->I:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G:I

    sget-object v1, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    instance-of v0, p1, Lcom/transsnet/downloader/adapter/DownloadingHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->L:Lcom/transsnet/downloader/manager/u;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsnet/downloader/manager/u;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/u;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->L:Lcom/transsnet/downloader/manager/u;

    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->L:Lcom/transsnet/downloader/manager/u;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->I:Landroid/widget/FrameLayout;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/downloader/manager/u;->d(Landroid/widget/FrameLayout;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;J)V

    :cond_2
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ln6/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->L1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ln6/a;)V

    return-void
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Ln6/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->M1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ln6/a;Ljava/util/List;)V

    return-void
.end method

.method public final K1()V
    .locals 3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln6/a;

    instance-of v2, v1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setWrapNativeManager(Lcom/hisavana/common/interfacz/TAdditionalListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected L1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ln6/a;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsnet/downloader/adapter/u0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsnet/downloader/adapter/u0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/transsnet/downloader/adapter/u0;->c(ILn6/a;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/transsnet/downloader/adapter/u0;->b(ILn6/a;)V

    new-instance p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$a;

    invoke-direct {p1, p0}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$a;-><init>(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)V

    invoke-interface {v0, p1}, Lcom/transsnet/downloader/adapter/u0;->a(Lcom/transsnet/downloader/adapter/u0$b;)V

    :cond_0
    return-void
.end method

.method protected M1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ln6/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Ln6/a;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p3, :cond_1

    instance-of p3, p1, Lcom/transsnet/downloader/adapter/u0;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Lcom/transsnet/downloader/adapter/u0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    check-cast p2, Ln6/a;

    invoke-interface {p3, p1, p2}, Lcom/transsnet/downloader/adapter/u0;->b(ILn6/a;)V

    :cond_1
    return-void
.end method

.method public final S1()Lcom/transsnet/downloader/adapter/u0$b;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Q:Lcom/transsnet/downloader/adapter/u0$b;

    return-object v0
.end method

.method public V1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method

.method public final W1(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Q:Lcom/transsnet/downloader/adapter/u0$b;

    return-void
.end method

.method public final X1(Ljava/util/List;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->O1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    return-void
.end method

.method public final Y1(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Q:Lcom/transsnet/downloader/adapter/u0$b;

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->z0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->V1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public z0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->NO_DONE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x41300000    # 11.0f

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_downloading_item:I

    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsnet/downloader/adapter/DownloadingHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G:I

    sget-object v3, Lcom/transsnet/downloader/api/DownloadPageType;->SERIES:Lcom/transsnet/downloader/api/DownloadPageType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v0, v4, :cond_0

    invoke-virtual {v3}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    invoke-virtual {v0}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v3, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->M:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p2, p1, v0, v1}, Lcom/transsnet/downloader/adapter/DownloadingHolder;-><init>(Landroid/view/View;Ljava/lang/String;F)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->DONE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_downloaded_item:I

    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsnet/downloader/adapter/DownloadedHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G:I

    sget-object v3, Lcom/transsnet/downloader/api/DownloadPageType;->SERIES:Lcom/transsnet/downloader/api/DownloadPageType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v0, v4, :cond_3

    invoke-virtual {v3}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    invoke-virtual {v0}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-boolean v3, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->M:Z

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    iget-object v2, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->K:Lkotlin/jvm/functions/Function5;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;-><init>(Landroid/view/View;Ljava/lang/String;FLkotlin/jvm/functions/Function5;)V

    goto/16 :goto_2

    :cond_5
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->TITLE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_download_item_header:I

    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsnet/downloader/adapter/DownTitleHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->H:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    invoke-direct {p2, p1, v0}, Lcom/transsnet/downloader/adapter/DownTitleHolder;-><init>(Landroid/view/View;Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->HIDE_MORE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_download_item_hide_more:I

    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->J:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-direct {p2, p1, v0}, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;-><init>(Landroid/view/View;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->AD_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_download_item_ad:I

    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsnet/downloader/adapter/DownloadAdHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsnet/downloader/adapter/DownloadAdHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->ALL_EP_BTN:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$layout;->adapter_download_item_all_ep:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/transsnet/downloader/adapter/DownloadAllEpBtnHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Lcom/transsnet/downloader/adapter/DownloadAllEpBtnHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    move-object p2, v0

    goto :goto_2

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p2

    :goto_2
    return-object p2
.end method
