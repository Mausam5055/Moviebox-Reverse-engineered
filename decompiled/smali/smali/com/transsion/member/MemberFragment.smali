.class public final Lcom/transsion/member/MemberFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ldz/a;
.implements Lcom/transsion/baselib/report/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/MemberFragment$a;,
        Lcom/transsion/member/MemberFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lwm/n;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Ldz/a;",
        "Lcom/transsion/baselib/report/g;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0007\u0018\u0000 b2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0001gB\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0019\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0007J\u0019\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0007J\u000f\u0010\u0018\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0007J\u0017\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001d\u0010\u001f\u001a\u00020\u00082\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J!\u0010%\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!2\u0008\u0008\u0002\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0007J\u000f\u0010(\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008(\u0010\u0007J\u000f\u0010)\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0007J\u000f\u0010*\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008,\u0010\u0007J#\u0010/\u001a\u00020\u00082\u0006\u0010-\u001a\u00020!2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010!H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00101\u001a\u00020\u00082\u0006\u0010.\u001a\u00020!H\u0002\u00a2\u0006\u0004\u00081\u00102J+\u00106\u001a\u00020\u00082\u0006\u0010.\u001a\u00020!2\u0008\u00104\u001a\u0004\u0018\u0001032\u0008\u00105\u001a\u0004\u0018\u00010!H\u0002\u00a2\u0006\u0004\u00086\u00107J\u0017\u0010:\u001a\u00020\u00082\u0006\u00109\u001a\u000208H\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u001f\u0010>\u001a\u0002032\u0006\u0010<\u001a\u0002032\u0006\u0010=\u001a\u000208H\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u0017\u0010B\u001a\u00020\u00022\u0006\u0010A\u001a\u00020@H\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u000f\u0010D\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u000f\u0010F\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008F\u0010\u0007J\u000f\u0010G\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008G\u0010\u0007J\u0011\u0010I\u001a\u0004\u0018\u00010HH\u0016\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010K\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008K\u0010+J\u000f\u0010L\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008L\u0010\u0007J\u0019\u0010O\u001a\u00020\u00082\u0008\u0010N\u001a\u0004\u0018\u00010MH\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u000f\u0010Q\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008Q\u0010\u0007J\u000f\u0010R\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008R\u0010\u0007J\u0017\u0010T\u001a\u00020\u00082\u0006\u0010S\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008T\u0010UJ\r\u0010V\u001a\u00020\u0008\u00a2\u0006\u0004\u0008V\u0010\u0007J\r\u0010W\u001a\u00020\u0008\u00a2\u0006\u0004\u0008W\u0010\u0007J\u0017\u0010Y\u001a\u00020\u00082\u0006\u0010X\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008Y\u0010\rJ\u000f\u0010Z\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008Z\u0010\u0007J\u0017\u0010[\u001a\u00020\u00082\u0006\u0010X\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008[\u0010\rJ\u0015\u0010]\u001a\u00020\u00082\u0006\u0010\\\u001a\u000203\u00a2\u0006\u0004\u0008]\u0010^J\u000f\u0010_\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008_\u0010\u0007J\u000f\u0010`\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008`\u0010\u0007J\u0019\u0010c\u001a\u00020\u00082\u0008\u0010b\u001a\u0004\u0018\u00010aH\u0016\u00a2\u0006\u0004\u0008c\u0010dJ\u000f\u0010e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008e\u0010\u0007J\u000f\u0010f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008f\u0010\u0007R$\u0010k\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008g\u0010h\u001a\u0004\u0008i\u0010E\"\u0004\u0008j\u00102R$\u0010o\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008l\u0010h\u001a\u0004\u0008m\u0010E\"\u0004\u0008n\u00102R$\u0010s\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010h\u001a\u0004\u0008q\u0010E\"\u0004\u0008r\u00102R$\u0010w\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010h\u001a\u0004\u0008u\u0010E\"\u0004\u0008v\u00102R\u0016\u0010y\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010hR\u0018\u0010|\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010~R \u0010\u0084\u0001\u001a\u00020\u007f8BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001R#\u0010\u0089\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u0086\u0001\u0018\u00010\u0085\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\u001c\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R#\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u0096\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0097\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u0098\u0001\u0010\u0099\u0001R!\u0010\u009f\u0001\u001a\u00030\u009b\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u009c\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u0019\u0010\u00a2\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u001b\u0010\u00a5\u0001\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u0019\u0010\u00a8\u0001\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u001a\u0010\u00aa\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a9\u0001\u0010hR\u0019\u0010\u00ac\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00a1\u0001R\u0019\u0010\u00ae\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00a1\u0001R\u0019\u0010\u00b0\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00a1\u0001\u00a8\u0006\u00b1\u0001"
    }
    d2 = {
        "Lcom/transsion/member/MemberFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lwm/n;",
        "Landroid/view/View$OnClickListener;",
        "Ldz/a;",
        "Lcom/transsion/baselib/report/g;",
        "<init>",
        "()V",
        "",
        "f1",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "userInfo",
        "t1",
        "(Lcom/transsnet/loginapi/bean/UserInfo;)V",
        "Lcom/transsion/memberapi/SkuItem;",
        "skuItem",
        "e1",
        "(Lcom/transsion/memberapi/SkuItem;)V",
        "K0",
        "Lcom/transsion/memberapi/MemberDetail;",
        "memberDetail",
        "l1",
        "(Lcom/transsion/memberapi/MemberDetail;)V",
        "v1",
        "g1",
        "Lcom/transsion/memberapi/SkuData;",
        "data",
        "m1",
        "(Lcom/transsion/memberapi/SkuData;)V",
        "",
        "redeemList",
        "h1",
        "(Ljava/util/List;)V",
        "",
        "productId",
        "",
        "isSubscription",
        "q1",
        "(Ljava/lang/String;Z)V",
        "c1",
        "Q0",
        "M0",
        "b1",
        "()Z",
        "J0",
        "optType",
        "skuId",
        "i1",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "k1",
        "(Ljava/lang/String;)V",
        "",
        "code",
        "message",
        "j1",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V",
        "",
        "alpha",
        "s1",
        "(F)V",
        "color",
        "fraction",
        "I0",
        "(IF)I",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "P0",
        "(Landroid/view/LayoutInflater;)Lwm/n;",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "initViewData",
        "loadDefaultData",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "isShowPageStateLayoutTitle",
        "initViewModel",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onPause",
        "onResume",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "showLoading",
        "L0",
        "user",
        "onLogin",
        "onLogout",
        "onUpdateUserInfo",
        "points",
        "p1",
        "(I)V",
        "initListener",
        "retryLoadData",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "logResume",
        "onDestroy",
        "a",
        "Ljava/lang/String;",
        "getSourceValue",
        "setSourceValue",
        "sourceValue",
        "b",
        "getSceneId",
        "setSceneId",
        "sceneId",
        "c",
        "getTraceId",
        "setTraceId",
        "traceId",
        "d",
        "getSubjectId",
        "setSubjectId",
        "subjectId",
        "e",
        "orderId",
        "f",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "mUserInfo",
        "g",
        "Lcom/transsion/memberapi/MemberDetail;",
        "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;",
        "h",
        "Lkotlin/Lazy;",
        "N0",
        "()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;",
        "mLoadingDialog",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "i",
        "Landroidx/activity/result/b;",
        "loginLaunch",
        "Lcom/transsion/member/adapter/l;",
        "j",
        "Lcom/transsion/member/adapter/l;",
        "taskAdapter",
        "Lcom/transsion/member/adapter/k;",
        "k",
        "Lcom/transsion/member/adapter/k;",
        "skuListAdapter",
        "Lcom/transsion/member/adapter/i;",
        "l",
        "Lcom/transsion/member/adapter/i;",
        "redeemListAdapter",
        "Lcom/transsnet/loginapi/ILoginApi;",
        "m",
        "getMLoginApi",
        "()Lcom/transsnet/loginapi/ILoginApi;",
        "mLoginApi",
        "Lcom/transsion/member/MemberViewModel;",
        "n",
        "O0",
        "()Lcom/transsion/member/MemberViewModel;",
        "memberViewModel",
        "o",
        "Z",
        "isFirstResume",
        "p",
        "Lcom/transsion/memberapi/SkuItem;",
        "selectedSkuItem",
        "q",
        "I",
        "defaultSelectedPosition",
        "r",
        "oldUid",
        "s",
        "shouldRefreshPurchasedInfo",
        "t",
        "isPremium",
        "u",
        "isSelf",
        "Member_psRelease"
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
.field public static final v:Lcom/transsion/member/MemberFragment$a;

.field public static final w:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/transsnet/loginapi/bean/UserInfo;

.field private g:Lcom/transsion/memberapi/MemberDetail;

.field private final h:Lkotlin/Lazy;

.field private i:Landroidx/activity/result/b;

.field private j:Lcom/transsion/member/adapter/l;

.field private k:Lcom/transsion/member/adapter/k;

.field private l:Lcom/transsion/member/adapter/i;

.field private final m:Lkotlin/Lazy;

.field private final n:Lkotlin/Lazy;

.field private o:Z

.field private p:Lcom/transsion/memberapi/SkuItem;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/member/MemberFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/member/MemberFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/member/MemberFragment;->v:Lcom/transsion/member/MemberFragment$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/MemberFragment;->w:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->e:Ljava/lang/String;

    new-instance v0, Lcom/transsion/member/k;

    invoke-direct {v0}, Lcom/transsion/member/k;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/member/l;

    invoke-direct {v0}, Lcom/transsion/member/l;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->m:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    const-class v1, Lcom/transsion/member/MemberViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance v3, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v0, p0}, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->n:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/member/MemberFragment;->o:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/member/MemberFragment;->q:I

    return-void
