.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;
.super Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;

# interfaces
.implements Lny/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment<",
        "Lpy/b0;",
        ">;",
        "Lny/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u008c\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u008d\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\r\u001a\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u001f\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0005J\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"JQ\u0010+\u001a\u00020\u00062\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010%\u001a\u00020#2\u0008\u0010&\u001a\u0004\u0018\u00010#2\u0008\u0010\'\u001a\u0004\u0018\u00010#2\u0008\u0010(\u001a\u0004\u0018\u00010#2\u0008\u0010)\u001a\u0004\u0018\u00010#2\u0006\u0010*\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008-\u0010\u0005J\u000f\u0010.\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00080\u0010\u0005J\u0019\u00103\u001a\u00020\u00062\u0008\u00102\u001a\u0004\u0018\u000101H\u0016\u00a2\u0006\u0004\u00083\u00104J\u0017\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020#H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010<\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u000f\u0010>\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008>\u0010=J\u000f\u0010?\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0005J\u000f\u0010@\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008@\u0010\u0005J\u000f\u0010A\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008A\u0010\u0005J\u000f\u0010B\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008B\u0010\u0005J\u000f\u0010C\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008C\u0010\u0005J-\u0010G\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00102\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010F\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008G\u0010HJ!\u0010K\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00102\u0008\u0010J\u001a\u0004\u0018\u00010IH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u0017\u0010N\u001a\u00020\u00062\u0006\u0010M\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u0017\u0010P\u001a\u00020\u00062\u0006\u0010M\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008P\u0010OR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u0010%\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010X\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010VR\u0018\u0010\\\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0018\u0010^\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010VR\u0018\u0010(\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010VR\u0018\u0010a\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010VR\u0018\u0010c\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010VR\u0016\u0010f\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0016\u0010i\u001a\u00020I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u0016\u0010k\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010VR\u0014\u0010n\u001a\u00020l8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010mR\u0016\u0010p\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010oR\u0016\u0010r\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010oR\u0018\u0010v\u001a\u0004\u0018\u00010s8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR(\u0010z\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\"\u0010|\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020;0w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010yR$\u0010~\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010I0w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010yR\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R\u0018\u0010\u0083\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u0010oR\u0018\u0010\u0085\u0001\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0084\u0001\u0010eR!\u0010\u008b\u0001\u001a\u00030\u0086\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001\u00a8\u0006\u008e\u0001"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;",
        "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;",
        "Lpy/b0;",
        "Lny/c;",
        "<init>",
        "()V",
        "",
        "initView",
        "",
        "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
        "data",
        "p1",
        "(Ljava/util/List;)V",
        "V0",
        "Lcom/google/android/material/tabs/TabLayout;",
        "tabView",
        "",
        "right",
        "s1",
        "(Lcom/google/android/material/tabs/TabLayout;I)V",
        "Lcom/transsnet/downloader/bean/DownloadListBean;",
        "listBean",
        "m1",
        "(Lcom/transsnet/downloader/bean/DownloadListBean;)V",
        "o1",
        "n1",
        "k1",
        "j1",
        "Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;",
        "Z0",
        "()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;",
        "",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "X0",
        "()Ljava/util/List;",
        "",
        "pageName",
        "pageFrom",
        "subjectId",
        "postId",
        "ops",
        "resourceId",
        "taskId",
        "Y0",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "W0",
        "a1",
        "()I",
        "initViewData",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "c1",
        "(Landroid/view/LayoutInflater;)Lpy/b0;",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "isMonitorNetworkState",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "x0",
        "onDestroy",
        "position",
        "selectedList",
        "all",
        "k",
        "(ILjava/util/List;Z)V",
        "",
        "size",
        "x",
        "(ILjava/lang/Long;)V",
        "show",
        "w",
        "(Z)V",
        "U",
        "Lcom/transsnet/downloader/adapter/l;",
        "l",
        "Lcom/transsnet/downloader/adapter/l;",
        "mAdapter",
        "m",
        "Ljava/lang/String;",
        "n",
        "lastPageFrom",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "o",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "p",
        "groupId",
        "q",
        "r",
        "targetResourceId",
        "s",
        "moduleName",
        "t",
        "Z",
        "isSelectAll",
        "u",
        "J",
        "localTotalSize",
        "v",
        "formatSize",
        "Lkotlinx/coroutines/n0;",
        "Lkotlinx/coroutines/n0;",
        "downloadCoroutineScope",
        "I",
        "targetSeason",
        "y",
        "curSeason",
        "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;",
        "z",
        "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;",
        "groupMainViewModel",
        "",
        "A",
        "Ljava/util/Map;",
        "checkedList",
        "B",
        "allCheckMap",
        "C",
        "sizeMap",
        "D",
        "Ljava/lang/Integer;",
        "currentResolution",
        "E",
        "resolution",
        "F",
        "showPremiumIfNeed",
        "Lcom/transsnet/downloader/manager/StartDownloadHelper;",
        "G",
        "Lkotlin/Lazy;",
        "b1",
        "()Lcom/transsnet/downloader/manager/StartDownloadHelper;",
        "startDownloadHelper",
        "H",
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
.field public static final H:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$a;


