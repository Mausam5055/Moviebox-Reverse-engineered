.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;
.super Lcom/transsion/baseui/fragment/LazyFragment;

# interfaces
.implements Lcom/transsion/subtitle_download/a;
.implements Lhu/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/LazyFragment<",
        "Lfu/b;",
        ">;",
        "Lcom/transsion/subtitle_download/a;",
        "Lhu/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\n\n\u0002\u0010%\n\u0002\u0008\u0013\u0018\u0000 \u0094\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001fB\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J#\u0010\u000b\u001a\u00020\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u000e\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008 \u0010\u0006J!\u0010!\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0015J\u000f\u0010!\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008!\u0010\u0006J\u000f\u0010\"\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0006J\u000f\u0010#\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008#\u0010\u0006J\u000f\u0010$\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008$\u0010\u0006J\u0017\u0010&\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u001f\u0010,\u001a\u00020\t2\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010.\u001a\u00020\t2\u0006\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008.\u0010/J#\u00103\u001a\u00020\t2\n\u00102\u001a\u000600j\u0002`12\u0006\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00085\u0010\u0006J\u000f\u00106\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00086\u0010\u0006J\u0017\u00108\u001a\u00020\t2\u0008\u00107\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u00088\u00109J/\u0010>\u001a\u00020\t2\u0008\u0010;\u001a\u0004\u0018\u00010:2\u0008\u0010=\u001a\u0004\u0018\u00010<2\n\u0008\u0002\u00107\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u000f\u0010@\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008@\u0010\u0006J\u000f\u0010A\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008A\u0010\u0006J\u0017\u0010B\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008B\u0010\'J%\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00080C2\u000e\u0010E\u001a\n\u0012\u0004\u0012\u00020D\u0018\u00010CH\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010H\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008H\u0010\u0006J\u000f\u0010I\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008I\u0010\u0006J\u000f\u0010J\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008J\u0010\u0006J%\u0010M\u001a\u00020\t2\u000c\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u00080C2\u0006\u0010L\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008M\u0010NJ\u0017\u0010P\u001a\u00020\t2\u0006\u0010O\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008P\u0010QJ\u000f\u0010R\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008R\u0010\u0006J\u000f\u0010S\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008S\u0010\u0006J\u000f\u0010T\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008T\u0010\u0006J\u0017\u0010W\u001a\u00020\u00102\u0006\u0010V\u001a\u00020UH\u0002\u00a2\u0006\u0004\u0008W\u0010XJ\u0017\u0010Y\u001a\u00020\u00102\u0006\u0010V\u001a\u00020UH\u0002\u00a2\u0006\u0004\u0008Y\u0010XJ\u0017\u0010Z\u001a\u00020\u00102\u0006\u0010V\u001a\u00020UH\u0002\u00a2\u0006\u0004\u0008Z\u0010XJ)\u0010]\u001a\u00020\u00102\u0006\u0010V\u001a\u00020U2\u0006\u0010[\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\\\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008]\u0010^J\u0017\u0010`\u001a\u00020\t2\u0006\u0010_\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008`\u0010\'J\u001f\u0010c\u001a\u00020\t2\u0006\u0010a\u001a\u00020\u001d2\u0006\u0010b\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008c\u0010dR\u0018\u0010h\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0018\u0010l\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0016\u0010o\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0018\u0010q\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010nR\u0018\u0010t\u001a\u0004\u0018\u00010r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010sR\u0016\u0010v\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010nR\u001c\u0010y\u001a\u0008\u0012\u0004\u0012\u00020<0w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010xR\u0018\u0010;\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R\u0018\u00107\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010nR\u0018\u0010=\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010~R\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R&\u0010\u0085\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020(0\u0082\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0088\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\'\u0010\u008b\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R!\u0010\u008e\u0001\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u008d\u0001R\u0019\u0010\u0091\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\u0019\u0010\u0093\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0001\u0010\u0090\u0001\u00a8\u0006\u0095\u0001"
    }
    d2 = {
        "Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;",
        "Lcom/transsion/baseui/fragment/LazyFragment;",
        "Lfu/b;",
        "Lcom/transsion/subtitle_download/a;",
        "Lhu/c;",
        "<init>",
        "()V",
        "Lkotlin/Function1;",
        "Leu/a;",
        "",
        "callback",
        "U0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Lkotlin/Function0;",
        "T0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "E0",
        "(Landroid/view/LayoutInflater;)Lfu/b;",
        "",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "initListener",
        "initViewData",
        "initViewModel",
        "lazyLoadData",
        "loadDefaultData",
        "bean",
        "g",
        "(Leu/a;)V",
        "",
        "progress",
        "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;",
        "dbBean",
        "onDownloading",
        "(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "onComplete",
        "(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "onFail",
        "(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "onDestroy",
        "retryLoadData",
        "searchName",
        "Q0",
        "(Ljava/lang/String;)V",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "downloadBean",
        "Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;",
        "languageBean",
        "S0",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Ljava/lang/String;)V",
        "K0",
        "w0",
        "Y0",
        "",
        "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
        "items",
        "F0",
        "(Ljava/util/List;)Ljava/util/List;",
        "loadData",
        "P0",
        "loadMore",
        "list",
        "hasMore",
        "Z0",
        "(Ljava/util/List;Z)V",
        "show",
        "W0",
        "(Z)V",
        "X0",
        "showEmpty",
        "V0",
        "Landroid/content/Context;",
        "context",
        "getEmptyView",
        "(Landroid/content/Context;)Landroid/view/View;",
        "D0",
        "C0",
        "desText",
        "showLeftBtn",
        "y0",
        "(Landroid/content/Context;Ljava/lang/String;Z)Landroid/view/View;",
        "item",
        "x0",
        "isSuccess",
        "type",
        "R0",
        "(ZI)V",
        "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;",
        "a",
        "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;",
        "viewModel",
        "Lcom/transsion/subtitle/adapter/c;",
        "b",
        "Lcom/transsion/subtitle/adapter/c;",
        "resultAdapter",
        "c",
        "Ljava/lang/String;",
        "nextPage",
        "d",
        "pageName",
        "Lcom/transsion/subtitle/fragment/i;",
        "Lcom/transsion/subtitle/fragment/i;",
        "keyword",
        "f",
        "languages",
        "",
        "Ljava/util/List;",
        "languageList",
        "h",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "i",
        "j",
        "Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;",
        "k",
        "Leu/a;",
        "currentSelectItem",
        "",
        "l",
        "Ljava/util/Map;",
        "curDownloadedMap",
        "m",
        "I",
        "currentSelectPosition",
        "n",
        "Lkotlin/jvm/functions/Function1;",
        "selectSubtitleCallback",
        "o",
        "Lkotlin/jvm/functions/Function0;",
        "onGetDataResultCallback",
        "p",
        "Z",
        "hasSubDownloading",
        "q",
        "isOpenSubtitle",
        "r",
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
.field public static final r:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$a;


