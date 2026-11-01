.class public abstract Lcom/transsion/ad/bidding/base/AbsBiddingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;

# interfaces
.implements Lcom/transsion/ad/strategy/r$a;
.implements Loi/b;
.implements Lcom/transsion/player/orplayer/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/base/AbsBiddingActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 \u00ad\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001uB\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0011\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u000f\u0010\u000c\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0006J\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0006J\u000f\u0010\u000e\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0006J\u000f\u0010\u0014\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0006J\u000f\u0010\u0015\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0006J\u000f\u0010\u0016\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0006J\u000f\u0010\u0017\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0006J\u0019\u0010\u001a\u001a\u00020\n2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u0006J\u0017\u0010 \u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0011\u0010#\u001a\u0004\u0018\u00010\"H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\r\u0010(\u001a\u00020\n\u00a2\u0006\u0004\u0008(\u0010\u0006J\r\u0010)\u001a\u00020\n\u00a2\u0006\u0004\u0008)\u0010\u0006J!\u0010.\u001a\u00020\n2\u0006\u0010+\u001a\u00020*2\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00100\u001a\u00020\n2\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00082\u0010\u0006J\u0019\u00103\u001a\u00020\n2\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016\u00a2\u0006\u0004\u00083\u00101J\u0019\u00104\u001a\u00020\n2\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016\u00a2\u0006\u0004\u00084\u00101J\u0019\u00105\u001a\u00020\n2\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016\u00a2\u0006\u0004\u00085\u00101J\u000f\u00107\u001a\u000206H\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u0010:\u001a\u000209H&\u00a2\u0006\u0004\u0008:\u0010;J\u0011\u0010<\u001a\u0004\u0018\u00010\"H&\u00a2\u0006\u0004\u0008<\u0010$J\u000f\u0010=\u001a\u00020\nH&\u00a2\u0006\u0004\u0008=\u0010\u0006J\u0011\u0010?\u001a\u0004\u0018\u00010>H&\u00a2\u0006\u0004\u0008?\u0010@J\u0011\u0010A\u001a\u0004\u0018\u00010>H&\u00a2\u0006\u0004\u0008A\u0010@J\u0017\u0010C\u001a\u00020\n2\u0006\u0010B\u001a\u000209H&\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010E\u001a\u00020\nH&\u00a2\u0006\u0004\u0008E\u0010\u0006J\u0011\u0010F\u001a\u0004\u0018\u00010\"H&\u00a2\u0006\u0004\u0008F\u0010$J\u0011\u0010G\u001a\u0004\u0018\u00010\"H&\u00a2\u0006\u0004\u0008G\u0010$J\u0011\u0010H\u001a\u0004\u0018\u00010\"H&\u00a2\u0006\u0004\u0008H\u0010$J\u000f\u0010I\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008I\u0010;J-\u0010N\u001a\u00020\n2\u0008\u0010K\u001a\u0004\u0018\u00010J2\u0008\u0010L\u001a\u0004\u0018\u0001092\u0008\u0010M\u001a\u0004\u0018\u000109H\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u000f\u0010P\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008P\u0010\u0012J\u000f\u0010Q\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008Q\u0010\u0012J\u000f\u0010R\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008R\u0010\u0006J\u0017\u0010U\u001a\u00020\n2\u0006\u0010T\u001a\u00020SH\u0016\u00a2\u0006\u0004\u0008U\u0010VJ\u0011\u0010W\u001a\u0004\u0018\u00010\"H\u0014\u00a2\u0006\u0004\u0008W\u0010$J\u0017\u0010Y\u001a\u00020\n2\u0006\u0010X\u001a\u00020\"H\u0004\u00a2\u0006\u0004\u0008Y\u0010ZJ\u000f\u0010\\\u001a\u00020[H\u0016\u00a2\u0006\u0004\u0008\\\u0010]J\u000f\u0010_\u001a\u00020^H\u0016\u00a2\u0006\u0004\u0008_\u0010`J\r\u0010a\u001a\u00020\n\u00a2\u0006\u0004\u0008a\u0010\u0006J\r\u0010b\u001a\u00020\n\u00a2\u0006\u0004\u0008b\u0010\u0006J\u000f\u0010c\u001a\u00020\nH\u0017\u00a2\u0006\u0004\u0008c\u0010\u0006J\u0015\u0010e\u001a\u00020\n2\u0006\u0010d\u001a\u00020\u0010\u00a2\u0006\u0004\u0008e\u0010\'J\r\u0010f\u001a\u000209\u00a2\u0006\u0004\u0008f\u0010;J\r\u0010g\u001a\u000209\u00a2\u0006\u0004\u0008g\u0010;J\u000f\u0010i\u001a\u0004\u0018\u00010h\u00a2\u0006\u0004\u0008i\u0010jJ\u000f\u0010l\u001a\u0004\u0018\u00010k\u00a2\u0006\u0004\u0008l\u0010mJ\r\u0010n\u001a\u00020\n\u00a2\u0006\u0004\u0008n\u0010\u0006J\r\u0010o\u001a\u00020\n\u00a2\u0006\u0004\u0008o\u0010\u0006J\r\u0010p\u001a\u00020\n\u00a2\u0006\u0004\u0008p\u0010\u0006J\r\u0010q\u001a\u00020\n\u00a2\u0006\u0004\u0008q\u0010\u0006J\u0017\u0010s\u001a\u00020\n2\u0008\u0010r\u001a\u0004\u0018\u000106\u00a2\u0006\u0004\u0008s\u0010tR\u0018\u0010w\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR$\u0010\u007f\u001a\u0004\u0018\u00010x8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0019\u0010\u0085\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u001b\u0010\u0088\u0001\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u001a\u0010\u008c\u0001\u001a\u00030\u0089\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001R\u001a\u0010\u0090\u0001\u001a\u00030\u008d\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001R*\u0010\u0096\u0001\u001a\u00030\u008d\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0091\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001\"\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\u0017\u0010\u0097\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010qR\u0018\u0010\u009b\u0001\u001a\u00030\u0098\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u0019\u0010\u009d\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u0084\u0001R\u001b\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u0018\u0010\u00a2\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a1\u0001\u0010qR\u001a\u0010\u00a6\u0001\u001a\u00030\u00a3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u001a\u0010\u00a8\u0001\u001a\u00030\u00a3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u00a5\u0001R\u0018\u0010\u00ac\u0001\u001a\u00030\u00a9\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001\u00a8\u0006\u00ae\u0001"
    }
    d2 = {
        "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/transsion/ad/strategy/r$a;",
        "Loi/b;",
        "Lcom/transsion/player/orplayer/f;",
        "<init>",
        "()V",
        "Lcom/transsion/player/orplayer/g;",
        "s0",
        "()Lcom/transsion/player/orplayer/g;",
        "",
        "K0",
        "X",
        "x0",
        "A0",
        "Q0",
        "",
        "L0",
        "()Z",
        "S0",
        "P0",
        "G0",
        "U0",
        "F0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "onDestroy",
        "Landroid/view/MotionEvent;",
        "ev",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Landroid/view/View;",
        "getVisibilityView",
        "()Landroid/view/View;",
        "isVisible",
        "onVisibilityChanged",
        "(Z)V",
        "I0",
        "J0",
        "Lcom/transsion/player/orplayer/PlayError;",
        "errorInfo",
        "Lao/e;",
        "mediaSource",
        "onPlayError",
        "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V",
        "onPrepare",
        "(Lao/e;)V",
        "onRenderFirstFrame",
        "onVideoPause",
        "onVideoStart",
        "onCompletion",
        "",
        "getSceneId",
        "()Ljava/lang/String;",
        "",
        "h0",
        "()I",
        "u0",
        "O0",
        "Landroid/widget/FrameLayout;",
        "o0",
        "()Landroid/widget/FrameLayout;",
        "w0",
        "i",
        "H0",
        "(I)V",
        "z0",
        "e0",
        "p0",
        "q0",
        "j0",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "imageView",
        "width",
        "height",
        "B0",
        "(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "m0",
        "r0",
        "E0",
        "Lcom/gyf/immersionbar/ImmersionBar;",
        "with",
        "W0",
        "(Lcom/gyf/immersionbar/ImmersionBar;)V",
        "t0",
        "view",
        "a0",
        "(Landroid/view/View;)V",
        "Landroid/widget/ImageView$ScaleType;",
        "l0",
        "()Landroid/widget/ImageView$ScaleType;",
        "Lcom/transsion/player/enum/ScaleMode;",
        "v0",
        "()Lcom/transsion/player/enum/ScaleMode;",
        "d0",
        "V0",
        "M0",
        "isShow",
        "N0",
        "k0",
        "i0",
        "Lcom/transsion/ad/monopoly/model/AdPlans;",
        "g0",
        "()Lcom/transsion/ad/monopoly/model/AdPlans;",
        "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "f0",
        "()Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "Y",
        "c0",
        "W",
        "Z",
        "errorMsg",
        "C0",
        "(Ljava/lang/String;)V",
        "a",
        "Lcom/transsion/ad/monopoly/model/AdPlans;",
        "mAdPlan",
        "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "b",
        "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "n0",
        "()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "setMaxEcpmObject",
        "(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V",
        "maxEcpmObject",
        "c",
        "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "mAdMaterialList",
        "d",
        "I",
        "mAppLayoutId",
        "e",
        "Ljava/lang/String;",
        "mSceneId",
        "",
        "f",
        "J",
        "displayTimestamp",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "g",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isReportAdDisplay",
        "h",
        "y0",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "setAdMaterialShow",
        "(Ljava/util/concurrent/atomic/AtomicBoolean;)V",
        "isAdMaterialShow",
        "mIsMute",
        "Landroid/os/Handler;",
        "j",
        "Landroid/os/Handler;",
        "mHandler",
        "k",
        "countDownTimes",
        "l",
        "Lcom/transsion/player/orplayer/g;",
        "mOrPlayer",
        "m",
        "isInScreen",
        "",
        "n",
        "F",
        "touchStartX",
        "o",
        "touchStartY",
        "Ljava/lang/Runnable;",
        "p",
        "Ljava/lang/Runnable;",
        "countdownRunnable",
        "q",
        "lib_ad_gpRelease"
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
.field public static final q:Lcom/transsion/ad/bidding/base/AbsBiddingActivity$a;


# instance fields
.field private a:Lcom/transsion/ad/monopoly/model/AdPlans;

.field private b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private c:Lcom/transsion/ad/monopoly/model/AdMaterialList;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Z

.field private final j:Landroid/os/Handler;

.field private k:I

.field private l:Lcom/transsion/player/orplayer/g;

.field private m:Z

.field private n:F

.field private o:F

.field private final p:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->q:Lcom/transsion/ad/bidding/base/AbsBiddingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->i:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/ad/bidding/base/l;

    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/base/l;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->p:Ljava/lang/Runnable;

    return-void
.end method

.method private final A0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;

    invoke-direct {v1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->i(Landroidx/lifecycle/u;Landroidx/activity/u;)V

    return-void
.end method

.method private static final D0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "show_error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setErrorMsg(Ljava/lang/String;)V

    :cond_1
    const-string p1, "ad_max_ecpm_object"

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lr1/a;->d(Landroid/content/Intent;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d0()V

    return-void
.end method

.method private final F0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private final G0()V
    .locals 31

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->o0()Landroid/widget/FrameLayout;

    move-result-object v8

    if-eqz v8, :cond_7

    new-instance v9, Landroid/view/TextureView;

    invoke-direct {v9, v7}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/transsion/player/orplayer/g$a;

    invoke-direct {v0, v7}, Lcom/transsion/player/orplayer/g$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lbo/d;

    move-object v10, v1

    const v29, 0x16fff

    const/16 v30, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v10 .. v30}, Lbo/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/g$a;->b(Lbo/d;)Lcom/transsion/player/orplayer/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/g$a;->a()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->r0()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setMute(Z)V

    invoke-interface {v0, v9}, Lcom/transsion/player/orplayer/g;->setTextureView(Landroid/view/TextureView;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->m0()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    invoke-interface {v0, v7}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    iput-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->l:Lcom/transsion/player/orplayer/g;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v12, v0

    goto :goto_2

    :cond_2
    :goto_1
    move-object v12, v1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :goto_2
    iget-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->l:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->v0()Lcom/transsion/player/enum/ScaleMode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    :cond_4
    iget-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->l:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_5

    new-instance v1, Lao/e;

    const/16 v16, 0x1c

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v1

    move-object v11, v12

    invoke-direct/range {v10 .. v17}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    :cond_5
    iget-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->l:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_6
    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v2, "mOrPlayer?.prepare()"

    const-string v3, "zxb_video"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_7
    const-string v0, "\u89c6\u9891\u5e7f\u544a\u5bb9\u5668\u4e3a\u7a7a"

    invoke-virtual {v7, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->C0(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private final K0()V
    .locals 8

    iget-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "action_display_timestamp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "ad_max_ecpm_object"

    iget-object v4, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f:J

    sub-long/2addr v4, v6

    const-string v0, "display_timestamp"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr1/a;->d(Landroid/content/Intent;)Z

    iput-wide v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f:J

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private final L0()Z
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->i:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->i:Z

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->s0()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->i:Z

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setMute(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->i:Z

    return v0
.end method

.method private final P0()V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->o0()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->l0()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    new-instance v4, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;

    invoke-direct {v4, p0, v1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getWidth()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getWidth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getHeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->B0(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->B0(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_4
    const-string v2, "\u56fe\u7247\u5e7f\u544a\u7d20\u6750\u4e3a\u7a7a"

    invoke-virtual {p0, v2}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->C0(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    const-string v0, "\u56fe\u7247\u5e7f\u544a\u5bb9\u5668\u4e3a\u7a7a"

    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->C0(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private final Q0()V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "TextAdMaterial"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->P0()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->G0()V

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->o0()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v7, Lti/g;

    new-instance v4, Lcom/transsion/ad/bidding/base/m;

    invoke-direct {v4, p0}, Lcom/transsion/ad/bidding/base/m;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lti/g;-><init>(JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->S0()V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->e0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/transsion/ad/strategy/i;->a:Lcom/transsion/ad/strategy/i;

    invoke-virtual {v1, v0}, Lcom/transsion/ad/strategy/i;->a(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public static synthetic R(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->T0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V

    return-void
.end method

.method private static final R0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->W()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final S0()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->w0()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "TextAdMaterial"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    new-instance v1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/transsion/ad/R$mipmap;->ad_volumeoff:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v2, Lcom/transsion/ad/bidding/base/o;

    invoke-direct {v2, p0, v1}, Lcom/transsion/ad/bidding/base/o;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public static synthetic T(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)V

    return-void
.end method

.method private static final T0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->L0()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/ad/R$mipmap;->ad_volumeoff:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/ad/R$mipmap;->ad_volumeon:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public static synthetic U(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->R0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final U0()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->F0()V

    iget v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic V(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->D0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Ljava/lang/String;)V

    return-void
.end method

.method private final X()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "action_close"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "ad_max_ecpm_object"

    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr1/a;->d(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static final b0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)V
    .locals 10

    iget v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->H0(I)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j0()I

    move-result v0

    iget v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countdownRunnable() --> times = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> i = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->z0()V

    :cond_0
    iget v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->U0()V

    return-void
.end method

.method private final s0()Lcom/transsion/player/orplayer/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->l:Lcom/transsion/player/orplayer/g;

    return-object v0
.end method

.method private final x0()V
    .locals 10

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "scene_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "app_layout_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_3
    move-object v5, v1

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5904\u7406 FM Parcelable \u5f02\u5e38 --> Bundle key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", valueClass = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "parcelable"

    const/4 v6, 0x6

    invoke-virtual {p0, v6, v4, v5, v2}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->onLog(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :goto_6
    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0x21

    const-string v3, "ad_max_ecpm_object"

    if-lt v0, v2, :cond_7

    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    const-class v2, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {v0, v3, v2}, Lcom/cloud/hisavana/sdk/common/activity/c;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    goto :goto_8

    :cond_6
    move-object v0, v1

    goto :goto_8

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    :goto_8
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->a:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->a:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    :cond_9
    iput-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->c:Lcom/transsion/ad/monopoly/model/AdMaterialList;

    :cond_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_b

    :goto_a
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initExtData() --> it = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v4, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_c
    return-void
.end method


# virtual methods
.method public B0(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public final C0(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->o0()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/ad/bidding/base/n;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/n;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public E0()V
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->W()V

    :cond_0
    return-void
.end method

.method public abstract H0(I)V
.end method

.method public final I0()V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f:J

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->U0()V

    :cond_0
    return-void
.end method

.method public final J0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->c0()V

    :cond_0
    return-void
.end method

.method public M0()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public final N0(Z)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->s0()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->F0()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->s0()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->U0()V

    :goto_0
    return-void
.end method

.method public abstract O0()V
.end method

.method public final V0()V
    .locals 2

    sget-object v0, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-virtual {v0}, Lcom/transsion/ad/MBAd;->c()Lcom/transsion/ad/MBAd$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/MBAd$a;->e()Lhi/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhi/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final W()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "action_click"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "ad_max_ecpm_object"

    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr1/a;->d(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public W0(Lcom/gyf/immersionbar/ImmersionBar;)V
    .locals 1

    const-string v0, "with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final Y()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "action_resume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "ad_max_ecpm_object"

    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr1/a;->d(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final Z()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "action_rewarded"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "ad_max_ecpm_object"

    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr1/a;->d(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected final a0(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    add-int/2addr v1, v0

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "action_display"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "ad_max_ecpm_object"

    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr1/a;->d(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public final d0()V
    .locals 2

    sget-object v0, Lcom/transsion/ad/bidding/base/v;->a:Lcom/transsion/ad/bidding/base/v;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->h0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/v;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/v;->c()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->o:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    const v2, 0x461c4000    # 10000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->E0()V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->o:F

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public abstract e0()Landroid/view/View;
.end method

.method public final f0()Lcom/transsion/ad/monopoly/model/AdMaterialList;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->c:Lcom/transsion/ad/monopoly/model/AdMaterialList;

    return-object v0
.end method

.method public final g0()Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->a:Lcom/transsion/ad/monopoly/model/AdPlans;

    return-object v0
.end method

.method public getClassTag()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Loi/b$a;->a(Loi/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getVisibilityThreshold()D
    .locals 2

    invoke-static {p0}, Lcom/transsion/ad/strategy/r$a$a;->a(Lcom/transsion/ad/strategy/r$a;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVisibilityView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->o0()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public abstract h0()I
.end method

.method public final i0()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d:I

    return v0
.end method

.method public initPlayer()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public j0()I
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->h0()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/ad/scene/a;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/ad/scene/a;->u(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->h0()I

    move-result v0

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    invoke-virtual {v0}, Lcom/transsion/ad/scene/b;->c()I

    move-result v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    invoke-virtual {v0}, Lcom/transsion/ad/scene/b;->h()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final k0()I
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public l0()Landroid/widget/ImageView$ScaleType;
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public m0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    return-object v0
.end method

.method public abstract o0()Landroid/widget/FrameLayout;
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->c(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->e(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->M0()V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarAlpha(F)Lcom/gyf/immersionbar/ImmersionBar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->W0(Lcom/gyf/immersionbar/ImmersionBar;)V

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->u0()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->t0()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->a0(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->x0()V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->g0()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x3

    const-string v2, "onCreate() --> \u5f00\u59cb\u5c55\u793a\u5e7f\u544a"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j0()I

    move-result p1

    iput p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    sget-object p1, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-virtual {p1, p0}, Lcom/transsion/ad/strategy/r;->g(Lcom/transsion/ad/strategy/r$a;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->O0()V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->Q0()V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->A0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v1, "is_show_member_btn"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->p0()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->q0()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const-string p1, "onCreate() --> \u5f00\u59cb\u5c55\u793a\u5e7f\u544a --> getAdPlan() == null || getSceneId() is empty"

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->C0(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-virtual {v0, p0}, Lcom/transsion/ad/strategy/r;->n(Lcom/transsion/ad/strategy/r$a;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->s0()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->K0()V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->X()V

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->i(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->k(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Loi/b$a;->b(Loi/b;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->o(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 1

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->q(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->C0(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->t(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->v(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->w(Lcom/transsion/player/orplayer/f;Lao/e;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->s0()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->y(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 9

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->A(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v7, 0x9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-string v4, "onRenderFirstFrame"

    const-string v5, "zxb_video"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 8

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string v3, "onResume() --> \u91cd\u65b0\u8fdb\u5165\u9875\u9762\u7684\u65f6\u5019\u9700\u8981\u6821\u9a8c\u4e00\u4e0b\uff0cisVipSkipAd == true"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d0()V

    :cond_0
    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->B(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->C(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->E(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->F(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->H(Lcom/transsion/player/orplayer/f;II)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->I(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->m:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->Y()V

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->m:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->I0()V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->s0()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->s0()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->J0()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->s0()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->K0()V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->F0()V

    :goto_0
    return-void
.end method

.method public abstract p0()Landroid/view/View;
.end method

.method public abstract q0()Landroid/view/View;
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method protected t0()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract u0()Landroid/view/View;
.end method

.method public v0()Lcom/transsion/player/enum/ScaleMode;
    .locals 1

    sget-object v0, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FIT:Lcom/transsion/player/enum/ScaleMode;

    return-object v0
.end method

.method public abstract w0()Landroid/widget/FrameLayout;
.end method

.method protected final y0()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public abstract z0()V
.end method