# instance fields
.field private A:Ljava/util/Map;

.field private B:Ljava/util/Map;

.field private C:Ljava/util/Map;

.field private D:Ljava/lang/Integer;

.field private E:I

.field private F:Z

.field private final G:Lkotlin/Lazy;

.field private l:Lcom/transsnet/downloader/adapter/l;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/transsion/moviedetailapi/bean/Subject;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:J

.field private v:Ljava/lang/String;

.field private final w:Lkotlinx/coroutines/n0;

.field private x:I

.field private y:I

.field private z:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->H:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->v:Ljava/lang/String;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->w:Lkotlinx/coroutines/n0;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->y:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->A:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->B:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->C:Ljava/util/Map;

    new-instance v0, Lcom/transsnet/downloader/fragment/e3;

    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/e3;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->G:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic H0()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->r1()Lcom/transsnet/downloader/manager/StartDownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic I0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;ILcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->h1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;ILcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/transsnet/downloader/bean/DownloadListBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->i1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/transsnet/downloader/bean/DownloadListBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->d1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic L0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->e1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic M0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->g1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->l1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    return-void
.end method

.method public static synthetic O0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->f1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->q1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public static final synthetic Q0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->W0()V

    return-void
.end method

.method public static final synthetic R0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic S0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    return-object p0
.end method

.method public static final synthetic T0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->k1()V

    return-void
.end method

.method public static final synthetic U0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n1()V

    return-void
.end method

.method private final V0(Ljava/util/List;)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lpy/b0;->m:Lcom/google/android/material/tabs/TabLayout;

    const-string v2, "subjectTab"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->p1(Ljava/util/List;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v5

    move v3, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v1, 0x1

    if-gez v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_2
    check-cast v4, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v4

    iget v7, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->x:I

    if-ne v4, v7, :cond_3

    move v3, v1

    :cond_3
    move v1, v6

    goto :goto_2

    :cond_4
    iget-object p1, v0, Lpy/b0;->m:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xc

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->s1(Lcom/google/android/material/tabs/TabLayout;I)V

    iget-object p1, v0, Lpy/b0;->w:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, v0, Lpy/b0;->w:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v3, v5}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_5
    return-void
.end method