# instance fields
.field private a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

.field private b:Lcom/transsion/subtitle/adapter/c;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/transsion/subtitle/fragment/i;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;

.field private h:Lcom/transsion/baselib/db/download/DownloadBean;

.field private i:Ljava/lang/String;

.field private j:Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

.field private k:Leu/a;

.field private l:Ljava/util/Map;

.field private m:I

.field private n:Lkotlin/jvm/functions/Function1;

.field private o:Lkotlin/jvm/functions/Function0;

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->r:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/LazyFragment;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->g:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->l:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->q:Z

    return-void
.end method

.method private static final A0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->W0(Z)V

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->loadData()V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final B0(Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V
    .locals 0

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->v()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final C0(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    sget v0, Lcom/transsion/subtitle/R$string;->subtitle_load_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->z0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private final D0(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/tn/lib/widget/R$string;->no_network_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->y0(Landroid/content/Context;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private final F0(Ljava/util/List;)Ljava/util/List;
    .locals 39

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->m()Landroidx/lifecycle/b0;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object v15, v4

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    const/16 v33, 0x2

    const/4 v14, 0x1

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    move-result v4

    if-ne v4, v14, :cond_6

    const/4 v4, 0x4

    move/from16 v34, v4

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isStream()Z

    move-result v4

    if-ne v4, v14, :cond_7

    move/from16 v34, v33

    goto :goto_4

    :cond_7
    move/from16 v34, v14

    :goto_4
    move-object/from16 v4, p1

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_5
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v36, v4

    check-cast v36, Lcom/transsion/moviedetailapi/bean/SubtitleItem;

    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_8

    move-object v6, v5

    goto :goto_6

    :cond_8
    move-object v6, v4

    :goto_6
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_8

    :cond_9
    :goto_7
    move-object v7, v4

    goto :goto_9

    :cond_a
    :goto_8
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostIdNotNull()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_b
    move-object v7, v5

    :goto_9
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isOutside()Z

    move-result v4

    if-ne v4, v14, :cond_e

    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostIdNotNull()Ljava/lang/String;

    move-result-object v4

    :cond_c
    :goto_a
    move-object/from16 v16, v4

    goto :goto_b

    :cond_d
    const/16 v16, 0x0

    goto :goto_b

    :cond_e
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    :cond_f
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :goto_b
    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move-object v10, v5

    goto :goto_c

    :cond_10
    move-object v10, v4

    :goto_c
    if-eqz v15, :cond_12

    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v14, :cond_12

    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/a;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    goto :goto_d

    :cond_11
    move-object/from16 v24, v4

    goto :goto_e

    :cond_12
    :goto_d
    move-object/from16 v24, v5

    :goto_e
    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getLan()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getLanName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move-object v9, v5

    goto :goto_f

    :cond_13
    move-object v9, v4

    :goto_f
    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getSize()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getEpisode()Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x0

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v18, v4

    goto :goto_10

    :cond_14
    move/from16 v18, v12

    :goto_10
    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getSeason()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v19, v4

    goto :goto_11

    :cond_15
    move/from16 v19, v12

    :goto_11
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    goto :goto_12

    :cond_16
    move-object/from16 v21, v4

    goto :goto_14

    :cond_17
    :goto_12
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_18
    const/4 v4, 0x0

    :goto_13
    if-nez v4, :cond_16

    move-object/from16 v21, v5

    :goto_14
    if-eqz v15, :cond_19

    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v14, :cond_19

    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/a;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    move-result v4

    move/from16 v22, v4

    goto :goto_15

    :cond_19
    move/from16 v22, v12

    :goto_15
    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getType()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v28, v4

    goto :goto_16

    :cond_1a
    move/from16 v28, v33

    :goto_16
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v29, v4

    goto :goto_17

    :cond_1b
    const/16 v29, 0x0

    :goto_17
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v4

    goto :goto_18

    :cond_1c
    const/16 v30, 0x0

    :goto_18
    iget-object v4, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v4

    goto :goto_19

    :cond_1d
    const/16 v37, 0x0

    :goto_19
    new-instance v5, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-object v4, v5

    const v31, 0x748180

    const/16 v32, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v3, v5

    move-object v5, v6

    move/from16 v6, v34

    move/from16 v14, v28

    move-object/from16 v38, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v2

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v37

    invoke-direct/range {v4 .. v32}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Leu/a;

    invoke-direct {v4, v3}, Leu/a;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->isOpenSubNewApi()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual/range {v36 .. v36}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Leu/a;->i(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Leu/a;->j(Z)V

    goto :goto_1a

    :cond_1e
    const/4 v3, 0x1

    :goto_1a
    invoke-virtual {v4}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1b

    :cond_1f
    const/4 v6, 0x0

    :goto_1b
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Leu/a;->l(Z)V

    invoke-virtual {v4}, Leu/a;->f()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->l:Ljava/util/Map;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v14, v3

    move-object/from16 v15, v38

    goto/16 :goto_5

    :cond_21
    return-object v1
.end method

.method private static final G0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->K0()V

    return-void
.end method

.method private static final H0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.transsion.subtitle.bean.VideoSubtitleBean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Leu/a;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Leu/a;->d()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->p:Z

    if-eqz p2, :cond_1

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/transsion/subtitle/R$string;->subtitle_is_downloading:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Leu/a;->f()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Leu/a;->l(Z)V

    iget p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->m:I

    if-eq p2, p3, :cond_8

    iget-object p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->k:Leu/a;

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Leu/a;->l(Z)V

    :cond_3
    iget p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->m:I

    if-ltz p2, :cond_4

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->k:Leu/a;

    invoke-virtual {v1, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->d:Ljava/lang/String;

    if-nez p2, :cond_5

    const-string p2, ""

    :cond_5
    invoke-virtual {p1, p2}, Leu/a;->k(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->k:Leu/a;

    iput p3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->m:I

    iget-object p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_6
    sget-object p2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c status:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ORSubtitle_search"

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Leu/a;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->n:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setStatus(I)V

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Leu/a;->e()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemClick, resourceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " index:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isOpenSubNewApi:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ORSubtitle_search"

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->l:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->x0(Leu/a;)V

    goto :goto_0

    :cond_8
    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->m:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->k:Leu/a;

    :cond_9
    :goto_0
    return-void
.end method

.method private static final I0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle/bean/SubtitleSearchListBean;)Lkotlin/Unit;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->W0(Z)V

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->o:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->getSearchType()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->q:Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh()Z

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->getSearchType()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->R0(ZI)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->R0(ZI)V

    :goto_1
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->V0()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->X0()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lr6/f;->r()Z

    move-result p1

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lr6/f;->v()V

    :cond_5
    iget-object p0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 p1, 0x0

    invoke-static {p0, v0, v2, p1}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    invoke-virtual {p1}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    const-string v1, "1"

    :cond_9
    iput-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->F0(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_a
    invoke-direct {p0, v1, v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->Z0(Ljava/util/List;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final J0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Leu/a;)Lkotlin/Unit;
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->x0(Leu/a;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setStatus(I)V

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->Y0(Leu/a;)V

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final K0()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr6/f;->r()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lr6/f;->w()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/b;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lfu/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/transsion/subtitle/fragment/n;

    invoke-direct {v1, p0}, Lcom/transsion/subtitle/fragment/n;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/b;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lfu/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/transsion/subtitle/fragment/o;

    invoke-direct {v1, p0}, Lcom/transsion/subtitle/fragment/o;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private static final L0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->loadMore()V

    return-void
.end method

.method private static final M0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr6/f;->v()V

    :cond_0
    return-void
.end method

.method private static final N0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Leu/a;

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Leu/a;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Leu/a;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    sget-object v0, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result v3

    invoke-virtual {v1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u641c\u7d22\u5b57\u5e55\u4e0b\u8f7d\u6210\u529f\uff0cname = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", subtype = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", download subtitleName = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lan = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "~"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->m:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Leu/a;->l(Z)V

    invoke-direct {p0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->Y0(Leu/a;)V

    :cond_4
    return-void
.end method

.method private static final O0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 9

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->k:Leu/a;

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Leu/a;

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    check-cast v2, Leu/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Leu/a;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    sget-object v1, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result v3

    invoke-virtual {v2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getUrl()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u641c\u7d22\u5b57\u5e55\u4e0b\u8f7d\u5931\u8d25TnT\uff0cname = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subtype = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", download subtitleName = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lan = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "~ , url\uff1a"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v0, v3}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v2}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->Y0(Leu/a;)V

    :cond_3
    return-void
.end method

.method private final P0()V
    .locals 10

    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_0
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->X0()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->W0(Z)V

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->e:Lcom/transsion/subtitle/fragment/i;

    iget-object v3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v6, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->c:Ljava/lang/String;

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->u(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/subtitle/fragment/i;Ljava/lang/String;Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final R0(ZI)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->j:Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLan()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v4, "result"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lan"

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_1

    move-object p1, p2

    :cond_1
    const-string v2, "resource_id"

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p1

    :goto_1
    const-string p1, "subject_id"

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ep"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "se"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string p2, "subtitle_search"

    invoke-virtual {p1, v0, p2, v3}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method private final S0(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->i:Ljava/lang/String;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->j:Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLan()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final V0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ORSubtitle_search"

    const-string v3, "showFail~"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->W0(Z)V

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->C0(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final W0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lfu/b;->c:Landroidx/appcompat/widget/LinearLayoutCompat;

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

.method private final X0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ORSubtitle_search"

    const-string v3, "showNotNet~"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->W0(Z)V

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->D0(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final Y0(Leu/a;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final Z0(Ljava/util/List;Z)V
    .locals 11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->showEmpty()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->X0()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1, v2, v3, v1}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_4
    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lr6/f;->r()Z

    move-result p1

    if-ne p1, v3, :cond_10

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lr6/f;->s()V

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-static {p1, v2, v3, v1}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_8
    check-cast p1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Leu/a;

    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_9

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leu/a;

    invoke-virtual {v6}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v9

    invoke-virtual {v9}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_1

    :cond_b
    :goto_2
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object v5, Llg/a;->a:Llg/a$a;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "ORSubtitle_search"

    const-string v7, "\u5168\u90e8\u53bb\u91cd\u4e86~"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_d
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    :cond_e
    if-eqz p2, :cond_f

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lr6/f;->r()Z

    move-result p1

    if-ne p1, v3, :cond_10

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lr6/f;->s()V

    goto :goto_3

    :cond_f
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-static {p1, v2, v3, v1}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_10
    :goto_3
    return-void
.end method

.method private final getEmptyView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    sget v0, Lcom/transsion/subtitle/R$string;->subtitle_no_subtitles_found:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->z0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic k0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->A0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->M0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    return-void
.end method

.method private final loadData()V
    .locals 10

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->X0()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->e:Lcom/transsion/subtitle/fragment/i;

    iget-object v3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v6, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->c:Ljava/lang/String;

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->u(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/subtitle/fragment/i;Ljava/lang/String;Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadMore()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->e:Lcom/transsion/subtitle/fragment/i;

    iget-object v2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->g:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v5, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->c:Ljava/lang/String;

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->u(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/subtitle/fragment/i;Ljava/lang/String;Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->N0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->G0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->L0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Leu/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->J0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Leu/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->B0(Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle/bean/SubtitleSearchListBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->I0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle/bean/SubtitleSearchListBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->H0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private final showEmpty()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ORSubtitle_search"

    const-string v3, "showEmpty~"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->W0(Z)V

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->getEmptyView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static synthetic t0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->O0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public static final synthetic u0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->K0()V

    return-void
.end method

.method public static final synthetic v0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->S0(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Ljava/lang/String;)V

    return-void
.end method

.method private final w0()V
    .locals 2

    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/subtitle/h;->b(Lcom/transsion/subtitle_download/a;)V

    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/subtitle/h;->d(Lhu/c;)V

    return-void
.end method

.method private final x0(Leu/a;)V
    .locals 9

    invoke-virtual {p1}, Leu/a;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    sget-object v2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u641c\u7d22\u4e0b\u8f7d\u5b57\u5e55\uff0c\u662fopensubtitle \u65b0api\uff0c\u9700\u8981\u5148\u8bf7\u6c42\u624d\u80fd\u4e0b\u8f7d"

    invoke-virtual {v0, v2, v3, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->k(Leu/a;)V

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->p:Z

    sget-object v0, Llg/a;->a:Llg/a$a;

    sget-object v2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result v4

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u641c\u7d22\u4e0b\u8f7d\u5b57\u5e55\uff0cname = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subtype = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", download subtitleName = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subResourceId = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "~"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setSetImmediately(Z)V

    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/subtitle/h;->j(Leu/a;)V

    return-void
.end method

.method private final y0(Landroid/content/Context;Ljava/lang/String;Z)Landroid/view/View;
    .locals 5

    new-instance v0, Lcom/tn/lib/view/DefaultView;

    sget-object v1, Lcom/tn/lib/view/DefaultView$ModelStyle;->MODEL_STYLE_NIGHT:Lcom/tn/lib/view/DefaultView$ModelStyle;

    invoke-direct {v0, p1, v1}, Lcom/tn/lib/view/DefaultView;-><init>(Landroid/content/Context;Lcom/tn/lib/view/DefaultView$ModelStyle;)V

    sget-object v1, Lcom/tn/lib/view/DefaultView$DefaultViewStyle;->STYLE_DES_BTN:Lcom/tn/lib/view/DefaultView$DefaultViewStyle;

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setStyle(Lcom/tn/lib/view/DefaultView$DefaultViewStyle;)V

    invoke-virtual {v0, p2}, Lcom/tn/lib/view/DefaultView;->setDescText(Ljava/lang/CharSequence;)V

    sget-object p2, Lcom/tn/lib/view/DefaultView$DefaultViewStyle;->STYLE_NO_IMAGE:Lcom/tn/lib/view/DefaultView$DefaultViewStyle;

    invoke-virtual {v0, p2}, Lcom/tn/lib/view/DefaultView;->setStyle(Lcom/tn/lib/view/DefaultView$DefaultViewStyle;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/tn/lib/view/DefaultView;->setBtnVisibility(I)V

    sget v1, Lcom/transsion/baseui/R$string;->retry_text:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setBtnText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setTipOperationVisibility(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/transsion/subtitle/R$drawable;->post_detail_shape_subtitle_empty_btn_bg:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tn/lib/view/DefaultView;->setBtnBg(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/tn/lib/view/DefaultView;->setBtnTextColor(I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Lcom/transsion/subtitle/fragment/p;

    invoke-direct {v4, p0, v0}, Lcom/transsion/subtitle/fragment/p;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/tn/lib/view/DefaultView;)V

    invoke-virtual {v0, v4}, Lcom/tn/lib/view/DefaultView;->setBtnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    invoke-virtual {v0, p3}, Lcom/tn/lib/view/DefaultView;->setLeftBtnVisibility(I)V

    sget p3, Lcom/tn/lib/widget/R$string;->go_to_setting:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tn/lib/view/DefaultView;->setLeftBtnText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget p3, Lcom/transsion/subtitle/R$drawable;->post_detail_shape_subtitle_empty_btn_bg:I

    invoke-static {p1, p3}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tn/lib/view/DefaultView;->setLeftBtnBg(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Lcom/tn/lib/view/DefaultView;->setLeftBtnTextColor(I)V

    new-instance p1, Lcom/transsion/subtitle/fragment/q;

    invoke-direct {p1, v0}, Lcom/transsion/subtitle/fragment/q;-><init>(Lcom/tn/lib/view/DefaultView;)V

    invoke-virtual {v0, p1}, Lcom/tn/lib/view/DefaultView;->setLeftBtnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setTitleViewVisibility(I)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    const/high16 p3, 0x41f00000    # 30.0f

    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    invoke-virtual {v0, p1, p3, p1, p2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method static synthetic z0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Landroid/view/View;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->y0(Landroid/content/Context;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public E0(Landroid/view/LayoutInflater;)Lfu/b;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfu/b;->c(Landroid/view/LayoutInflater;)Lfu/b;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public J(ZLcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lhu/c$a;->a(Lhu/c;ZLcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public final Q0(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->i:Ljava/lang/String;

    new-instance v0, Lcom/transsion/subtitle/fragment/i;

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v2

    :cond_2
    invoke-direct {v0, p1, v1, v2}, Lcom/transsion/subtitle/fragment/i;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->e:Lcom/transsion/subtitle/fragment/i;

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->P0()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final T0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->o:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final U0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->n:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public g(Leu/a;)V
    .locals 10

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {v2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subtitleSelected, resourceId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", name = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "ORSubtitle_search"

    const/4 v7, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Leu/a;->l(Z)V

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :cond_2
    :goto_1
    const-string v5, "ORSubtitle_search"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subtitleSelected2, index = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->E0(Landroid/view/LayoutInflater;)Lfu/b;

    move-result-object p1

    return-object p1
.end method

.method public initListener()V
    .locals 0

    return-void
.end method

.method public initViewData()V
    .locals 4

    new-instance v0, Lcom/transsion/subtitle/adapter/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/transsion/subtitle/adapter/c;-><init>(ZLjava/util/List;)V

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    new-instance v3, Lcom/transsion/subtitle/view/SubtitleDialogLoadMoreView;

    invoke-direct {v3}, Lcom/transsion/subtitle/view/SubtitleDialogLoadMoreView;-><init>()V

    invoke-virtual {v1, v3}, Lr6/f;->C(Lq6/a;)V

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lr6/f;->z(Z)V

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lr6/f;->y(Z)V

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lr6/f;->E(I)V

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    new-instance v2, Lcom/transsion/subtitle/fragment/l;

    invoke-direct {v2, p0}, Lcom/transsion/subtitle/fragment/l;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    invoke-virtual {v1, v2}, Lr6/f;->D(Lp6/f;)V

    new-instance v1, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$c;

    invoke-direct {v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    new-instance v1, Lcom/transsion/subtitle/fragment/m;

    invoke-direct {v1, p0}, Lcom/transsion/subtitle/fragment/m;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfu/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->b:Lcom/transsion/subtitle/adapter/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_0
    return-void
.end method

.method public initViewData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->initViewData(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfu/b;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfu/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$b;

    invoke-direct {p2, p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$b;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    return-void
.end method

.method public initViewModel()V
    .locals 5

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->g(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    new-instance v0, Lcom/transsion/subtitle/fragment/i;

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->i:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->c:Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;

    invoke-virtual {v1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;->a()Lcom/transsion/subtitle/helper/SubtitleSearchHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->e(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iget-object v4, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v3

    :cond_4
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/subtitle/fragment/i;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->e:Lcom/transsion/subtitle/fragment/i;

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->o()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/transsion/subtitle/fragment/j;

    invoke-direct {v1, p0}, Lcom/transsion/subtitle/fragment/j;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    new-instance v2, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$d;

    invoke-direct {v2, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/transsion/subtitle/fragment/k;

    invoke-direct {v1, p0}, Lcom/transsion/subtitle/fragment/k;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    new-instance v2, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$d;

    invoke-direct {v2, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_6
    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lazyLoadData()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->w0()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->W0(Z)V

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->loadData()V

    return-void
.end method

.method public loadDefaultData()V
    .locals 0

    return-void
.end method

.method public onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 2

    const-string v0, "dbBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->p:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/subtitle/fragment/r;

    invoke-direct {v1, p0, p1}, Lcom/transsion/subtitle/fragment/r;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/subtitle/h;->c(Lcom/transsion/subtitle_download/a;)V

    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/subtitle/h;->f(Lhu/c;)V

    return-void
.end method

.method public onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    const-string p1, "dbBean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dbBean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->p:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/subtitle/fragment/s;

    invoke-direct {v0, p0, p2}, Lcom/transsion/subtitle/fragment/s;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->a(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->b(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "KEY_PAGE_NAME"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public retryLoadData()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->W0(Z)V

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->loadData()V

    return-void
.end method
