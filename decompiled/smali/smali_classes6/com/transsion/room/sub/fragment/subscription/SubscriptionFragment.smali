.class public final Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;

# interfaces
.implements Lcom/transsion/room/sub/adapter/subscription/a;
.implements Ldz/a;
.implements Lcom/transsion/baselib/report/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;,
        Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lbq/t;",
        ">;",
        "Lcom/transsion/room/sub/adapter/subscription/a;",
        "Ldz/a;",
        "Lcom/transsion/baselib/report/g;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 \u009d\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0003=\u009e\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\u000f\u0010\r\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0007J\u000f\u0010\u000e\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0007J\u000f\u0010\u000f\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0007J\u000f\u0010\u0010\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0007J\u000f\u0010\u0011\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0007J\u001d\u0010\u0015\u001a\u00020\u000b2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u000b2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0016J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008 \u0010\u0007J\u0019\u0010#\u001a\u00020\u000b2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J!\u0010(\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010\u00182\u0006\u0010\'\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008*\u0010\u0007J\u000f\u0010+\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008+\u0010\u0007J\u0017\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020!H\u0016\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00082\u0010\u0007J\u000f\u00103\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00083\u0010\u0007J\u000f\u00104\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00084\u0010\u0007J\u000f\u00105\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00085\u0010\u0007J\u000f\u00106\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00086\u0010\u0007J\u001f\u00109\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u00082\u0006\u00108\u001a\u00020!H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u0019\u0010;\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010=\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008=\u0010<J#\u0010?\u001a\u00020\u000b2\u0008\u00108\u001a\u0004\u0018\u00010!2\u0008\u0010>\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008?\u0010@J\u0019\u0010A\u001a\u00020\u000b2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008A\u0010$J\u0019\u0010B\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008B\u0010<J\u0017\u0010E\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010G\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008G\u0010\u0007J\u0017\u0010H\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016\u00a2\u0006\u0004\u0008H\u0010FJ\u000f\u0010I\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008I\u0010\u0007J\u0017\u0010K\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u000f\u0010M\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008M\u0010\u0007J\u000f\u0010N\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008N\u0010\u0007J\u000f\u0010P\u001a\u00020OH\u0016\u00a2\u0006\u0004\u0008P\u0010QJ\u000f\u0010R\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008R\u0010\u0007J\u000f\u0010S\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008S\u0010\u0007R\u0018\u0010U\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010TR\u0018\u0010V\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010TR\u0018\u0010Y\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0018\u0010[\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010XR\u0018\u0010]\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010XR\u0016\u0010a\u001a\u00020^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010`R\u0016\u0010d\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0016\u0010f\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010cR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0018\u0010l\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010iR\u0018\u0010o\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0018\u0010r\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0016\u0010t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010cR\u0016\u0010v\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010cR\u0016\u0010z\u001a\u00020w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0018\u0010~\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u001b\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008;\u0010\u0084\u0001R\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00089\u0010\u008f\u0001R#\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0091\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\u0018\u0010\u0098\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0097\u0001\u0010cR\u0018\u0010\u009a\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0099\u0001\u0010TR\u0018\u0010\u009c\u0001\u001a\u00020^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009b\u0001\u0010`\u00a8\u0006\u009f\u0001"
    }
    d2 = {
        "Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lbq/t;",
        "Lcom/transsion/room/sub/adapter/subscription/a;",
        "Ldz/a;",
        "Lcom/transsion/baselib/report/g;",
        "<init>",
        "()V",
        "",
        "S0",
        "()Z",
        "",
        "K0",
        "E0",
        "Q0",
        "V0",
        "L0",
        "T0",
        "",
        "Lcom/transsion/room/sub/bean/subscription/ItemTrending;",
        "feedItems",
        "a1",
        "(Ljava/util/List;)V",
        "",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "Z0",
        "Lcom/transsion/room/sub/adapter/subscription/k;",
        "N0",
        "()Lcom/transsion/room/sub/adapter/subscription/k;",
        "Lcom/transsion/room/sub/adapter/subscription/c;",
        "F0",
        "()Lcom/transsion/room/sub/adapter/subscription/c;",
        "I0",
        "",
        "userId",
        "z0",
        "(Ljava/lang/String;)V",
        "item",
        "",
        "bottomFragmentIndex",
        "C0",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V",
        "Y0",
        "y0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "B0",
        "(Landroid/view/LayoutInflater;)Lbq/t;",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "loadDefaultData",
        "initViewData",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "isLike",
        "ugcVideoId",
        "u",
        "(ZLjava/lang/String;)V",
        "r",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V",
        "a",
        "title",
        "H",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "b",
        "D",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "user",
        "onLogin",
        "(Lcom/transsnet/loginapi/bean/UserInfo;)V",
        "onLogout",
        "onUpdateUserInfo",
        "onPause",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "onResume",
        "onDestroy",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "logResume",
        "logPause",
        "Ljava/lang/String;",
        "cursorFeed",
        "pageNext",
        "c",
        "Ljava/lang/Boolean;",
        "isFirstFeedDataRequest",
        "d",
        "hasMoreFeedData",
        "e",
        "hasMoreUgcHomeData",
        "",
        "f",
        "J",
        "firstLoadStartTimeMillis",
        "g",
        "Z",
        "hasFollowings",
        "h",
        "isLoginRefresh",
        "Lsj/b;",
        "i",
        "Lsj/b;",
        "mExposureHelper",
        "j",
        "mExposureRecommendHelper",
        "k",
        "Lcom/transsion/room/sub/adapter/subscription/c;",
        "sFeedAdapter",
        "l",
        "Lcom/transsion/room/sub/adapter/subscription/k;",
        "sFeedTrendingAdapter",
        "m",
        "isLoading",
        "n",
        "isUgcTrendingHomeLoading",
        "Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;",
        "o",
        "Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;",
        "mCurrentTab",
        "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;",
        "p",
        "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;",
        "viewModel",
        "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;",
        "q",
        "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;",
        "feedListViewModel",
        "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;",
        "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;",
        "ugcLikesViewModel",
        "Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;",
        "s",
        "Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;",
        "ugcHomeViewModel",
        "Lcom/transsion/room/sub/viewmodel/subscription/a;",
        "t",
        "Lcom/transsion/room/sub/viewmodel/subscription/a;",
        "subUnsubViewModel",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "shareDialog",
        "Lcom/transsnet/loginapi/ILoginApi;",
        "v",
        "Lkotlin/Lazy;",
        "getLoginApi",
        "()Lcom/transsnet/loginapi/ILoginApi;",
        "loginApi",
        "w",
        "isSelf",
        "x",
        "pageFrom",
        "y",
        "resumeTimeStamp",
        "z",
        "TabType",
        "Room_psRelease"
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
.field public static final z:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Lsj/b;

.field private j:Lsj/b;

.field private k:Lcom/transsion/room/sub/adapter/subscription/c;

.field private l:Lcom/transsion/room/sub/adapter/subscription/k;

.field private m:Z

.field private n:Z

.field private o:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;

.field private p:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

.field private q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

.field private r:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

.field private s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

.field private t:Lcom/transsion/room/sub/viewmodel/subscription/a;

.field private u:Lcom/transsion/share/share/ShareDialogFragment;

.field private final v:Lkotlin/Lazy;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->z:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->c:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->e:Ljava/lang/Boolean;

    sget-object v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;->HOTTEST:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->o:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;

    new-instance v0, Liq/a;

    invoke-direct {v0}, Liq/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->v:Lkotlin/Lazy;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->x:Ljava/lang/String;

    return-void
.end method

.method private static final A0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;)Lkotlin/Unit;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object v1, Lnh/m;->a:Lnh/m;

    invoke-virtual {v1}, Lnh/m;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showNoNetworkView(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->getFollowingCount()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sget-object v7, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "followingCount \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "\u6709\u8ba2\u9605\uff0c\u8d70\u8ba2\u9605\u63a5\u53e3"

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    iget-boolean p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->h:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->i()V

    goto :goto_2

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->c:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->T0()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lbq/t;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lbq/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "\u65e0\u8ba2\u9605\uff0c\u8d70\u63a8\u8350\u63a5\u53e3"

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    iget-boolean p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->h:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->i()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->V0()V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lbq/t;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lbq/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_6
    :goto_2
    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->h:Z

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final C0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Liq/j;

    invoke-direct {v0, p2}, Liq/j;-><init>(I)V

    invoke-static {p1, v0}, Lpv/b;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method private static final D0(ILcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 1

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ugc_bottom_fragment_selected"

    invoke-virtual {p1, v0, p0}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p0

    return-object p0
.end method

.method private final E0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->i:Lsj/b;

    if-nez v0, :cond_1

    new-instance v0, Lsj/b;

    new-instance v3, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$b;

    invoke-direct {v3, p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$b;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const v2, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lsj/b;-><init>(FLsj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lbq/t;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lbq/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->i:Lsj/b;

    :cond_1
    return-void
.end method

.method private final F0()Lcom/transsion/room/sub/adapter/subscription/c;
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "initFeedAdapter"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lcom/transsion/room/sub/adapter/subscription/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->i:Lsj/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/room/sub/adapter/subscription/c;-><init>(Ljava/util/List;Lsj/b;Z)V

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    const/4 v2, 0x1

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

    new-instance v2, Lcom/transsion/room/sub/view/SubscriptionLoadMoreView;

    invoke-direct {v2}, Lcom/transsion/room/sub/view/SubscriptionLoadMoreView;-><init>()V

    invoke-virtual {v1, v2}, Lr6/f;->C(Lq6/a;)V

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    new-instance v2, Liq/i;

    invoke-direct {v2, p0}, Liq/i;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    invoke-virtual {v1, v2}, Lr6/f;->D(Lp6/f;)V

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    invoke-virtual {v0, p0}, Lcom/transsion/room/sub/adapter/subscription/c;->Q1(Lcom/transsion/room/sub/adapter/subscription/a;)V

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    return-object v0
.end method

.method private static final G0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 7

    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "initSubscriptionListAdapter: trigger"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "initSubscriptionListAdapter: trigger load more"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sub observe cursorFeed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "initSubscriptionListAdapter: no network, load more failed"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/t;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lbq/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v1, Liq/b;

    invoke-direct {v1, p0}, Liq/b;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static final H0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr6/f;->v()V

    :cond_0
    return-void
.end method

.method private final I0()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "Subscription"

    const-string v2, "initFeedListRecyclerView"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/t;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbq/t;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    new-instance v2, Liq/e;

    invoke-direct {v2, p0}, Liq/e;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->E0()V

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->K0()V

    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->i:Lsj/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lsj/b;->f()V

    :cond_1
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->j:Lsj/b;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lsj/b;->f()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lbq/t;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lbq/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->F0()Lcom/transsion/room/sub/adapter/subscription/c;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->N0()Lcom/transsion/room/sub/adapter/subscription/k;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    return-void
.end method

.method private static final J0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 7

    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "initRecyclerView: user pull to refresh"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "initRecyclerView: user pull to refresh \u5173\u6ce8"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->i()V

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "initRecyclerView: user pull to refresh \u6ca1\u6709\u5173\u6ce8"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->Y0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final K0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->j:Lsj/b;

    if-nez v0, :cond_1

    new-instance v0, Lsj/b;

    new-instance v3, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$c;

    invoke-direct {v3, p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$c;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const v2, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lsj/b;-><init>(FLsj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lbq/t;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lbq/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->j:Lsj/b;

    :cond_1
    return-void
.end method

.method private final L0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->e()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Liq/f;

    invoke-direct {v1, p0}, Liq/f;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    new-instance v2, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;

    invoke-direct {v2, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    return-void
.end method

.method private static final M0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;)Lkotlin/Unit;
    .locals 14

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->y0()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "sub observe start"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getHasMore()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getNextCursor()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v7

    :goto_1
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, v7

    :goto_2
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasMoreFeedData "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    const/4 v10, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lr6/f;->r()Z

    move-result v0

    if-ne v0, v10, :cond_3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "sub observe loadMoreComplete"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lr6/f;->s()V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v7

    :goto_3
    const/4 v11, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v12, v0

    goto :goto_4

    :cond_5
    move-object v12, v7

    :goto_4
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_6
    move-object v0, v7

    :goto_5
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getHasMore()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscriptionFeedBean: received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " items, currentListSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hasMore="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "subscriptionFeedBean: no more data, load more end"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v1, "SubscriptionFragment"

    const-string v2, "sub observe loadMoreEnd"

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0, v11, v10, v7}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-ne v0, v10, :cond_9

    if-nez v12, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "subscriptionFeedBean: empty data"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_7

    :cond_9
    :goto_6
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_b

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/t;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lbq/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_a
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "sub observe updateData"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->Z0(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v10}, Lhj/b;->k(Z)V

    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_8
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    move-result-object v7

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_11

    :cond_e
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->c:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "sub observe loadUgcTrendingHomeData"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v1, "SubscriptionFragment"

    const-string v2, "\u53d1\u9001\u63a8\u8350\u63a5\u53e3\u7684\u8bf7\u6c42"

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-boolean v11, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->V0()V

    iput-object v7, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->c:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lbq/t;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lbq/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_a

    :cond_f
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->c:Ljava/lang/Boolean;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "sub observe UgcTrending refresh"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-boolean v11, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->i()V

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lbq/t;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lbq/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_a

    :cond_11
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "\u8ba2\u9605\u8bf7\u6c42\u6709\u6570\u636e\uff0c\u4e0d\u53d1\u9001\u63a8\u8350\u63a5\u53e3\u7684\u8bf7\u6c42"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_a

    :cond_12
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "loadMoreModule"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    move-result-object v0

    goto :goto_9

    :cond_13
    move-object v0, v7

    :goto_9
    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_a

    :cond_14
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "loadMoreModule"

    const-string v2, "subscriptionFeedBean: no more data, load more end"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-static {p1, v11, v10, v7}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_15
    :goto_a
    iput-boolean v11, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->m:Z

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lbq/t;

    if-eqz p0, :cond_16

    iget-object p0, p0, Lbq/t;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p0, :cond_16

    invoke-virtual {p0, v11}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final N0()Lcom/transsion/room/sub/adapter/subscription/k;
    .locals 4

    new-instance v0, Lcom/transsion/room/sub/adapter/subscription/k;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->j:Lsj/b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/room/sub/adapter/subscription/k;-><init>(Ljava/util/List;Lsj/b;Z)V

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    const/4 v2, 0x1

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

    new-instance v2, Lcom/transsion/room/sub/view/SubscriptionLoadMoreView;

    invoke-direct {v2}, Lcom/transsion/room/sub/view/SubscriptionLoadMoreView;-><init>()V

    invoke-virtual {v1, v2}, Lr6/f;->C(Lq6/a;)V

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    new-instance v2, Liq/h;

    invoke-direct {v2, p0}, Liq/h;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    invoke-virtual {v1, v2}, Lr6/f;->D(Lp6/f;)V

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    invoke-virtual {v0, p0}, Lcom/transsion/room/sub/adapter/subscription/k;->Q1(Lcom/transsion/room/sub/adapter/subscription/a;)V

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    return-object v0
.end method

.method private static final O0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 7

    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "initSubscriptionListAdapter: trigger "

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "initSubscriptionListAdapter: trigger load more"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->h(Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "initSubscriptionListAdapter: no network, load more failed"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/t;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lbq/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    new-instance v1, Liq/c;

    invoke-direct {v1, p0}, Liq/c;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private static final P0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr6/f;->v()V

    :cond_0
    return-void
.end method

.method private final Q0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->f()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Liq/g;

    invoke-direct {v1, p0}, Liq/g;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    new-instance v2, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;

    invoke-direct {v2, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    return-void
.end method

.method private static final R0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;)Lkotlin/Unit;
    .locals 11

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->y0()V

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->g()Z

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "recommend observe loadUgcTrendingHomeData"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getPager()Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/room/sub/bean/subscription/PagerTrending;->getHasMore()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v7

    :goto_0
    iput-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->e:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getPager()Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/room/sub/bean/subscription/PagerTrending;->getNextPage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v7

    :goto_1
    iput-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->b:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    :cond_3
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pageNext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->e:Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasMoreUgcHomeData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SubscriptionFragment"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    const/4 v8, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lr6/f;->r()Z

    move-result v1

    if-ne v1, v8, :cond_5

    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lr6/f;->s()V

    :cond_4
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "recommend observe loadMoreComplete"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getItems()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v9, v1

    goto :goto_3

    :cond_7
    move-object v9, v7

    :goto_3
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object v1, v7

    :goto_4
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getPager()Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/PagerTrending;->getHasMore()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ugcTrendingHomeData: received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " items, currentListSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasMore="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->e:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_a

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "ugcTrendingHomeData: no more data, load more end"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {v1, v10, v8, v7}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_9
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "recommend observe loadMoreEnd"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_a
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-ne v1, v8, :cond_c

    if-nez v9, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_c

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "subscriptionFeedBean: empty data"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v2, "SubscriptionFragment"

    const-string v3, "recommend observe setEmptyView"

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    if-eqz p1, :cond_e

    invoke-virtual {p0, v10}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    goto :goto_6

    :cond_c
    :goto_5
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lr6/f;->s()V

    :cond_d
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "recommend observe loadMoreComplete"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->a1(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1, v8}, Lhj/b;->k(Z)V

    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lbq/t;

    if-eqz p0, :cond_f

    iget-object p0, p0, Lbq/t;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v10}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_f
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final S0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->w:Z

    return v0
.end method

.method private final T0()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "Subscription"

    const-string v2, "loadFeedData"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->m:Z

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->f(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/t;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbq/t;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Liq/l;

    invoke-direct {v1, p0}, Liq/l;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private static final U0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lbq/t;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lbq/t;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method private final V0()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "loadUgcTrendingHomeData"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->n:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->o:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;

    invoke-virtual {v2}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;->getApiValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->e(Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/t;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbq/t;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Liq/k;

    invoke-direct {v1, p0}, Liq/k;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private static final W0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lbq/t;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lbq/t;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method private static final X0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final Y0()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->h:Z

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->p:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final Z0(Ljava/util/List;)V
    .locals 11

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v4, " -> "

    if-nez v2, :cond_6

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    if-eqz v2, :cond_3

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    :cond_3
    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_4
    sget-object v5, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData: load more, add "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " items, list size: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "SubscriptionFragment"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    if-eqz v1, :cond_7

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_7
    sget-object v5, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateData: refresh or first load, replace data. size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "SubscriptionFragment"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private final a1(Ljava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->g()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v5, " -> "

    if-nez v3, :cond_5

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    if-eqz v3, :cond_3

    move-object/from16 v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    :cond_3
    iget-object v3, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :cond_4
    sget-object v6, Llg/a;->a:Llg/a$a;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateData: load more, add "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " items, list size: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "SubscriptionFragment"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_4

    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    if-nez v2, :cond_6

    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "SubscriptionFragment"

    const-string v8, "FeedTrendingAdapter ==null"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    sget-object v12, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FeedTrendingAdapter =="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "SubscriptionFragment"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_3
    iget-object v2, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    if-eqz v2, :cond_7

    move-object/from16 v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_7
    sget-object v6, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData: refresh or first load, replace data. size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "SubscriptionFragment"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_4
    return-void
.end method

.method private final getLoginApi()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->v:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method public static synthetic j0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->A0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->X0()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->P0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->H0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    return-void
.end method

.method public static synthetic n0(ILcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->D0(ILcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->O0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->J0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->W0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->R0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->G0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->U0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->M0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    return p0
.end method

.method public static final synthetic w0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)Lcom/transsion/room/sub/adapter/subscription/c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    return-object p0
.end method

.method public static final synthetic x0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)Lcom/transsion/room/sub/adapter/subscription/k;
    .locals 0

    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    return-object p0
.end method

.method private final y0()V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->f:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "load_duration"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final z0(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showLoadingView()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "checkHasFollowings\u9636\u6bb5"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->p:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;->d()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Liq/d;

    invoke-direct {v1, p0}, Liq/d;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    new-instance v2, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;

    invoke-direct {v2, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->p:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public B0(Landroid/view/LayoutInflater;)Lbq/t;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->p:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->r:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/transsion/room/sub/viewmodel/subscription/a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/sub/viewmodel/subscription/a;

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->t:Lcom/transsion/room/sub/viewmodel/subscription/a;

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class p1, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    iput-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lbq/t;->c(Landroid/view/LayoutInflater;)Lbq/t;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public D(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "onClickVideoTrendingDetailItem"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lpv/b;->b(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "share"

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "SubscriptionFragment"

    const-string v4, "onClickShareItem"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v2, v1, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->u:Lcom/transsion/share/share/ShareDialogFragment;

    const/4 v3, 0x0

    if-nez v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    sget-object v5, Lcom/transsion/share/bean/PostType;->UGC_VIDEO:Lcom/transsion/share/bean/PostType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v3

    :goto_1
    sget-object v2, Lcom/transsion/usercenterapi/ReportType;->UFC_VIDEO:Lcom/transsion/usercenterapi/ReportType;

    invoke-virtual {v2}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x800

    const/16 v18, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "UGCVideoDetail"

    const/16 v16, 0x0

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    move-object/from16 v15, p2

    invoke-static/range {v4 .. v18}, Lcom/transsion/share/share/ShareDialogFragment$a;->b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->u:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v2, :cond_2

    new-instance v4, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$d;

    invoke-direct {v4}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$d;-><init>()V

    invoke-virtual {v2, v4}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    iget-object v5, v1, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->u:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-ne v5, v4, :cond_3

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_4

    :goto_2
    return-void

    :cond_4
    iget-object v4, v1, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->u:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    iput-object v3, v1, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->u:Lcom/transsion/share/share/ShareDialogFragment;

    return-void
.end method

.method public a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lpv/b;->b(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId111 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v0, "/profile/user_profile"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->B0(Landroid/view/LayoutInflater;)Lbq/t;

    move-result-object p1

    return-object p1
.end method

.method public initListener()V
    .locals 0

    return-void
.end method

.method public initViewData()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->f:J

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->w:Z

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->S0()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "isSelf : true"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, p0}, Lcom/transsnet/loginapi/ILoginApi;->g(Ldz/a;)V

    goto :goto_5

    :cond_7
    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "isSelf : false"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_8
    :goto_5
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->I0()V

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->x:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lhj/i;->a:Lhj/i;

    invoke-virtual {v0}, Lhj/i;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->x:Ljava/lang/String;

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "page_from"

    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public initViewModel()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->L0()V

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->Q0()V

    return-void
.end method

.method public loadDefaultData()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "loadDefaultData\u9636\u6bb5"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->z0(Ljava/lang/String;)V

    return-void
.end method

.method public logPause()V
    .locals 8

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logPause()V

    iget-wide v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->y:J

    sub-long/2addr v0, v2

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscription fb log duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "Report"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "Subscription"

    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/baselib/report/e;->n(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public logResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->y:J

    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "/subscription/subscription"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsnet/loginapi/ILoginApi;->p(Ldz/a;)V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->logPause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->logResume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 7

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ldz/a$a;->a(Ldz/a;Lcom/transsnet/loginapi/bean/UserInfo;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "onLogin\u9636\u6bb5"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->Y0()V

    return-void
.end method

.method public onLogout()V
    .locals 6

    invoke-static {p0}, Ldz/a$a;->b(Ldz/a;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "onLogout\u9636\u6bb5"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->Y0()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 7

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "onUpdateUserInfo\u9636\u6bb5"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public r(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "onClickCommentReply"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->C0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    return-void
.end method

.method public retryLoadData()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SubscriptionFragment"

    const-string v2, "retryLoadData\u9636\u6bb5"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->z0(Ljava/lang/String;)V

    return-void
.end method

.method public u(ZLjava/lang/String;)V
    .locals 7

    const-string v0, "ugcVideoId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SubscriptionFragment"

    const-string v3, "onClickCommentLike"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->r:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p1}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->j(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