.method private final W0()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/b0;->g:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->B:Ljava/util/Map;

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->a1()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method private final X0()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->A:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final Y0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_from"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "subject_id"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "post_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "ops"

    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "resource_id"

    invoke-interface {v0, p4, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "task_id"

    invoke-interface {v0, p5, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "module_name"

    iget-object p7, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->s:Ljava/lang/String;

    invoke-interface {v0, p5, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p5, Lhj/i;->a:Lhj/i;

    const-string p7, "download_click"

    if-nez p1, :cond_0

    move-object p1, p7

    :cond_0
    invoke-virtual {p5, p1, p7, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, p4, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p7, p1, p3}, Lcom/transsion/baselib/report/e;->l(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method private final Z0()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/b0;->w:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->l:Lcom/transsnet/downloader/adapter/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/adapter/l;->g(I)Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private final a1()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/b0;->m:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final b1()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->G:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/StartDownloadHelper;

    return-object v0
.end method

.method private static final d1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 3

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->X0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/transsnet/downloader/R$string;->download_unselected_tips:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "download_last_resolution"

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/commercializationapi/ITaskCenterApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercializationapi/ITaskCenterApi;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->D:Ljava/lang/Integer;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$b;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$b;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    sget-object p0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_HDDL:Lcom/transsion/memberapi/MemberSceneType;

    invoke-interface {v0, v1, p1, v2, p0}, Lcom/transsion/commercializationapi/ITaskCenterApi;->f(Ljava/lang/Integer;Ljava/lang/String;Lok/b;Lcom/transsion/memberapi/MemberSceneType;)V

    :cond_4
    return-void
.end method

.method private static final e1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->m0()V

    return-void
.end method

.method private static final f1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o1()V

    return-void
.end method

.method private static final g1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o1()V

    return-void
.end method

.method private static final h1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;ILcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->y:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u5f53\u524d\u5b63\u8ddf\u5206\u8fa8\u7387\u7684\u4fe1\u606f,resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", curSeason:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/Subject;->setSubjectType(Ljava/lang/Integer;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->getSeasons()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->V0(Ljava/util/List;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final i1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/transsnet/downloader/bean/DownloadListBean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m1(Lcom/transsnet/downloader/bean/DownloadListBean;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/b0;->c:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->q0()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/b0;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsnet/downloader/fragment/h3;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/h3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lpy/b0;->q:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/transsnet/downloader/fragment/i3;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/i3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lpy/b0;->g:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsnet/downloader/fragment/j3;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/j3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lpy/b0;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/transsnet/downloader/fragment/k3;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/k3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method private final j1()V
    .locals 6

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->X0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/transsnet/downloader/viewmodel/b;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->v:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/transsnet/downloader/viewmodel/b;-><init>(ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->p()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final k1()V
    .locals 15

    iget-wide v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->u:J

    invoke-virtual {p0, v0, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->u0(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    const-string v1, "download"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/b0;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v3, "DownloadReDetectorGroupMainFragment --> onDownload() --> \u5f53\u524d\u6b63\u5728\u5168\u9009\u4e2d"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void

    :cond_1
    sget-object v4, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v5

    const-string v0, "<get-TAG>(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, "onDownload "

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lpy/b0;->u:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lpy/b0;->f:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lpy/b0;->n:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lpy/b0;->k:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_5
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->X0()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_6
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v4, "toString(...)"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    iget-object v9, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->q:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v13

    move-object v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->Y0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Llg/a;->a:Llg/a$a;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5267\u96c6\u591a\u8d44\u6e90\uff0c\u4e0b\u8f7d\u70b9\u51fb\uff0c\u5f00\u59cb\u4e0b\u8f7d: subjectId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",resourceId = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", name = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v2}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    move v4, v6

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->p0()Lcom/transsnet/downloader/manager/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsnet/downloader/manager/g;->D(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->b1()Lcom/transsnet/downloader/manager/StartDownloadHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->f(Ljava/util/List;)V

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->w:Lkotlinx/coroutines/n0;

    new-instance v5, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$onDownload$2;

    const/4 v1, 0x0

    invoke-direct {v5, v0, p0, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$onDownload$2;-><init>(Ljava/util/List;Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lpy/b0;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lpy/b0;->k:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_8

    new-instance v3, Lcom/transsnet/downloader/fragment/l3;

    invoke-direct {v3, p0}, Lcom/transsnet/downloader/fragment/l3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void
.end method

.method private static final l1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->j1()V

    return-void
.end method

.method private final m1(Lcom/transsnet/downloader/bean/DownloadListBean;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getResolutionList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->F:Z

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getResolution()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->E:I

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->l:Lcom/transsnet/downloader/adapter/l;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/adapter/l;->m(Ljava/lang/Integer;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final n1()V
    .locals 2

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->Z0()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->j1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/b0;->g:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->t:Z

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->Z0()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->t:Z

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l1(Z)V

    :cond_1
    return-void
.end method

.method private final o1()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->t:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->Z0()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->b1()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->Z0()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->Y0()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$c;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$c;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/memberapi/IMemberApi;->o(Ljava/lang/Integer;Lzm/a;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n1()V

    :cond_2
    :goto_1
    return-void
.end method

.method private final p1(Ljava/util/List;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsnet/downloader/adapter/l;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Lcom/transsnet/downloader/adapter/l;-><init>(Landroidx/fragment/app/FragmentActivity;Lny/c;)V

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->k(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->o(Lcom/transsion/moviedetailapi/bean/Subject;)V

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->l(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->j(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->F:Z

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->n(Z)V

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->p(Ljava/lang/String;)V

    iget v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->x:I

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->q(I)V

    invoke-virtual {v1, p1}, Lcom/transsnet/downloader/adapter/l;->setData(Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->l:Lcom/transsnet/downloader/adapter/l;

    iget-object p1, v0, Lpy/b0;->w:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v1, v0, Lpy/b0;->m:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v0, Lpy/b0;->w:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/transsnet/downloader/fragment/m3;

    invoke-direct {v3, p0}, Lcom/transsnet/downloader/fragment/m3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    iget-object p1, v0, Lpy/b0;->m:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$e;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$e;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    :cond_0
    return-void
.end method

.method private static final q1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->l:Lcom/transsnet/downloader/adapter/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsnet/downloader/adapter/l;->h(I)Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unit "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method private static final r1()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/manager/StartDownloadHelper;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/StartDownloadHelper;-><init>()V

    return-object v0
.end method

.method private final s1(Lcom/google/android/material/tabs/TabLayout;I)V
    .locals 6

    const/16 v0, 0x1c

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v2, v2, p2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public U(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/b0;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public c1(Landroid/view/LayoutInflater;)Lpy/b0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpy/b0;->c(Landroid/view/LayoutInflater;)Lpy/b0;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->c1(Landroid/view/LayoutInflater;)Lpy/b0;

    move-result-object p1

    return-object p1
.end method

.method public initListener()V
    .locals 0

    return-void
.end method

.method public initViewData()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_d"

    const-string v2, "DownloadReDetectorMultiFragment --> initViewData()"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->initView()V

    return-void
.end method

.method public initViewModel()V
    .locals 4

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "download_last_resolution"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->y()Landroidx/lifecycle/b0;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/transsnet/downloader/fragment/f3;

    invoke-direct {v2, p0, v0}, Lcom/transsnet/downloader/fragment/f3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;I)V

    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$d;

    invoke-direct {v0, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    new-instance v0, Landroidx/lifecycle/v0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->s()Landroidx/lifecycle/b0;

    move-result-object v1

    new-instance v2, Lcom/transsnet/downloader/fragment/g3;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/g3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    new-instance v3, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$d;

    invoke-direct {v3, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->z:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->u(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->v()V

    :cond_2
    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMonitorNetworkState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(ILjava/util/List;Z)V
    .locals 8

    const-string v0, "selectedList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->A:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->B:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object p3, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->A:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadReDetectorGroupMainFragment --> onSelectData() --> selectedList.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "zxb_log"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->isUnable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    move-wide v4, v0

    :goto_1
    add-long/2addr v2, v4

    goto :goto_0

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->x(ILjava/lang/Long;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->W0()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    const-string v1, "extra_page_from"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "extra_last_page_from"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    move-object p1, v0

    :cond_3
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-string v2, "extra_subject"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v2, "extra_ops"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    :cond_5
    move-object p1, v0

    :cond_6
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->q:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v2, "extra_target_resource_id"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    :cond_7
    move-object p1, v0

    :cond_8
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->r:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v2, "extra_module_name"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    move-object v0, p1

    :cond_a
    :goto_1
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->s:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v0, "extra_season"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_b
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->x:I

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string v0, "page_from"

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string v0, "last_page_from"

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    :cond_e
    const-string v0, "subject_id"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v0, "ops"

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->q:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string v0, "type"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->Y(Landroidx/lifecycle/b0;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->A()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    return-void
.end method

.method public retryLoadData()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->loadDefaultData()V

    return-void
.end method

.method public w(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/b0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/b0;->d:Lcom/noober/background/view/BLFrameLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public x(ILjava/lang/Long;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->C:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->C:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v0

    :goto_1
    add-long/2addr v2, v4

    goto :goto_0

    :cond_2
    cmp-long p1, v2, v0

    if-gtz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lpy/b0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lpy/b0;->n:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_4

    sget p2, Lcom/transsnet/downloader/R$string;->str_download:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lpy/b0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lpy/b0;->n:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/transsnet/downloader/R$string;->str_download:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {v2, v3, v0}, Loh/b;->a(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public x0()V
    .locals 1

    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->x0()V

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->F0()V

    :cond_0
    return-void
.end method
