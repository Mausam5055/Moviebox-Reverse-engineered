.class public final Lcom/transsion/member/premium/PremiumProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/memberapi/IPremiumApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/premium/PremiumProvider$a;
    }
.end annotation


# static fields
.field private static final e:Lcom/transsion/member/premium/PremiumProvider$a;

.field public static final f:I


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private volatile c:Lcom/transsion/memberapi/MemberDetail;

.field private d:Lcom/transsion/member/view/MemberLayoutView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/member/premium/PremiumProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/member/premium/PremiumProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/member/premium/PremiumProvider;->e:Lcom/transsion/member/premium/PremiumProvider$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/premium/PremiumProvider;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/member/premium/o;

    invoke-direct {v0}, Lcom/transsion/member/premium/o;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/premium/PremiumProvider;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/member/premium/p;

    invoke-direct {v0}, Lcom/transsion/member/premium/p;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/premium/PremiumProvider;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic A()Lvm/a;
    .locals 1

    invoke-static {}, Lcom/transsion/member/premium/PremiumProvider;->G()Lvm/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic B(Lcom/transsion/member/premium/PremiumProvider;)Lvm/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumProvider;->E()Lvm/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/member/premium/PremiumProvider;)Lcom/transsion/memberapi/MemberDetail;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/premium/PremiumProvider;->c:Lcom/transsion/memberapi/MemberDetail;

    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/member/premium/PremiumProvider;Lcom/transsion/memberapi/MemberDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumProvider;->c:Lcom/transsion/memberapi/MemberDetail;

    return-void
.end method

.method private final native E()Lvm/a;
.end method

.method private final native F()Lcom/transsion/member/promotion/PromotionManager;
.end method

.method private static final native G()Lvm/a;
.end method

.method private static final native H()Lcom/transsion/member/promotion/PromotionManager;
.end method

.method private static final native I(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
.end method

.method public static synthetic y()Lcom/transsion/member/promotion/PromotionManager;
    .locals 1

    invoke-static {}, Lcom/transsion/member/premium/PremiumProvider;->H()Lcom/transsion/member/promotion/PromotionManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic z(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/premium/PremiumProvider;->I(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public native a(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lzm/b;ZLjava/lang/String;)V
.end method

.method public native b()Lcom/transsion/memberapi/MemberDetail;
.end method

.method public native c()Z
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumProvider;->F()Lcom/transsion/member/promotion/PromotionManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/member/promotion/PromotionManager;->t(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public native e(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end method

.method public native f()I
.end method

.method public native g(Lzm/j;)V
.end method

.method public native h(Landroid/content/Context;Lzm/f;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native i()I
.end method

.method public native j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native k()Z
.end method

.method public native l(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
.end method

.method public native m()Ljava/lang/String;
.end method

.method public native n()V
.end method

.method public native o()Ljava/lang/Integer;
.end method

.method public native p(Ljava/lang/String;)V
.end method

.method public native q(Lcom/transsion/memberapi/PremiumV2CheckAccessRequestBean;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public r(Landroid/content/Context;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberSource;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 12

    move-object v0, p0

    move-object v2, p1

    move v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/member/view/MemberLayoutView;->onDestroy()V

    :cond_1
    iput-object v3, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    :cond_2
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    const-string v10, ""

    if-eqz v1, :cond_12

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/member/view/MemberLayoutView;->getScreenState()I

    move-result v1

    if-ne v7, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p2}, Lcom/transsion/member/view/MemberLayoutView;->setScreenState(I)V

    :cond_4
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/member/view/MemberLayoutView;->updateViewWithScreenState()V

    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/member/view/MemberLayoutView;->resetControllerFirstShowDlg()V

    :cond_6
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p3}, Lcom/transsion/member/view/MemberLayoutView;->setOnClose(Lkotlin/jvm/functions/Function0;)V

    :cond_7
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v9}, Lcom/transsion/member/view/MemberLayoutView;->setOnPurchaseSucceed(Lkotlin/jvm/functions/Function0;)V

    :cond_8
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_a

    if-nez p7, :cond_9

    move-object v2, v10

    goto :goto_2

    :cond_9
    move-object/from16 v2, p7

    :goto_2
    invoke-virtual {v1, v2}, Lcom/transsion/member/view/MemberLayoutView;->setPageName(Ljava/lang/String;)V

    :cond_a
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/member/view/MemberLayoutView;->updateZeroTreasureState()V

    :cond_b
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_d

    if-nez p8, :cond_c

    move-object v2, v10

    goto :goto_3

    :cond_c
    move-object/from16 v2, p8

    :goto_3
    invoke-virtual {v1, v2}, Lcom/transsion/member/view/MemberLayoutView;->setTraceId(Ljava/lang/String;)V

    :cond_d
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_f

    if-nez p9, :cond_e

    move-object v2, v10

    goto :goto_4

    :cond_e
    move-object/from16 v2, p9

    :goto_4
    invoke-virtual {v1, v2}, Lcom/transsion/member/view/MemberLayoutView;->setSceneId(Ljava/lang/String;)V

    :cond_f
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    if-eqz v1, :cond_11

    if-nez p10, :cond_10

    goto :goto_5

    :cond_10
    move-object/from16 v10, p10

    :goto_5
    invoke-virtual {v1, v10}, Lcom/transsion/member/view/MemberLayoutView;->setSubjectId(Ljava/lang/String;)V

    :cond_11
    iget-object v1, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    return-object v1

    :cond_12
    new-instance v11, Lcom/transsion/member/view/MemberLayoutView;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/member/view/MemberLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, p2}, Lcom/transsion/member/view/MemberLayoutView;->setScreenState(I)V

    if-nez p7, :cond_13

    move-object v1, v10

    goto :goto_6

    :cond_13
    move-object/from16 v1, p7

    :goto_6
    invoke-virtual {v11, v1}, Lcom/transsion/member/view/MemberLayoutView;->setPageName(Ljava/lang/String;)V

    if-nez p8, :cond_14

    move-object v1, v10

    goto :goto_7

    :cond_14
    move-object/from16 v1, p8

    :goto_7
    invoke-virtual {v11, v1}, Lcom/transsion/member/view/MemberLayoutView;->setTraceId(Ljava/lang/String;)V

    if-nez p9, :cond_15

    move-object v1, v10

    goto :goto_8

    :cond_15
    move-object/from16 v1, p9

    :goto_8
    invoke-virtual {v11, v1}, Lcom/transsion/member/view/MemberLayoutView;->setSceneId(Ljava/lang/String;)V

    if-nez p10, :cond_16

    goto :goto_9

    :cond_16
    move-object/from16 v10, p10

    :goto_9
    invoke-virtual {v11, v10}, Lcom/transsion/member/view/MemberLayoutView;->setSubjectId(Ljava/lang/String;)V

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v11, p3, v9, v1, v2}, Lcom/transsion/member/view/MemberLayoutView;->init(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberSource;Lkotlin/jvm/functions/Function2;)V

    iput-object v11, v0, Lcom/transsion/member/premium/PremiumProvider;->d:Lcom/transsion/member/view/MemberLayoutView;

    return-object v11
.end method

.method public native s(Lcom/transsion/memberapi/PremiumConsumeRequestBean;)V
.end method

.method public native t()I
.end method

.method public native u()Z
.end method

.method public native v()V
.end method

.method public native w()I
.end method

.method public native x()I
.end method
