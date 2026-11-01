.class public final Lcom/transsnet/downloader/fragment/FileManagerFragment;
.super Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

# interfaces
.implements Lzm/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/FileManagerFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment<",
        "Lpy/h0;",
        ">;",
        "Lzm/e;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\n\u0018\u0000 h2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001iB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0005J\u000f\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\u0019\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008#\u0010!J\u0017\u0010%\u001a\u00020$2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010,\u001a\u00020\u00062\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'H\u0016\u00a2\u0006\u0004\u0008,\u0010-J!\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u00080\u00101J!\u00102\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u00082\u00101J\u000f\u00103\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00083\u0010\u0005J\r\u00104\u001a\u00020\u0006\u00a2\u0006\u0004\u00084\u0010\u0005J\u000f\u00105\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00085\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00086\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00087\u0010\u0005J\u0017\u0010:\u001a\u00020\u00062\u0006\u00109\u001a\u000208H\u0016\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010<\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008<\u0010\u0005J\u000f\u0010=\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008=\u0010\u0005J\u000f\u0010>\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008>\u0010\u0005J\u000f\u0010?\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0005R\u0016\u0010B\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u001b\u0010H\u001a\u00020C8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010GR\u001b\u0010M\u001a\u00020I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010E\u001a\u0004\u0008K\u0010LR\u0018\u0010P\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0018\u0010R\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010OR\u001b\u0010W\u001a\u00020S8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010E\u001a\u0004\u0008U\u0010VR\u0018\u0010[\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR \u0010_\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020X0\\8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\"\u0010g\u001a\u00020`8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010f\u00a8\u0006j"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/FileManagerFragment;",
        "Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;",
        "Lpy/h0;",
        "Lzm/e;",
        "<init>",
        "()V",
        "",
        "initViewModel",
        "",
        "position",
        "count",
        "c1",
        "(II)V",
        "N0",
        "L0",
        "O0",
        "S0",
        "initAd",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "R0",
        "(Landroid/view/LayoutInflater;)Lpy/h0;",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "z0",
        "()Landroidx/viewpager2/widget/ViewPager2;",
        "Lnet/lucode/hackware/magicindicator/MagicIndicator;",
        "r0",
        "()Lnet/lucode/hackware/magicindicator/MagicIndicator;",
        "t0",
        "(I)V",
        "state",
        "s0",
        "Landroidx/fragment/app/Fragment;",
        "d0",
        "(I)Landroidx/fragment/app/Fragment;",
        "",
        "",
        "f0",
        "()Ljava/util/List;",
        "list",
        "u0",
        "(Ljava/util/List;)V",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initData",
        "lazyLoadData",
        "b1",
        "onDestroy",
        "onStart",
        "onResume",
        "",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "onPause",
        "logPause",
        "logResume",
        "onMemberStateChange",
        "k",
        "Z",
        "isFirstStart",
        "Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;",
        "l",
        "Lkotlin/Lazy;",
        "Q0",
        "()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;",
        "mTransferViewModel",
        "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;",
        "m",
        "P0",
        "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;",
        "mLocalFileViewModel",
        "n",
        "Landroidx/fragment/app/Fragment;",
        "topCardAdFragment",
        "o",
        "appDownloadAdFragment",
        "Lcom/transsnet/downloader/manager/g;",
        "p",
        "M0",
        "()Lcom/transsnet/downloader/manager/g;",
        "downloadManager",
        "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;",
        "q",
        "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;",
        "currentFragment",
        "",
        "r",
        "Ljava/util/Map;",
        "fragmentMap",
        "",
        "s",
        "J",
        "getResumeTimeStamp",
        "()J",
        "setResumeTimeStamp",
        "(J)V",
        "resumeTimeStamp",
        "t",
        "a",
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


# static fields
.field public static final t:Lcom/transsnet/downloader/fragment/FileManagerFragment$a;


# instance fields
.field private k:Z

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/Lazy;

.field private n:Landroidx/fragment/app/Fragment;

.field private o:Landroidx/fragment/app/Fragment;

.field private final p:Lkotlin/Lazy;

.field private q:Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;

.field private final r:Ljava/util/Map;

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/fragment/FileManagerFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->t:Lcom/transsnet/downloader/fragment/FileManagerFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->k:Z

    const-class v0, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->l:Lkotlin/Lazy;

    const-class v0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$4;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->m:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/fragment/b6;

    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/b6;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->p:Lkotlin/Lazy;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->r:Ljava/util/Map;

    return-void