.end method

.method public static final synthetic A0(Lcom/transsion/member/MemberFragment;)Lcom/transsion/memberapi/MemberDetail;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/memberapi/MemberDetail;

    return-object p0
.end method

.method public static final synthetic B0(Lcom/transsion/member/MemberFragment;)Lcom/transsion/memberapi/SkuItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberFragment;->p:Lcom/transsion/memberapi/SkuItem;

    return-object p0
.end method

.method public static final synthetic C0(Lcom/transsion/member/MemberFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->c1()V

    return-void
.end method

.method public static final synthetic D0(Lcom/transsion/member/MemberFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->f1()V

    return-void
.end method

.method public static final synthetic E0(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/member/MemberFragment;->j1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic F0(Lcom/transsion/member/MemberFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->k1(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic G0(Lcom/transsion/member/MemberFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/member/MemberFragment;->s:Z

    return-void
.end method

.method public static final synthetic H0(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/member/MemberFragment;->q1(Ljava/lang/String;Z)V

    return-void
.end method

.method private final I0(IF)I
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private final J0()V
    .locals 2

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    return-void
.end method

.method private final K0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "extra_member_scroll_bottom"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final M0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lwm/n;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->e(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/member/MemberActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/member/MemberActivity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseNewActivity;->w0()V

    :cond_2
    return-void
.end method

.method private final N0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    return-object v0
.end method

.method private final O0()Lcom/transsion/member/MemberViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->n:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/member/MemberViewModel;

    return-object v0
.end method

.method private final Q0()V
    .locals 13

    iget-boolean v0, p0, Lcom/transsion/member/MemberFragment;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v2, Lcom/transsion/member/R$string;->member_successfully_renewed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v2, Lcom/transsion/member/R$string;->member_successfully_upgraded_to_premium:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/member/MemberFragment;->a:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "Multi_DL_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :sswitch_1
    const-string v3, "AD_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :sswitch_2
    const-string v3, "OTHER_DOWNLOAD_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :sswitch_3
    const-string v3, "HDDL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v3, Lcom/transsion/member/R$string;->member_back:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    goto :goto_2

    :sswitch_4
    const-string v3, "LANDSCAPE_PLAY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v3, Lcom/transsion/member/R$string;->member_back_to_watch:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_5
    const-string v3, "DOWNLOAD_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v3, Lcom/transsion/member/R$string;->member_back_to_download:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/transsion/member/MemberActivity;

    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v3, Lcom/transsion/member/R$string;->member_explore_now:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v3, Lcom/transsion/member/R$string;->member_back:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    sget-object v3, Llg/a;->a:Llg/a$a;

    iget-object v4, p0, Lcom/transsion/member/MemberFragment;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The source is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", title: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", buttonTitle: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v7

    new-instance v10, Lcom/transsion/member/MemberFragment$handlePurchaseSucceed$1;

    invoke-direct {v10, p0, v0, v2, v1}, Lcom/transsion/member/MemberFragment$handlePurchaseSucceed$1;-><init>(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    const-class v0, Lcom/transsion/memberapi/IMemberApi;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/transsion/memberapi/IMemberApi$a;->a(Lcom/transsion/memberapi/IMemberApi;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_8
    sget-object v0, Lcom/transsion/member/ObserveLoginAction;->c:Lcom/transsion/member/ObserveLoginAction$a;

    invoke-virtual {v0}, Lcom/transsion/member/ObserveLoginAction$a;->a()Lcom/transsion/member/ObserveLoginAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/ObserveLoginAction;->i()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a42f321 -> :sswitch_5
        -0x190d5da8 -> :sswitch_4
        0x21c284 -> :sswitch_3
        0x28d30990 -> :sswitch_2
        0x56cd08e4 -> :sswitch_1
        0x68d3d139 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final R0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->l()V

    :cond_0
    return-void
.end method

.method private static final S0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/memberapi/IMemberApi;->f()Z

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/member/MemberFragment;->p:Lcom/transsion/memberapi/SkuItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getCategory()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/transsion/memberapi/SkuCategory;->AUTO_RENEW:Lcom/transsion/memberapi/SkuCategory;

    invoke-virtual {v1}, Lcom/transsion/memberapi/SkuCategory;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/member/MemberFragment;->q1(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string p0, "/rewards/center"

    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const-string p1, "source"

    const-string v0, "memberdetail"

    invoke-virtual {p0, p1, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final T0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->c1()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final U0(Landroidx/activity/result/ActivityResult;)V
    .locals 13

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "loginStatus"

    const-string v3, "\u767b\u5f55\u6210\u529f"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v7, Llg/a;->a:Llg/a$a;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "loginStatus"

    const-string v9, "\u767b\u5f55\u5931\u8d25\u6216\u8005\u53d6\u6d88"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final V0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 1

    sget-object p1, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->f:Lcom/transsion/member/dialog/MemberPromoCodeDialog$a;

    new-instance v0, Lcom/transsion/member/MemberFragment$c;

    invoke-direct {v0, p0}, Lcom/transsion/member/MemberFragment$c;-><init>(Lcom/transsion/member/MemberFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/member/dialog/MemberPromoCodeDialog$a;->a(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "getChildFragmentManager(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MemberPromoCodeDialog"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final W0(Lcom/transsion/member/MemberFragment;Lcom/transsion/member/bean/RedeemResult;)Lkotlin/Unit;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/member/bean/RedeemResult;->getVipDurationDays()I

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v3, Lcom/transsion/member/R$string;->member_claimed_succeed_1_day:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    sget v4, Lcom/transsion/member/R$string;->member_claimed_succeed_days:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_2

    sget-object v3, Luh/b;->a:Luh/b$a;

    sget v4, Lcom/transsion/member/R$layout;->claim_succeed_layout:I

    const/high16 p1, 0x42840000    # 66.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v8

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/16 v6, 0x50

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Luh/b$a;->h(Luh/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->f1()V

    new-array p1, v0, [Ljava/lang/Object;

    const-class v0, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz p1, :cond_4

    invoke-static {p1, v2, v1, v2}, Lcom/transsion/memberapi/IMemberApi$a;->a(Lcom/transsion/memberapi/IMemberApi;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v0, Lcom/tn/lib/widget/R$string;->failed_toast:I

    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/member/MemberFragment;->L0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final X0(Lcom/transsion/member/MemberFragment;Lzm/d;)Lkotlin/Unit;
    .locals 7

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->f1()V

    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->j:Lcom/transsion/member/adapter/l;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItem;

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lzm/d;->a()I

    move-result v0

    invoke-virtual {p1}, Lzm/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lzm/d;->b()Lcom/transsion/memberapi/MemberTaskRewardInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v5, "0"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-ltz v0, :cond_7

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transsion/memberapi/MemberTaskItemInvite;

    invoke-virtual {v6}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v2, v5

    :cond_4
    check-cast v2, Lcom/transsion/memberapi/MemberTaskItemInvite;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->setStatus(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/memberapi/MemberTaskItemInvite;

    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    invoke-virtual {v2, v3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->setStatus(I)V

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v1, p1}, Lcom/transsion/memberapi/MemberTaskItem;->setRewardInfo(Lcom/transsion/memberapi/MemberTaskRewardInfo;)V

    :cond_8
    iget-object p0, p0, Lcom/transsion/member/MemberFragment;->j:Lcom/transsion/member/adapter/l;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Y0(Lcom/transsion/member/MemberFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 4

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->f1()V

    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->j:Lcom/transsion/member/adapter/l;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItem;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->setHasCheckIn(Z)V

    :cond_3
    iget-object p0, p0, Lcom/transsion/member/MemberFragment;->j:Lcom/transsion/member/adapter/l;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Z0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;
    .locals 2

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/memberapi/MemberDetail;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhj/b;->k(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->l1(Lcom/transsion/memberapi/MemberDetail;)V

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/member/MemberFragment;->t1(Lcom/transsnet/loginapi/bean/UserInfo;)V

    :cond_1
    if-nez p1, :cond_3

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v0, Lcom/tn/lib/widget/R$string;->failed_toast:I

    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/member/MemberFragment;->L0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final a1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuData;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->m1(Lcom/transsion/memberapi/SkuData;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/member/MemberFragment;->L0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final b1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/member/MemberFragment;->u:Z

    return v0
.end method

.method private final c1()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "oneroom://com.community.oneroom/profile/user_center_labels_feedback"

    invoke-static {v2, v0, v1, v0}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final d1()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;
    .locals 1

    new-instance v0, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    invoke-direct {v0}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;-><init>()V

    return-object v0
.end method

.method private final e1(Lcom/transsion/memberapi/SkuItem;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/member/MemberFragment;->showLoading()V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->O0()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/member/MemberViewModel;->T(Lcom/transsion/memberapi/SkuItem;)V

    return-void
.end method

.method private final f1()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->O0()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->w()V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->O0()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->z()V

    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->j:Lcom/transsion/member/adapter/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->K0()V

    return-void
.end method

.method private final g1()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/member/MemberFragment;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->Q0()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/member/MemberFragment;->s:Z

    return-void
.end method

.method private final getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final h1(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method private final i1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "opt_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "skuId"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lhj/b;->f()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    const-string p2, ""

    :cond_2
    invoke-virtual {p1, p2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->T0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final j1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "opt_type"

    const-string v2, "pay_result"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sku_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fail_code"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    if-nez p3, :cond_0

    move-object p3, p1

    :cond_0
    const-string p2, "fail_message"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "order_id"

    iget-object p3, p0, Lcom/transsion/member/MemberFragment;->e:Ljava/lang/String;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/transsion/member/MemberFragment;->c:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, p1

    :cond_1
    const-string p3, "trace_id"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "result_type"

    const-string p3, "result_fail"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lhj/i;->a:Lhj/i;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lhj/b;->f()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p3

    :cond_3
    :goto_0
    const-string p3, "purchase"

    invoke-virtual {p2, p1, p3, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->Z0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final k1(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "opt_type"

    const-string v2, "pay_result"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sku_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "order_id"

    iget-object v1, p0, Lcom/transsion/member/MemberFragment;->e:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/member/MemberFragment;->c:Ljava/lang/String;

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "trace_id"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "result_type"

    const-string v2, "result_success"

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lhj/b;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    const-string v2, "purchase"

    invoke-virtual {p1, v1, v2, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->a1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final l1(Lcom/transsion/memberapi/MemberDetail;)V
    .locals 9

    const/4 v0, 0x1

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "member detail is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getPointInfo()Lcom/transsion/memberapi/PointInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/memberapi/PointInfo;->getPoint()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz p1, :cond_1

    sget-object v2, Lcom/transsion/memberapi/MembershipDetailType;->Companion:Lcom/transsion/memberapi/MembershipDetailType$a;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/memberapi/MembershipDetailType$a;->a(Lcom/transsion/memberapi/MemberInfo;)Lcom/transsion/memberapi/MembershipDetailType;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/transsion/memberapi/MembershipDetailType;->GUEST:Lcom/transsion/memberapi/MembershipDetailType;

    :goto_1
    sget-object v6, Lcom/transsion/member/MemberFragment$b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    const/16 v6, 0x8

    if-eq v2, v0, :cond_b

    if-eq v2, v4, :cond_b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_b

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lwm/n;->s:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_4

    sget v4, Lcom/transsion/member/R$string;->member_free_plan:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v4

    check-cast v4, Lwm/n;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lwm/n;->s:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_5

    sget v7, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-virtual {v2, v7}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lwm/n;->j:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lwm/n;->q:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lwm/n;->s:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v5

    :goto_3
    instance-of v4, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_9

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    :cond_9
    if-eqz v5, :cond_a

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_1a

    iget-object v2, v2, Lwm/n;->s:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_9

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1a

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object v4

    goto :goto_4

    :cond_c
    move-object v4, v5

    :goto_4
    const-class v7, Lcom/transsion/memberapi/IMemberApi;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v7, :cond_d

    invoke-interface {v7}, Lcom/transsion/memberapi/IMemberApi;->f()Z

    move-result v7

    goto :goto_5

    :cond_d
    move v7, v3

    :goto_5
    if-eqz v7, :cond_10

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v7

    check-cast v7, Lwm/n;

    if-eqz v7, :cond_e

    iget-object v7, v7, Lwm/n;->s:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_e

    sget v8, Lcom/tn/lib/widget/R$color;->yellow_dark_90:I

    invoke-virtual {v2, v8}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_f

    iget-object v2, v2, Lwm/n;->s:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_f

    sget v7, Lcom/transsion/member/R$string;->member_premium:I

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_13

    iget-object v2, v2, Lwm/n;->j:Landroid/widget/ImageView;

    if-eqz v2, :cond_13

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v7

    check-cast v7, Lwm/n;

    if-eqz v7, :cond_11

    iget-object v7, v7, Lwm/n;->s:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_11

    sget v8, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-virtual {v2, v8}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_12

    iget-object v2, v2, Lwm/n;->s:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_12

    sget v7, Lcom/transsion/member/R$string;->member_free_plan:I

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_13

    iget-object v2, v2, Lwm/n;->j:Landroid/widget/ImageView;

    if-eqz v2, :cond_13

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lwm/n;->q:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_15

    sget v7, Lcom/transsion/member/R$string;->member_date_left:I

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberInfo;->getExpiryDate()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_14
    move-object v4, v5

    :goto_7
    new-array v8, v0, [Ljava/lang/Object;

    aput-object v4, v8, v3

    invoke-virtual {p0, v7, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lwm/n;->q:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_16

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_17

    iget-object v2, v2, Lwm/n;->s:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_8

    :cond_17
    move-object v2, v5

    :goto_8
    instance-of v4, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_18

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    :cond_18
    if-eqz v5, :cond_19

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_19
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_1a

    iget-object v2, v2, Lwm/n;->s:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_1a
    :goto_9
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberAgreements()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_a

    :cond_1b
    move v0, v3

    :cond_1c
    :goto_a
    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_1d

    iget-object v0, v0, Lwm/n;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lwm/n;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lwm/n;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberAgreements()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/memberapi/MemberAgreement;

    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberAgreement;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lwm/n;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberAgreements()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/MemberAgreement;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberAgreement;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_20
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/n;

    if-eqz p1, :cond_21

    iget-object p1, p1, Lwm/n;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_21

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/n;

    if-eqz p1, :cond_22

    iget-object p1, p1, Lwm/n;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_22

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    :goto_b
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->v1()V

    invoke-virtual {p0, v1}, Lcom/transsion/member/MemberFragment;->p1(I)V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->g1()V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->S0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final m1(Lcom/transsion/memberapi/SkuData;)V
    .locals 8

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuData;->getSkuList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuData;->getSkuPointList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :cond_3
    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/memberapi/SkuItem;

    iget-object v6, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/memberapi/MemberDetail;

    invoke-virtual {v5, v6}, Lcom/transsion/memberapi/SkuItem;->setMemberDetail(Lcom/transsion/memberapi/MemberDetail;)V

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/memberapi/MemberDetail;

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getPointInfo()Lcom/transsion/memberapi/PointInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/memberapi/PointInfo;->getPoint()I

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    check-cast p1, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/memberapi/SkuItem;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/transsion/memberapi/SkuItem;->setUserPoints(Ljava/lang/Integer;)V

    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/transsion/member/MemberFragment;->k:Lcom/transsion/member/adapter/k;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    goto :goto_5

    :cond_7
    move-object p1, v1

    :goto_5
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/member/MemberFragment;->l:Lcom/transsion/member/adapter/i;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    :cond_8
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v5, 0x1

    if-gez v5, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_a
    check-cast v0, Lcom/transsion/memberapi/SkuItem;

    invoke-virtual {v0}, Lcom/transsion/memberapi/SkuItem;->getHotIcon()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->p:Lcom/transsion/memberapi/SkuItem;

    iput v5, p0, Lcom/transsion/member/MemberFragment;->q:I

    :cond_c
    :goto_7
    move v5, v1

    goto :goto_6

    :cond_d
    new-instance p1, Lcom/transsion/member/adapter/k;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/member/adapter/k;-><init>(Ljava/util/List;)V

    sget v0, Lcom/transsion/member/R$id;->item_root:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    iget v0, p0, Lcom/transsion/member/MemberFragment;->q:I

    invoke-virtual {p1, v0}, Lcom/transsion/member/adapter/k;->G1(I)V

    new-instance v0, Lcom/transsion/member/m;

    invoke-direct {v0, p0}, Lcom/transsion/member/m;-><init>(Lcom/transsion/member/MemberFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/member/adapter/k;->F1(Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->k:Lcom/transsion/member/adapter/k;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/n;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lwm/n;->k:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_f

    new-instance v0, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-gtz v0, :cond_e

    new-instance v0, Lcom/transsion/member/adapter/a;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/transsion/member/adapter/a;-><init>(II)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_e
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->k:Lcom/transsion/member/adapter/k;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_f
    new-instance p1, Lcom/transsion/member/adapter/i;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/member/adapter/i;-><init>(Ljava/util/List;)V

    sget v0, Lcom/transsion/member/R$id;->item_root:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    new-instance v0, Lcom/transsion/member/n;

    invoke-direct {v0, p0}, Lcom/transsion/member/n;-><init>(Lcom/transsion/member/MemberFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/member/adapter/i;->F1(Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->l:Lcom/transsion/member/adapter/i;

    return-void
.end method

.method private static final mLoginApi_delegate$lambda$1()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/member/MemberFragment;->o1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final n1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->p:Lcom/transsion/memberapi/SkuItem;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic o0(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/MemberFragment;->U0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private static final o1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    sget-object p2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getCoin()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The productId and coins: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, v3, v1, v2}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getDuration()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_reward"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/transsion/member/MemberFragment;->i1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->e1(Lcom/transsion/memberapi/SkuItem;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic p0(Lcom/transsion/member/MemberFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->Y0(Lcom/transsion/member/MemberFragment;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->V0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V

    return-void
.end method

.method private final q1(Ljava/lang/String;Z)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/memberapi/MemberDetail;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberInfo;->isActive()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/memberapi/MemberDetail;

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberInfo;->getMemberType()I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Lcom/transsion/member/MemberFragment;->t:Z

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before pay isPremium: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v4, v1, v3, v5}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v3, v1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v3, :cond_3

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_3

    :cond_3
    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_4

    sget-object v3, Lcom/transsion/payment/lib/f;->b:Lcom/transsion/payment/lib/f$a;

    invoke-virtual {v3}, Lcom/transsion/payment/lib/f$a;->a()Lcom/transsion/payment/lib/f;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-instance v7, Lcom/transsion/member/MemberFragment$startPay$1$1;

    invoke-direct {v7, p0, p1, v0}, Lcom/transsion/member/MemberFragment$startPay$1$1;-><init>(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    new-instance v8, Lcom/transsion/member/o;

    invoke-direct {v8, p0, p1}, Lcom/transsion/member/o;-><init>(Lcom/transsion/member/MemberFragment;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v3

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/payment/lib/f;->e(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLjava/util/Map;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)V

    :cond_4
    return-void
.end method

.method public static synthetic r0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/member/MemberFragment;->n1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final r1(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 10

    const-string v0, "orderId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/member/MemberFragment;->e:Ljava/lang/String;

    sget-object v1, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    iget-object v3, p0, Lcom/transsion/member/MemberFragment;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/member/MemberFragment;->c:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    move-object v5, p0

    const/16 v8, 0x20

    const/4 v9, 0x0

    const-string v2, "memberdetail"

    const/4 v7, 0x0

    move-object v4, p2

    move-object v6, p1

    invoke-static/range {v1 .. v9}, Lcom/transsion/baselib/helper/f;->b(Lcom/transsion/baselib/helper/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic s0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->u1(Lcom/transsion/member/MemberFragment;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final s1(F)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lwm/n;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->gray_dark_00:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->h(FF)F

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/transsion/member/MemberFragment;->I0(IF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public static synthetic t0(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/member/MemberFragment;->r1(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final t1(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "avatarBg"

    const-string v4, "ivAvatarPremium"

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lwm/n;->b:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lwm/n;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lej/f;->a:Lej/f$a;

    iget-object v2, v0, Lwm/n;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$mipmap;->profile_default_avatar:I

    invoke-virtual {v1, v2}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v1

    iget-object v2, v0, Lwm/n;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    invoke-static {}, Landroidx/core/text/a;->c()Landroidx/core/text/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Landroidx/core/text/u;->a:Landroidx/core/text/t;

    invoke-virtual {v1, p1, v2}, Landroidx/core/text/a;->m(Ljava/lang/String;Landroidx/core/text/t;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v7, v7, v7, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_0

    :cond_1
    move-object p1, v7

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {v6}, Lgk/b;->a(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_2
    iget-object p1, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, v0, Lwm/n;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v1, :cond_3

    move-object v7, p1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    :cond_3
    if-eqz v7, :cond_4

    invoke-static {v6}, Lgk/b;->a(I)I

    move-result p1

    invoke-virtual {v7, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_4
    iget-object p1, v0, Lwm/n;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_4

    :cond_5
    iget-object p1, v0, Lwm/n;->b:Landroid/view/View;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lwm/n;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    sget v2, Lcom/transsion/member/R$string;->member_login:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, v7

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    sget v2, Lcom/tn/lib/widget/R$mipmap;->ic_arrow_right_for_member:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v7

    :goto_2
    invoke-virtual {p1, v7, v7, v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v8, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p1, "ivName"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/transsion/member/p;

    invoke-direct {v11, p0}, Lcom/transsion/member/p;-><init>(Lcom/transsion/member/MemberFragment;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v8 .. v13}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    iget-object p1, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v1, :cond_8

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_3

    :cond_8
    move-object p1, v7

    :goto_3
    const/16 v1, 0xc

    if-eqz p1, :cond_9

    invoke-static {v1}, Lgk/b;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_9
    iget-object p1, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, v0, Lwm/n;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v2, :cond_a

    move-object v7, p1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    :cond_a
    if-eqz v7, :cond_b

    invoke-static {v1}, Lgk/b;->a(I)I

    move-result p1

    invoke-virtual {v7, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_b
    iget-object p1, v0, Lwm/n;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_c
    :goto_4
    return-void
.end method

.method public static synthetic u0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/member/MemberFragment;->mLoginApi_delegate$lambda$1()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method private static final u1(Lcom/transsion/member/MemberFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/transsnet/loginapi/ILoginApi;->g(Ldz/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/transsnet/loginapi/ILoginApi;->j(Landroid/content/Context;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic v0(Lcom/transsion/member/MemberFragment;Lzm/d;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->X0(Lcom/transsion/member/MemberFragment;Lzm/d;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final v1()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;->a()Lcom/transsion/rewardscenterapi/RewardsCenterData;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/RewardsCenterData;->getLottery()Lcom/transsion/rewardscenterapi/Lottery;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/Lottery;->getActivityId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "0"

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/RewardsCenterData;->getLottery()Lcom/transsion/rewardscenterapi/Lottery;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/Lottery;->getBgImage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lwm/n;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lwm/n;->l:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lwm/n;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    instance-of v3, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_7

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_4

    :cond_7
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_8

    const/16 v3, -0x14

    invoke-static {v3}, Lgk/b;->a(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_9

    iget-object v2, v0, Lwm/n;->l:Landroid/widget/ImageView;

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lwm/n;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lwm/n;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_5

    :cond_c
    move-object v0, v2

    :goto_5
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_d

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    :cond_d
    if-eqz v2, :cond_e

    const/16 v0, 0x10

    invoke-static {v0}, Lgk/b;->a(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lwm/n;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_f
    return-void
.end method

.method public static synthetic w0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->R0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;
    .locals 1

    invoke-static {}, Lcom/transsion/member/MemberFragment;->d1()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic y0(Lcom/transsion/member/MemberFragment;Lcom/transsion/member/bean/RedeemResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->W0(Lcom/transsion/member/MemberFragment;Lcom/transsion/member/bean/RedeemResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic z0(Lcom/transsion/member/MemberFragment;)Lcom/transsnet/loginapi/ILoginApi;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final L0()V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Dialog not is added"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public P0(Landroid/view/LayoutInflater;)Lwm/n;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lwm/n;->c(Landroid/view/LayoutInflater;)Lwm/n;

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

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberFragment;->P0(Landroid/view/LayoutInflater;)Lwm/n;

    move-result-object p1

    return-object p1
.end method

.method public initListener()V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lwm/n;->f:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/member/j;

    invoke-direct {v1, p0}, Lcom/transsion/member/j;-><init>(Lcom/transsion/member/MemberFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lwm/n;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    new-instance v4, Lcom/transsion/member/q;

    invoke-direct {v4, p0}, Lcom/transsion/member/q;-><init>(Lcom/transsion/member/MemberFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lwm/n;->d:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    new-instance v4, Lcom/transsion/member/r;

    invoke-direct {v4, p0}, Lcom/transsion/member/r;-><init>(Lcom/transsion/member/MemberFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public initViewData()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->M0()V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsnet/loginapi/ILoginApi;->g(Ldz/a;)V

    :cond_0
    new-instance v0, Lf/j;

    invoke-direct {v0}, Lf/j;-><init>()V

    new-instance v1, Lcom/transsion/member/s;

    invoke-direct {v1}, Lcom/transsion/member/s;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->i:Landroidx/activity/result/b;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/member/MemberActivity;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lwm/n;->f:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lwm/n;->f:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, v0, Lwm/n;->t:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/transsion/member/t;

    invoke-direct {v1, p0}, Lcom/transsion/member/t;-><init>(Lcom/transsion/member/MemberFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->J0()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/member/MemberFragment;->s1(F)V

    :cond_2
    return-void
.end method

.method public initViewModel()V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->O0()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->D()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/member/u;

    invoke-direct {v3, p0}, Lcom/transsion/member/u;-><init>(Lcom/transsion/member/MemberFragment;)V

    new-instance v4, Lcom/transsion/member/MemberFragment$d;

    invoke-direct {v4, v3}, Lcom/transsion/member/MemberFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->K()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/member/v;

    invoke-direct {v3, p0}, Lcom/transsion/member/v;-><init>(Lcom/transsion/member/MemberFragment;)V

    new-instance v4, Lcom/transsion/member/MemberFragment$d;

    invoke-direct {v4, v3}, Lcom/transsion/member/MemberFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->H()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/member/w;

    invoke-direct {v3, p0}, Lcom/transsion/member/w;-><init>(Lcom/transsion/member/MemberFragment;)V

    new-instance v4, Lcom/transsion/member/MemberFragment$d;

    invoke-direct {v4, v3}, Lcom/transsion/member/MemberFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->M()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/member/x;

    invoke-direct {v3, p0}, Lcom/transsion/member/x;-><init>(Lcom/transsion/member/MemberFragment;)V

    new-instance v4, Lcom/transsion/member/MemberFragment$d;

    invoke-direct {v4, v3}, Lcom/transsion/member/MemberFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->L()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v1

    new-instance v2, Lcom/transsion/member/y;

    invoke-direct {v2, p0}, Lcom/transsion/member/y;-><init>(Lcom/transsion/member/MemberFragment;)V

    new-instance v3, Lcom/transsion/member/MemberFragment$d;

    invoke-direct {v3, v2}, Lcom/transsion/member/MemberFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->O0()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->O()V

    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {p0, v0}, Lcom/transsion/member/MemberFragment;->t1(Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method public isShowPageStateLayoutTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadDefaultData()V
    .locals 4

    const-class v0, Lcom/transsion/memberapi/IMemberApi;

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->loadDefaultData()V

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/transsion/memberapi/IMemberApi;->f()Z

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    move v2, v1

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/memberapi/IMemberApi;->c()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lwm/n;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lwm/n;->k:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lwm/n;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lwm/n;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_3

    sget v0, Lcom/transsion/member/R$string;->member_renew_now:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/transsion/member/R$string;->member_pay_now:I

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lwm/n;->k:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lwm/n;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    sget v1, Lcom/transsion/member/R$string;->member_redeem:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void
.end method

.method public logResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "memberdetail"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->r:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/member/MemberFragment;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    iget-object p1, p0, Lcom/transsion/member/MemberFragment;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, v0

    :goto_3
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p1, 0x1

    :goto_5
    iput-boolean p1, p0, Lcom/transsion/member/MemberFragment;->u:Z

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "scene_id"

    iget-object v1, p0, Lcom/transsion/member/MemberFragment;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_8
    iget-object p1, p0, Lcom/transsion/member/MemberFragment;->a:Ljava/lang/String;

    const-string v0, "source"

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/transsion/member/MemberFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/member/MemberActivity;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v1, "OTHER"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v1, "TAB"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_b
    :goto_6
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsnet/loginapi/ILoginApi;->p(Ldz/a;)V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logPause()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->f1()V

    invoke-virtual {p0}, Lcom/transsion/member/MemberFragment;->logResume()V

    :cond_1
    :goto_0
    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/activity/k;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ldz/a$a;->a(Ldz/a;Lcom/transsnet/loginapi/bean/UserInfo;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->f1()V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->O0()Lcom/transsion/member/MemberViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/member/MemberViewModel;->y()V

    return-void
.end method

.method public onLogout()V
    .locals 1

    invoke-static {p0}, Ldz/a$a;->b(Ldz/a;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->f1()V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->O0()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->y()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onPause()V

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, p0, v0, v1, v0}, Lcom/transsion/baseui/activity/k;->l(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->f1()V

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

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/n;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lwm/n;->k:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v1, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->b:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    const-string v5, ""

    iget-object v6, p0, Lcom/transsion/member/MemberFragment;->d:Ljava/lang/String;

    const-string v2, "memberdetail"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/baselib/helper/f;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/member/MemberFragment;->o:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/member/MemberFragment;->o:Z

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->O0()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->y()V

    :goto_2
    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->t1(Lcom/transsnet/loginapi/bean/UserInfo;)V

    :cond_0
    return-void
.end method

.method public final p1(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/memberapi/MemberDetail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getPointInfo()Lcom/transsion/memberapi/PointInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/memberapi/PointInfo;->setPoint(I)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->O0()Lcom/transsion/member/MemberViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/member/MemberViewModel;->J()Lcom/transsion/memberapi/SkuData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuData;->getSkuPointList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->h1(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public retryLoadData()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/transsion/memberapi/IMemberApi$a;->a(Lcom/transsion/memberapi/IMemberApi;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final showLoading()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    move-result-object v0

    const-string v1, "LoadingDialog"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method
