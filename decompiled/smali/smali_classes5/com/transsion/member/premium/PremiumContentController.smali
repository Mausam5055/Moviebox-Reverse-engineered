.class public final Lcom/transsion/member/premium/PremiumContentController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/premium/PremiumContentController$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/y0;

.field private final b:Landroidx/lifecycle/u;

.field private final c:Lcom/transsion/member/view/PremiumContentView;

.field private final d:Lcom/transsion/member/premium/PremiumContentController$a;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private g:Lcom/transsion/memberapi/MemberPriceData;

.field private h:Lcom/transsion/memberapi/SkuPromotionDto;

.field private volatile i:Z

.field private j:Z

.field private k:Landroid/app/Activity;

.field private final l:Lcom/transsion/member/premium/PremiumContentController$d;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/u;Lcom/transsion/member/view/PremiumContentView;Lcom/transsion/member/premium/PremiumContentController$a;)V
    .locals 1

    const-string v0, "viewModelStoreOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumContentController;->a:Landroidx/lifecycle/y0;

    iput-object p2, p0, Lcom/transsion/member/premium/PremiumContentController;->b:Landroidx/lifecycle/u;

    iput-object p3, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    iput-object p4, p0, Lcom/transsion/member/premium/PremiumContentController;->d:Lcom/transsion/member/premium/PremiumContentController$a;

    new-instance p1, Lcom/transsion/member/premium/g;

    invoke-direct {p1, p0}, Lcom/transsion/member/premium/g;-><init>(Lcom/transsion/member/premium/PremiumContentController;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumContentController;->e:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/member/premium/h;

    invoke-direct {p1}, Lcom/transsion/member/premium/h;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumContentController;->f:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/member/premium/PremiumContentController$d;

    invoke-direct {p1, p0}, Lcom/transsion/member/premium/PremiumContentController$d;-><init>(Lcom/transsion/member/premium/PremiumContentController;)V

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumContentController;->l:Lcom/transsion/member/premium/PremiumContentController$d;

    return-void
.end method

.method private static final A()Lkotlin/Unit;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "oneroom://com.community.oneroom/profile/user_center_labels_feedback"

    invoke-static {v2, v0, v1, v0}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final B()V
    .locals 7

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->v()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->u()V

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->v()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->x()V

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->v()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->O()V

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->b:Landroidx/lifecycle/u;

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/transsion/member/premium/PremiumContentController$loadInitialData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/member/premium/PremiumContentController$loadInitialData$1;-><init>(Lcom/transsion/member/premium/PremiumContentController;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final C(Lcom/transsion/member/premium/PremiumContentController;)Lcom/transsion/member/MemberViewModel;
    .locals 1

    new-instance v0, Landroidx/lifecycle/v0;

    iget-object p0, p0, Lcom/transsion/member/premium/PremiumContentController;->a:Landroidx/lifecycle/y0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/transsion/member/MemberViewModel;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p0

    check-cast p0, Lcom/transsion/member/MemberViewModel;

    return-object p0
.end method

.method private final D()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->v()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->D()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/member/premium/PremiumContentController;->b:Landroidx/lifecycle/u;

    new-instance v2, Lcom/transsion/member/premium/d;

    invoke-direct {v2, p0}, Lcom/transsion/member/premium/d;-><init>(Lcom/transsion/member/premium/PremiumContentController;)V

    new-instance v3, Lcom/transsion/member/premium/PremiumContentController$f;

    invoke-direct {v3, v2}, Lcom/transsion/member/premium/PremiumContentController$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->v()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->E()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/member/premium/PremiumContentController;->b:Landroidx/lifecycle/u;

    new-instance v2, Lcom/transsion/member/premium/e;

    invoke-direct {v2, p0}, Lcom/transsion/member/premium/e;-><init>(Lcom/transsion/member/premium/PremiumContentController;)V

    new-instance v3, Lcom/transsion/member/premium/PremiumContentController$f;

    invoke-direct {v3, v2}, Lcom/transsion/member/premium/PremiumContentController$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->v()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->A()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/member/premium/PremiumContentController;->b:Landroidx/lifecycle/u;

    new-instance v2, Lcom/transsion/member/premium/f;

    invoke-direct {v2, p0}, Lcom/transsion/member/premium/f;-><init>(Lcom/transsion/member/premium/PremiumContentController;)V

    new-instance v3, Lcom/transsion/member/premium/PremiumContentController$f;

    invoke-direct {v3, v2}, Lcom/transsion/member/premium/PremiumContentController$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method private static final E(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    invoke-virtual {v0, p1}, Lcom/transsion/member/view/PremiumContentView;->setMemberDetail(Lcom/transsion/memberapi/MemberDetail;)V

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->d:Lcom/transsion/member/premium/PremiumContentController$a;

    invoke-virtual {v0}, Lcom/transsion/member/premium/PremiumContentController$a;->h()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/premium/PremiumContentController$c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/member/premium/PremiumContentController$c;-><init>(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/MemberDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/member/premium/PremiumContentController;->d:Lcom/transsion/member/premium/PremiumContentController$a;

    invoke-virtual {p1}, Lcom/transsion/member/premium/PremiumContentController$a;->i()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v0, Lcom/tn/lib/widget/R$string;->failed_toast:I

    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/member/premium/PremiumContentController;->d:Lcom/transsion/member/premium/PremiumContentController$a;

    invoke-virtual {p0}, Lcom/transsion/member/premium/PremiumContentController$a;->g()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final F(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/MemberPriceData;)Lkotlin/Unit;
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-boolean v1, p0, Lcom/transsion/member/premium/PremiumContentController;->i:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemberGoods\u8fd4\u56de\uff01promotionReady ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "liyang"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/member/premium/PremiumContentController;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->h:Lcom/transsion/memberapi/SkuPromotionDto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/memberapi/SkuPromotionDto;->getItems()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/transsion/member/premium/PremiumContentController;->s(Lcom/transsion/memberapi/MemberPriceData;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/transsion/member/premium/PremiumContentController;->g:Lcom/transsion/memberapi/MemberPriceData;

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final G(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/AllMemberRightsData;)Lkotlin/Unit;
    .locals 3

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/memberapi/AllMemberRightsData;->getRightsMap()Lcom/transsion/memberapi/RightsMapData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/memberapi/RightsMapData;->getFeatures()Lcom/transsion/memberapi/FeatureRights;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/memberapi/FeatureRights;->getRights()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/transsion/member/view/PremiumContentView;->refreshFeaturesList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/memberapi/AllMemberRightsData;->getRightsMap()Lcom/transsion/memberapi/RightsMapData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/memberapi/RightsMapData;->getPro()Lcom/transsion/memberapi/FeatureRights;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/memberapi/FeatureRights;->getRights()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/transsion/member/view/PremiumContentView;->setProFeatureData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/memberapi/AllMemberRightsData;->getRightsMap()Lcom/transsion/memberapi/RightsMapData;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/memberapi/RightsMapData;->getBasic()Lcom/transsion/memberapi/FeatureRights;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/memberapi/FeatureRights;->getRights()Ljava/util/List;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/member/view/PremiumContentView;->setBasicFeatureData(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/member/premium/PremiumContentController;->d:Lcom/transsion/member/premium/PremiumContentController$a;

    invoke-virtual {p0}, Lcom/transsion/member/premium/PremiumContentController$a;->g()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final H()Lcom/transsion/member/promotion/PromotionManager;
    .locals 1

    new-instance v0, Lcom/transsion/member/promotion/PromotionManager;

    invoke-direct {v0}, Lcom/transsion/member/promotion/PromotionManager;-><init>()V

    return-object v0
.end method

.method private final J()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->v()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->v()V

    return-void
.end method

.method private final M()V
    .locals 3

    new-instance v0, Lcom/transsion/member/dialog/MemberBasicDialog;

    invoke-direct {v0}, Lcom/transsion/member/dialog/MemberBasicDialog;-><init>()V

    iget-object v1, p0, Lcom/transsion/member/premium/PremiumContentController;->l:Lcom/transsion/member/premium/PremiumContentController$d;

    invoke-virtual {v0, v1}, Lcom/transsion/member/dialog/MemberBasicDialog;->F0(Lzm/f;)V

    const-string v1, "member/memberdetail"

    invoke-virtual {v0, v1}, Lcom/transsion/member/dialog/MemberBasicDialog;->G0(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/member/premium/PremiumContentController;->k:Landroid/app/Activity;

    const-string v2, "MemberBasicDialog"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/premium/PremiumContentController;->E(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/MemberPriceData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/premium/PremiumContentController;->F(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/MemberPriceData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/app/Activity;Lcom/transsion/member/premium/PremiumContentController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/premium/PremiumContentController;->z(Landroid/app/Activity;Lcom/transsion/member/premium/PremiumContentController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/member/premium/PremiumContentController;)Lcom/transsion/member/MemberViewModel;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/premium/PremiumContentController;->C(Lcom/transsion/member/premium/PremiumContentController;)Lcom/transsion/member/MemberViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/member/premium/PremiumContentController;->A()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/transsion/member/premium/PremiumContentController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/premium/PremiumContentController;->y(Lcom/transsion/member/premium/PremiumContentController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/AllMemberRightsData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/premium/PremiumContentController;->G(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/AllMemberRightsData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h()Lcom/transsion/member/promotion/PromotionManager;
    .locals 1

    invoke-static {}, Lcom/transsion/member/premium/PremiumContentController;->H()Lcom/transsion/member/promotion/PromotionManager;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic i(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/MemberPriceData;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/member/premium/PremiumContentController;->s(Lcom/transsion/memberapi/MemberPriceData;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/member/premium/PremiumContentController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/member/premium/PremiumContentController;->u(II)V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/member/premium/PremiumContentController;)Lcom/transsion/member/view/PremiumContentView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/member/premium/PremiumContentController;)Lcom/transsion/member/MemberViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->v()Lcom/transsion/member/MemberViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/member/premium/PremiumContentController;)Lcom/transsion/memberapi/MemberPriceData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/premium/PremiumContentController;->g:Lcom/transsion/memberapi/MemberPriceData;

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/member/premium/PremiumContentController;)Lcom/transsion/memberapi/SkuPromotionDto;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/premium/PremiumContentController;->h:Lcom/transsion/memberapi/SkuPromotionDto;

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/member/premium/PremiumContentController;)Lcom/transsion/member/promotion/PromotionManager;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->w()Lcom/transsion/member/promotion/PromotionManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/member/premium/PremiumContentController;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->J()V

    return-void
.end method

.method public static final synthetic q(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/SkuPromotionDto;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumContentController;->h:Lcom/transsion/memberapi/SkuPromotionDto;

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/member/premium/PremiumContentController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/member/premium/PremiumContentController;->i:Z

    return-void
.end method

.method private final s(Lcom/transsion/memberapi/MemberPriceData;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberPriceData;->getProMembers()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberPriceData;->getBasicMember()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/member/view/PremiumContentView;->setMemberGoodsData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final u(II)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/memberapi/IMemberApi;->f()Z

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x7

    if-gt p2, p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/member/premium/PremiumContentController;->m:Z

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    invoke-virtual {p1}, Lcom/transsion/member/view/PremiumContentView;->getSceneId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "video_detail/vip_banner"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/transsion/member/premium/PremiumContentController;->m:Z

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->M()V

    :cond_1
    return-void
.end method

.method private final v()Lcom/transsion/member/MemberViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/member/MemberViewModel;

    return-object v0
.end method

.method private final w()Lcom/transsion/member/promotion/PromotionManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/member/promotion/PromotionManager;

    return-object v0
.end method

.method private final x(Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumContentController;->k:Landroid/app/Activity;

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    iget-object v1, p0, Lcom/transsion/member/premium/PremiumContentController;->l:Lcom/transsion/member/premium/PremiumContentController$d;

    invoke-virtual {v0, v1}, Lcom/transsion/member/view/PremiumContentView;->setOnPurchaseListener(Lzm/f;)V

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    new-instance v1, Lcom/transsion/member/premium/a;

    invoke-direct {v1, p0}, Lcom/transsion/member/premium/a;-><init>(Lcom/transsion/member/premium/PremiumContentController;)V

    invoke-virtual {v0, v1}, Lcom/transsion/member/view/PremiumContentView;->setOnBasicRenewClickListener(Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    invoke-virtual {v0, p1}, Lcom/transsion/member/view/PremiumContentView;->initMemberCard(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    new-instance v1, Lcom/transsion/member/premium/b;

    invoke-direct {v1, p1, p0}, Lcom/transsion/member/premium/b;-><init>(Landroid/app/Activity;Lcom/transsion/member/premium/PremiumContentController;)V

    invoke-virtual {v0, v1}, Lcom/transsion/member/view/PremiumContentView;->setOnPromoCodeClickListener(Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    new-instance v0, Lcom/transsion/member/premium/c;

    invoke-direct {v0}, Lcom/transsion/member/premium/c;-><init>()V

    invoke-virtual {p1, v0}, Lcom/transsion/member/view/PremiumContentView;->setOnFeedbackClickListener(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final y(Lcom/transsion/member/premium/PremiumContentController;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->M()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final z(Landroid/app/Activity;Lcom/transsion/member/premium/PremiumContentController;)Lkotlin/Unit;
    .locals 2

    sget-object v0, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->f:Lcom/transsion/member/dialog/MemberPromoCodeDialog$a;

    new-instance v1, Lcom/transsion/member/premium/PremiumContentController$b;

    invoke-direct {v1, p1}, Lcom/transsion/member/premium/PremiumContentController$b;-><init>(Lcom/transsion/member/premium/PremiumContentController;)V

    invoke-virtual {v0, v1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog$a;->a(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    move-result-object p1

    const-string v0, "MemberPromoCodeDialog"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final I()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->v()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->w()V

    return-void
.end method

.method public final K()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/member/premium/PremiumContentController;->m:Z

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController;->c:Lcom/transsion/member/view/PremiumContentView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/premium/PremiumContentController$e;

    invoke-direct {v1, p0}, Lcom/transsion/member/premium/PremiumContentController$e;-><init>(Lcom/transsion/member/premium/PremiumContentController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final L(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/member/premium/PremiumContentController;->m:Z

    return-void
.end method

.method public final t(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/member/premium/PremiumContentController;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/member/premium/PremiumContentController;->j:Z

    invoke-direct {p0, p1}, Lcom/transsion/member/premium/PremiumContentController;->x(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->D()V

    invoke-direct {p0}, Lcom/transsion/member/premium/PremiumContentController;->B()V

    return-void
.end method