.end method

.method public static synthetic A0()Lcom/transsnet/downloader/manager/g;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->K0()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic B0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->U0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->Y0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->a1(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljv/e;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->V0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljv/e;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->Z0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->X0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H0(Lcom/transsnet/downloader/fragment/FileManagerFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->W0(Lcom/transsnet/downloader/fragment/FileManagerFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->T0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic J0(Lcom/transsnet/downloader/fragment/FileManagerFragment;)Lcom/transsnet/downloader/manager/g;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->M0()Lcom/transsnet/downloader/manager/g;

    move-result-object p0

    return-object p0
.end method

.method private static final K0()Lcom/transsnet/downloader/manager/g;
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private final L0()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->H()V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->Q0()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;->i(Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;ZILjava/lang/Object;)V

    return-void
.end method

.method private final M0()Lcom/transsnet/downloader/manager/g;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->p:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/g;

    return-object v0
.end method

.method private final N0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->P()V

    return-void
.end method

.method private final O0()V
    .locals 4

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->P0()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->k(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;ZILjava/lang/Object;)V

    return-void
.end method

.method private final P0()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    return-object v0
.end method

.method private final Q0()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    return-object v0
.end method

.method private final S0()V
    .locals 11

    new-instance v6, Lcom/transsnet/downloader/fragment/g6;

    invoke-direct {v6, p0}, Lcom/transsnet/downloader/fragment/g6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    sget-object v7, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v8, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v9, "getName(...)"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v10

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    new-instance v6, Lcom/transsnet/downloader/fragment/h6;

    invoke-direct {v6, p0}, Lcom/transsnet/downloader/fragment/h6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    new-instance v6, Lcom/transsnet/downloader/fragment/i6;

    invoke-direct {v6, p0}, Lcom/transsnet/downloader/fragment/i6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Ljv/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final T0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getResourceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->H()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final U0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/h0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/h0;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;->getAdd()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->N0()V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final V0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljv/e;)Lkotlin/Unit;
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "TransferFinishEvent\uff0c \u6709\u4f20\u8f93\u5b8c\u6210\uff0c\u5237\u65b0\u9875\u9762"

    const/4 v2, 0x1

    const-string v3, "Transfer_d"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v0

    invoke-virtual {p1}, Ljv/e;->a()Lcom/transsion/transfer/impl/entity/FileData;

    move-result-object p1

    new-instance v1, Lcom/transsnet/downloader/fragment/j6;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/j6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->r0(Lcom/transsion/transfer/impl/entity/FileData;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final W0(Lcom/transsnet/downloader/fragment/FileManagerFragment;)Lkotlin/Unit;
    .locals 4

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->Q0()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;->i(Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->d0()Landroidx/lifecycle/b0;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final X0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->c1(II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Y0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->c1(II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Z0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->c1(II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final a1(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 8

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lpy/h0;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lpy/h0;->d:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "downloading have data, fragment is shown"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lpy/h0;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lpy/h0;->d:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_2
    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "downloading have data, show fragment"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v6, "DownloadingListFragment"

    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;-><init>()V

    :cond_3
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "downloading have data, isAdded, show"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/w;->l()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "downloading have data, add"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p0

    sget p1, Lcom/transsnet/downloader/R$id;->flDownloadingContainer:I

    invoke-virtual {p0, p1, v7, v6}, Landroidx/fragment/app/w;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/w;->l()V

    goto :goto_1

    :cond_5
    :goto_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "downloading null- hide fragment"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lpy/h0;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lpy/h0;->d:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_6

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final c1(II)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTabTitle - position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->i0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->i0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-lez p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->g0()Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->getPagerTitleView(I)Lj00/d;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    instance-of v3, v1, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;

    if-eqz v3, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v0, p2, p1}, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;->setTitle(Ljava/lang/String;II)V

    :cond_4
    return-void
.end method

.method private final initAd()V
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "TopCardAdFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->n:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;

    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->n:Landroidx/fragment/app/Fragment;

    :cond_0
    iget-object v4, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->n:Landroidx/fragment/app/Fragment;

    const-string v0, "getChildFragmentManager(...)"

    if-eqz v4, :cond_1

    sget-object v1, Lak/m;->a:Lak/m;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/transsnet/downloader/R$id;->flTopCardAd:I

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lak/m;->b(Lak/m;Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AppDownloadAdFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->o:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_2

    new-instance v1, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    invoke-direct {v1}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;-><init>()V

    iput-object v1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->o:Landroidx/fragment/app/Fragment;

    :cond_2
    iget-object v5, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->o:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_3

    sget-object v2, Lak/m;->a:Lak/m;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/transsnet/downloader/R$id;->flAppDownloadAd:I

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lak/m;->b(Lak/m;Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private final initViewModel()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->O()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/c6;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/c6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->P0()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/d6;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/d6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->Q0()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/e6;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/e6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->Q()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/f6;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/f6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->L0()V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->O0()V

    return-void
.end method


# virtual methods
.method public R0(Landroid/view/LayoutInflater;)Lpy/h0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpy/h0;->c(Landroid/view/LayoutInflater;)Lpy/h0;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b1()V
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Loh/b;->a(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lpy/h0;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lpy/h0;->g:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public d0(I)Landroidx/fragment/app/Fragment;
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/transsnet/downloader/fragment/DownloadedListFragment;->k:Lcom/transsnet/downloader/fragment/DownloadedListFragment$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadedListFragment$a;->a()Lcom/transsnet/downloader/fragment/DownloadedListFragment;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->l:Lcom/transsnet/downloader/fragment/TransferReceivedFragment$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$a;->a()Lcom/transsnet/downloader/fragment/TransferReceivedFragment;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->r:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->o:Lcom/transsnet/downloader/fragment/LocalFileListFragment$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/LocalFileListFragment$a;->a()Lcom/transsnet/downloader/fragment/LocalFileListFragment;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->r:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/transsnet/downloader/fragment/DownloadedListFragment;->k:Lcom/transsnet/downloader/fragment/DownloadedListFragment$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/DownloadedListFragment$a;->a()Lcom/transsnet/downloader/fragment/DownloadedListFragment;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->r:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method public f0()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->K()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->R0(Landroid/view/LayoutInflater;)Lpy/h0;

    move-result-object p1

    return-object p1
.end method

.method public initData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->initData(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->b1()V

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/fragment/FileManagerFragment$initData$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$initData$1;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p1, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    invoke-virtual {p1}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->b()Ljava/util/List;

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->initViewModel()V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->S0()V

    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->initAd()V

    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public logPause()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logPause()V

    iget-wide v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->s:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "downloadpage"

    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/baselib/report/e;->n(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public logResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logResume()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->s:J

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "extra_page_index"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->y0(I)V

    sget-object p1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsnet/downloader/manager/g;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->y0(I)V

    :cond_1
    const-class p1, Lcom/transsion/memberapi/IMemberApi;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/transsion/memberapi/IMemberApi;->E(Lzm/e;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/memberapi/IMemberApi;->t(Lzm/e;)V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->n:Landroidx/fragment/app/Fragment;

    instance-of v0, p1, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;->k0()V

    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->o:Landroidx/fragment/app/Fragment;

    instance-of v0, p1, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->o0()V

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->L0()V

    :cond_4
    return-void
.end method

.method public onMemberStateChange()V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/memberapi/IMemberApi;->g()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u8f7d\u7ba1\u7406\u9875\u9762\u6536\u5230\u56de\u8c03 --> skipShowAd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "co_mem"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v1, Loy/c;

    invoke-direct {v1}, Loy/c;-><init>()V

    const-class v3, Lcom/transsnet/loginapi/ILoginApi;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsnet/loginapi/ILoginApi;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v5}, Loy/c;->m(I)V

    goto :goto_3

    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/memberapi/IMemberApi;->D()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    invoke-virtual {v1, v0}, Loy/c;->m(I)V

    :goto_3
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {v0, v4, v5, v4}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/transsnet/downloader/manager/g;->r(Loy/c;)V

    invoke-static {v0, v4, v5, v4}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsnet/downloader/manager/g;->w()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onPause()V

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, p0, v0, v1, v0}, Lcom/transsion/baseui/activity/k;->l(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1, v2}, Lcom/transsion/baseui/activity/k;->p(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->k:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->k:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->L0()V

    :goto_0
    return-void
.end method

.method public r0()Lnet/lucode/hackware/magicindicator/MagicIndicator;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/h0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/h0;->f:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public s0(I)V
    .locals 0

    return-void
.end method

.method public t0(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->r:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->q:Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;

    return-void
.end method

.method public u0(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->K()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public z0()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/h0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/h0;->h:Landroidx/viewpager2/widget/ViewPager2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
