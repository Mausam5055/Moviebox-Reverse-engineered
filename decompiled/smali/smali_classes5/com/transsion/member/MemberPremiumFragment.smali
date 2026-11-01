.class public final Lcom/transsion/member/MemberPremiumFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ldz/a;
.implements Lcom/transsion/baselib/report/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/MemberPremiumFragment$a;,
        Lcom/transsion/member/MemberPremiumFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lwm/o;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Ldz/a;",
        "Lcom/transsion/baselib/report/g;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u0000 \u0080\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0001HB\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0017\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0007J\u000f\u0010\u0017\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0007J\u000f\u0010\u0018\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0007J\u000f\u0010\u0019\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0007J\u000f\u0010\u001a\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0007J\u001f\u0010!\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0007J\u0011\u0010,\u001a\u0004\u0018\u00010+H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008.\u0010\u001bJ\u000f\u0010/\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008/\u0010\u0007J\u0019\u00102\u001a\u00020\u00082\u0008\u00101\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00084\u0010\u0007J\u000f\u00105\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00085\u0010\u0007J\u0017\u00107\u001a\u00020\u00082\u0006\u00106\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00087\u0010\rJ\r\u00108\u001a\u00020\u0008\u00a2\u0006\u0004\u00088\u0010\u0007J\u0017\u0010:\u001a\u00020\u00082\u0006\u00109\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008:\u0010\u0011J\u000f\u0010;\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008;\u0010\u0007J\u0017\u0010<\u001a\u00020\u00082\u0006\u00109\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008<\u0010\u0011J\u0015\u0010>\u001a\u00020\u00082\u0006\u0010=\u001a\u00020\u001d\u00a2\u0006\u0004\u0008>\u0010?J\u000f\u0010@\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008@\u0010\u0007J\u000f\u0010A\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008A\u0010\u0007J\u0019\u0010D\u001a\u00020\u00082\u0008\u0010C\u001a\u0004\u0018\u00010BH\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u000f\u0010F\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008F\u0010\u0007J\u000f\u0010G\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008G\u0010\u0007R$\u0010M\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010)\"\u0004\u0008K\u0010LR$\u0010Q\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010I\u001a\u0004\u0008O\u0010)\"\u0004\u0008P\u0010LR$\u0010U\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010I\u001a\u0004\u0008S\u0010)\"\u0004\u0008T\u0010LR$\u0010Y\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010I\u001a\u0004\u0008W\u0010)\"\u0004\u0008X\u0010LR\u0016\u0010[\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010IR\u0018\u0010^\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010`R\u001b\u0010f\u001a\u00020a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010eR\u001e\u0010k\u001a\n\u0012\u0004\u0012\u00020h\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u001d\u0010p\u001a\u0004\u0018\u00010l8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008m\u0010c\u001a\u0004\u0008n\u0010oR\u0018\u0010t\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0016\u0010w\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0018\u0010y\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010IR\u0016\u0010{\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010vR\u0016\u0010}\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010vR\u0016\u0010\u007f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010v\u00a8\u0006\u0081\u0001"
    }
    d2 = {
        "Lcom/transsion/member/MemberPremiumFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lwm/o;",
        "Landroid/view/View$OnClickListener;",
        "Ldz/a;",
        "Lcom/transsion/baselib/report/g;",
        "<init>",
        "()V",
        "",
        "G0",
        "",
        "expanded",
        "O0",
        "(Z)V",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "userInfo",
        "Q0",
        "(Lcom/transsnet/loginapi/bean/UserInfo;)V",
        "Lcom/transsion/memberapi/MemberDetail;",
        "memberDetail",
        "I0",
        "(Lcom/transsion/memberapi/MemberDetail;)V",
        "S0",
        "H0",
        "y0",
        "v0",
        "E0",
        "()Z",
        "t0",
        "",
        "color",
        "",
        "fraction",
        "s0",
        "(IF)I",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "x0",
        "(Landroid/view/LayoutInflater;)Lwm/o;",
        "",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "initViewData",
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
        "u0",
        "user",
        "onLogin",
        "onLogout",
        "onUpdateUserInfo",
        "points",
        "N0",
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
        "getSource",
        "K0",
        "(Ljava/lang/String;)V",
        "source",
        "b",
        "getSceneId",
        "J0",
        "sceneId",
        "c",
        "getTraceId",
        "M0",
        "traceId",
        "d",
        "getSubjectId",
        "L0",
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
        "w0",
        "()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;",
        "mLoadingDialog",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "i",
        "Landroidx/activity/result/b;",
        "loginLaunch",
        "Lcom/transsnet/loginapi/ILoginApi;",
        "j",
        "getMLoginApi",
        "()Lcom/transsnet/loginapi/ILoginApi;",
        "mLoginApi",
        "Lcom/transsion/member/premium/PremiumContentController;",
        "k",
        "Lcom/transsion/member/premium/PremiumContentController;",
        "premiumContentController",
        "l",
        "Z",
        "isFirstResume",
        "m",
        "oldUid",
        "n",
        "shouldRefreshPurchasedInfo",
        "o",
        "isPremium",
        "p",
        "isSelf",
        "q",
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
.field public static final q:Lcom/transsion/member/MemberPremiumFragment$a;

.field public static final r:I


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

.field private final j:Lkotlin/Lazy;

.field private k:Lcom/transsion/member/premium/PremiumContentController;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/member/MemberPremiumFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/member/MemberPremiumFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/member/MemberPremiumFragment;->q:Lcom/transsion/member/MemberPremiumFragment$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/MemberPremiumFragment;->r:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/member/MemberPremiumFragment;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/member/MemberPremiumFragment;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/member/MemberPremiumFragment;->e:Ljava/lang/String;

    new-instance v0, Lcom/transsion/member/g0;

    invoke-direct {v0}, Lcom/transsion/member/g0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/MemberPremiumFragment;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/member/h0;

    invoke-direct {v0}, Lcom/transsion/member/h0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/MemberPremiumFragment;->j:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/member/MemberPremiumFragment;->l:Z

    return-void
.end method

.method private static final A0(Landroidx/activity/result/ActivityResult;)V
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

.method private static final B0(Lwm/o;Lcom/transsion/member/MemberPremiumFragment;Landroid/view/View;IIII)V
    .locals 0

    const/16 p2, 0x14

    const/16 p3, 0x1c

    const/16 p5, 0x12

    invoke-static {p5, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    int-to-float p3, p4

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p3, p4

    const/4 p4, 0x0

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-static {p3, p4, p5}, Lkotlin/ranges/RangesKt;->l(FFF)F

    move-result p3

    iget-object p0, p0, Lwm/o;->j:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2, p3}, Lcom/transsion/member/MemberPremiumFragment;->s0(IF)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lwm/o;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lwm/o;->i:Lcom/transsion/member/view/PremiumContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/member/view/PremiumContentView;->checkVisible()V

    :cond_0
    return-void
.end method

.method private static final C0(Lcom/transsion/member/MemberPremiumFragment;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/member/MemberPremiumFragment;->g:Lcom/transsion/memberapi/MemberDetail;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhj/b;->k(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/member/MemberPremiumFragment;->I0(Lcom/transsion/memberapi/MemberDetail;)V

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/member/MemberPremiumFragment;->Q0(Lcom/transsnet/loginapi/bean/UserInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final D0(Lcom/transsion/member/MemberPremiumFragment;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/member/MemberPremiumFragment;->u0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final E0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/member/MemberPremiumFragment;->p:Z

    return v0
.end method

.method private static final F0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;
    .locals 1

    new-instance v0, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    invoke-direct {v0}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;-><init>()V

    return-object v0
.end method

.method private final G0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberPremiumFragment;->k:Lcom/transsion/member/premium/PremiumContentController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/member/premium/PremiumContentController;->I()V

    :cond_0
    return-void
.end method

.method private final H0()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/member/MemberPremiumFragment;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->y0()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/member/MemberPremiumFragment;->n:Z

    return-void
.end method

.method private final I0(Lcom/transsion/memberapi/MemberDetail;)V
    .locals 8

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
    sget-object v6, Lcom/transsion/member/MemberPremiumFragment$b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    const/16 v6, 0x8

    if-eq v2, v0, :cond_6

    if-eq v2, v4, :cond_6

    const/4 v7, 0x3

    if-eq v2, v7, :cond_6

    const/4 p1, 0x4

    if-eq v2, p1, :cond_3

    const/4 p1, 0x5

    if-ne v2, p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lwm/o;->f:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lwm/o;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lwm/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_14

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object v5

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lwm/o;->f:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lwm/o;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lwm/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/transsion/memberapi/MemberInfo;->getVipLevel()I

    move-result p1

    if-eqz p1, :cond_13

    if-eq p1, v0, :cond_f

    if-eq p1, v4, :cond_b

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lwm/o;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_c

    sget v2, Lcom/transsion/member/R$mipmap;->icon_premium_svip:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lwm/o;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lwm/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_e

    sget v2, Lcom/transsion/member/R$string;->member_date_left:I

    invoke-virtual {v5}, Lcom/transsion/memberapi/MemberInfo;->getExpiryDate()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v3

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lwm/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lwm/o;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_10

    sget v2, Lcom/transsion/member/R$mipmap;->icon_premium_vip:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lwm/o;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_12

    iget-object p1, p1, Lwm/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_12

    sget v2, Lcom/transsion/member/R$string;->member_date_left:I

    invoke-virtual {v5}, Lcom/transsion/memberapi/MemberInfo;->getExpiryDate()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v3

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lwm/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_13
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lwm/o;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lwm/o;->f:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    :goto_3
    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->S0()V

    invoke-virtual {p0, v1}, Lcom/transsion/member/MemberPremiumFragment;->N0(I)V

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->H0()V

    return-void
.end method

.method private final O0(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/o;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void

    :cond_3
    new-instance p1, Lcom/transsion/member/l0;

    invoke-direct {p1, v0, v1}, Lcom/transsion/member/l0;-><init>(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private static final P0(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v2, 0x30

    invoke-static {v2}, Lgk/b;->a(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    sub-int v4, v2, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private final Q0(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 16

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lwm/o;

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    move-result v2

    const/4 v3, 0x4

    const-string v4, "avatarBg"

    const/4 v5, 0x1

    const-string v6, "ivAvatarPremium"

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ne v2, v5, :cond_5

    iget-object v2, v1, Lwm/o;->b:Landroid/view/View;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lwm/o;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v2, Lej/f;->a:Lej/f$a;

    iget-object v4, v1, Lwm/o;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    sget v4, Lcom/tn/lib/widget/R$mipmap;->profile_default_avatar:I

    invoke-virtual {v2, v4}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v2

    iget-object v4, v1, Lwm/o;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    invoke-static {}, Landroidx/core/text/a;->c()Landroidx/core/text/a;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/core/text/u;->a:Landroidx/core/text/t;

    invoke-virtual {v2, v4, v5}, Landroidx/core/text/a;->m(Ljava/lang/String;Landroidx/core/text/t;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {v0, v8}, Lcom/transsion/member/MemberPremiumFragment;->O0(Z)V

    iget-object v2, v1, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v9, v9, v9, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v4, :cond_1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_0

    :cond_1
    move-object v2, v9

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v7}, Lgk/b;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_2
    iget-object v2, v1, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iget-object v2, v1, Lwm/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v4, :cond_3

    move-object v9, v2

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    :cond_3
    if-eqz v9, :cond_4

    invoke-static {v3}, Lgk/b;->a(I)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_4
    iget-object v1, v1, Lwm/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_4

    :cond_5
    iget-object v2, v1, Lwm/o;->b:Landroid/view/View;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lwm/o;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_6

    sget v6, Lcom/transsion/member/R$string;->member_login:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object v4, v9

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_7

    sget v6, Lcom/tn/lib/widget/R$mipmap;->ic_arrow_right_for_member:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_7
    move-object v4, v9

    :goto_2
    invoke-virtual {v2, v9, v9, v4, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v10, v1, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "ivName"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/transsion/member/k0;

    invoke-direct {v13, v0}, Lcom/transsion/member/k0;-><init>(Lcom/transsion/member/MemberPremiumFragment;)V

    const/4 v14, 0x1

    const/4 v15, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v10 .. v15}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-direct {v0, v5}, Lcom/transsion/member/MemberPremiumFragment;->O0(Z)V

    iget-object v2, v1, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v4, :cond_8

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_3

    :cond_8
    move-object v2, v9

    :goto_3
    if-eqz v2, :cond_9

    invoke-static {v7}, Lgk/b;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_9
    iget-object v2, v1, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iget-object v2, v1, Lwm/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v4, :cond_a

    move-object v9, v2

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    :cond_a
    if-eqz v9, :cond_b

    invoke-static {v3}, Lgk/b;->a(I)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_b
    iget-object v1, v1, Lwm/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_c
    :goto_4
    return-void
.end method

.method private static final R0(Lcom/transsion/member/MemberPremiumFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/transsnet/loginapi/ILoginApi;->g(Ldz/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

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

.method private final S0()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/rewardscenterapi/IRewardsCenterApi;->a()Lcom/transsion/rewardscenterapi/RewardsCenterData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/RewardsCenterData;->getLottery()Lcom/transsion/rewardscenterapi/Lottery;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/Lottery;->getActivityId()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private final getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberPremiumFragment;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method public static synthetic j0(Lwm/o;Lcom/transsion/member/MemberPremiumFragment;Landroid/view/View;IIII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/member/MemberPremiumFragment;->B0(Lwm/o;Lcom/transsion/member/MemberPremiumFragment;Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic k0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/member/MemberPremiumFragment;->mLoginApi_delegate$lambda$1()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l0(Lcom/transsion/member/MemberPremiumFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/MemberPremiumFragment;->D0(Lcom/transsion/member/MemberPremiumFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m0(Lcom/transsion/member/MemberPremiumFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberPremiumFragment;->R0(Lcom/transsion/member/MemberPremiumFragment;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
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

.method public static synthetic n0(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberPremiumFragment;->P0(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/member/MemberPremiumFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberPremiumFragment;->z0(Lcom/transsion/member/MemberPremiumFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/MemberPremiumFragment;->A0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/member/MemberPremiumFragment;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberPremiumFragment;->C0(Lcom/transsion/member/MemberPremiumFragment;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;
    .locals 1

    invoke-static {}, Lcom/transsion/member/MemberPremiumFragment;->F0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method private final s0(IF)I
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

.method private final t0()V
    .locals 2

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    return-void
.end method

.method private final v0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/member/MemberActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/member/MemberActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseNewActivity;->w0()V

    :cond_1
    return-void
.end method

.method private final w0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberPremiumFragment;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    return-object v0
.end method

.method private final y0()V
    .locals 13

    iget-boolean v0, p0, Lcom/transsion/member/MemberPremiumFragment;->o:Z

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
    iget-object v2, p0, Lcom/transsion/member/MemberPremiumFragment;->a:Ljava/lang/String;

    sget-object v3, Lcom/transsion/memberapi/MemberSource;->SOURCE_LANDSCAPE_PLAY:Lcom/transsion/memberapi/MemberSource;

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberSource;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lcom/transsion/member/R$string;->member_back_to_watch:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_2
    move-object v2, v1

    goto/16 :goto_2

    :cond_3
    sget-object v3, Lcom/transsion/memberapi/MemberSource;->SOURCE_HDDL:Lcom/transsion/memberapi/MemberSource;

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberSource;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lcom/transsion/member/R$string;->member_back:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/transsion/memberapi/MemberSource;->SOURCE_AD_DIALOG:Lcom/transsion/memberapi/MemberSource;

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberSource;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/transsion/memberapi/MemberSource;->SOURCE_DOWNLOAD_DIALOG:Lcom/transsion/memberapi/MemberSource;

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberSource;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/transsion/memberapi/MemberSource;->SOURCE_OTHER_DOWNLOAD_DIALOG:Lcom/transsion/memberapi/MemberSource;

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberSource;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/transsion/memberapi/MemberSource;->SOURCE_MULTI_DL:Lcom/transsion/memberapi/MemberSource;

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberSource;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/transsion/member/MemberActivity;

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lcom/transsion/member/R$string;->member_explore_now:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lcom/transsion/member/R$string;->member_back:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lcom/transsion/member/R$string;->member_back_to_download:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    sget-object v3, Llg/a;->a:Llg/a$a;

    iget-object v4, p0, Lcom/transsion/member/MemberPremiumFragment;->a:Ljava/lang/String;

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

    new-instance v10, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;

    invoke-direct {v10, p0, v0, v2, v1}, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;-><init>(Lcom/transsion/member/MemberPremiumFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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
.end method

.method private static final z0(Lcom/transsion/member/MemberPremiumFragment;Landroid/view/View;)V
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


# virtual methods
.method public final J0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberPremiumFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public final K0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberPremiumFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public final L0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberPremiumFragment;->d:Ljava/lang/String;

    return-void
.end method

.method public final M0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberPremiumFragment;->c:Ljava/lang/String;

    return-void
.end method

.method public final N0(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberPremiumFragment;->g:Lcom/transsion/memberapi/MemberDetail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getPointInfo()Lcom/transsion/memberapi/PointInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/memberapi/PointInfo;->setPoint(I)V

    :cond_0
    return-void
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberPremiumFragment;->x0(Landroid/view/LayoutInflater;)Lwm/o;

    move-result-object p1

    return-object p1
.end method

.method public initListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lwm/o;->e:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/member/d0;

    invoke-direct {v1, p0}, Lcom/transsion/member/d0;-><init>(Lcom/transsion/member/MemberPremiumFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public initViewData()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->v0()V

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsnet/loginapi/ILoginApi;->g(Ldz/a;)V

    :cond_0
    new-instance v0, Lf/j;

    invoke-direct {v0}, Lf/j;-><init>()V

    new-instance v1, Lcom/transsion/member/i0;

    invoke-direct {v1}, Lcom/transsion/member/i0;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/MemberPremiumFragment;->i:Landroidx/activity/result/b;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/o;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/member/MemberActivity;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lwm/o;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lwm/o;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->t0()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lwm/o;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lwm/o;->k:Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/transsion/member/j0;

    invoke-direct {v2, v0, p0}, Lcom/transsion/member/j0;-><init>(Lwm/o;Lcom/transsion/member/MemberPremiumFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_2
    return-void
.end method

.method public initViewModel()V
    .locals 10

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lwm/o;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lwm/o;->i:Lcom/transsion/member/view/PremiumContentView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/member/view/PremiumContentView;->setActivity(Z)V

    iget-object v1, p0, Lcom/transsion/member/MemberPremiumFragment;->b:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    iget-object v3, p0, Lcom/transsion/member/MemberPremiumFragment;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    iget-object v3, p0, Lcom/transsion/member/MemberPremiumFragment;->d:Ljava/lang/String;

    const-string v4, "memberdetail"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/transsion/member/view/PremiumContentView;->setTrackerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/member/premium/PremiumContentController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    const-string v3, "getViewLifecycleOwner(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/transsion/member/premium/PremiumContentController$a;

    new-instance v5, Lcom/transsion/member/e0;

    invoke-direct {v5, p0}, Lcom/transsion/member/e0;-><init>(Lcom/transsion/member/MemberPremiumFragment;)V

    new-instance v7, Lcom/transsion/member/f0;

    invoke-direct {v7, p0}, Lcom/transsion/member/f0;-><init>(Lcom/transsion/member/MemberPremiumFragment;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/transsion/member/premium/PremiumContentController$a;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/transsion/member/premium/PremiumContentController;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/u;Lcom/transsion/member/view/PremiumContentView;Lcom/transsion/member/premium/PremiumContentController$a;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "requireActivity(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/transsion/member/premium/PremiumContentController;->t(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/transsion/member/MemberPremiumFragment;->k:Lcom/transsion/member/premium/PremiumContentController;

    iget-object v0, p0, Lcom/transsion/member/MemberPremiumFragment;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {p0, v0}, Lcom/transsion/member/MemberPremiumFragment;->Q0(Lcom/transsnet/loginapi/bean/UserInfo;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public isShowPageStateLayoutTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/transsion/member/MemberPremiumFragment;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/transsion/member/MemberPremiumFragment;->m:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/member/MemberPremiumFragment;->f:Lcom/transsnet/loginapi/bean/UserInfo;

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
    iget-object p1, p0, Lcom/transsion/member/MemberPremiumFragment;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, v0

    :goto_3
    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

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
    iput-boolean p1, p0, Lcom/transsion/member/MemberPremiumFragment;->p:Z

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "scene_id"

    iget-object v1, p0, Lcom/transsion/member/MemberPremiumFragment;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_8
    iget-object p1, p0, Lcom/transsion/member/MemberPremiumFragment;->a:Ljava/lang/String;

    const-string v0, "source"

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/transsion/member/MemberPremiumFragment;->a:Ljava/lang/String;

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

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

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
    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->G0()V

    invoke-virtual {p0}, Lcom/transsion/member/MemberPremiumFragment;->logResume()V

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

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->G0()V

    return-void
.end method

.method public onLogout()V
    .locals 0

    invoke-static {p0}, Ldz/a$a;->b(Ldz/a;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->G0()V

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
    .locals 3

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->G0()V

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

    iget-boolean v0, p0, Lcom/transsion/member/MemberPremiumFragment;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/member/MemberPremiumFragment;->l:Z

    :cond_0
    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/member/MemberPremiumFragment;->Q0(Lcom/transsnet/loginapi/bean/UserInfo;)V

    :cond_0
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

.method public final u0()V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->w0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment;->w0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

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

.method public x0(Landroid/view/LayoutInflater;)Lwm/o;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lwm/o;->c(Landroid/view/LayoutInflater;)Lwm/o;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
