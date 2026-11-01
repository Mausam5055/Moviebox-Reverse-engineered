.class public final Lcom/transsion/member/promotion/PromotionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/promotion/PromotionManager$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/transsion/member/promotion/PromotionManager$a;

.field public static final c:I


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/member/promotion/PromotionManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/member/promotion/PromotionManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/member/promotion/PromotionManager;->b:Lcom/transsion/member/promotion/PromotionManager$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/promotion/PromotionManager;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/member/promotion/n;

    invoke-direct {v0}, Lcom/transsion/member/promotion/n;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/promotion/PromotionManager;->a:Lkotlin/Lazy;

    return-void
.end method

.method private static final native B(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;
.end method

.method private static final native C(Lkotlin/jvm/functions/Function1;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;
.end method

.method private static final native D(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
.end method

.method private static final native E()Lcom/transsion/member/promotion/SkuPromotionRepository;
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/member/promotion/PromotionManager;->B(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/member/promotion/PromotionManager;->z(Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/promotion/PromotionManager;->x(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/promotion/PromotionManager;->D(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/promotion/PromotionManager;->v(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/member/promotion/PromotionManager;->u(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/promotion/PromotionManager;->w(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lkotlin/jvm/functions/Function1;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/promotion/PromotionManager;->C(Lkotlin/jvm/functions/Function1;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i()Lcom/transsion/member/promotion/SkuPromotionRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/member/promotion/PromotionManager;->E()Lcom/transsion/member/promotion/SkuPromotionRepository;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic j(Lcom/transsion/member/promotion/PromotionManager;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/member/promotion/PromotionManager;->m(Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/member/promotion/PromotionManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/member/promotion/PromotionManager;->n(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/member/promotion/PromotionManager;)Lcom/transsion/member/promotion/SkuPromotionRepository;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/promotion/PromotionManager;->q()Lcom/transsion/member/promotion/SkuPromotionRepository;

    move-result-object p0

    return-object p0
.end method

.method private final native m(Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
.end method

.method private final native n(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method private final native q()Lcom/transsion/member/promotion/SkuPromotionRepository;
.end method

.method private final native r(Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;)Z
.end method

.method private final native s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
.end method

.method private static final u(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;
    .locals 1

    const-string v0, "activity"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promotionItem"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lii/b;->a:Lii/b;

    invoke-virtual {v0, p0}, Lii/b;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/transsion/member/promotion/MemberPromotionDialog;

    invoke-direct {p0}, Lcom/transsion/member/promotion/MemberPromotionDialog;-><init>()V

    invoke-virtual {p0, p5}, Lcom/transsion/member/promotion/MemberPromotionDialog;->M0(Lcom/transsion/memberapi/SkuPromotionItem;)Lcom/transsion/member/promotion/MemberPromotionDialog;

    move-result-object p0

    new-instance p5, Lcom/transsion/member/promotion/p;

    invoke-direct {p5, p1}, Lcom/transsion/member/promotion/p;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p5}, Lcom/transsion/member/promotion/MemberPromotionDialog;->K0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/promotion/MemberPromotionDialog;

    move-result-object p0

    new-instance p1, Lcom/transsion/member/promotion/q;

    invoke-direct {p1, p2}, Lcom/transsion/member/promotion/q;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1}, Lcom/transsion/member/promotion/MemberPromotionDialog;->L0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/promotion/MemberPromotionDialog;

    move-result-object p0

    new-instance p1, Lcom/transsion/member/promotion/r;

    invoke-direct {p1, p3}, Lcom/transsion/member/promotion/r;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1}, Lcom/transsion/member/promotion/MemberPromotionDialog;->J0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/promotion/MemberPromotionDialog;

    move-result-object p0

    const-string p1, "MemberPromotionDialog"

    invoke-virtual {p0, p4, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final native v(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
.end method

.method private static final native w(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
.end method

.method private static final native x(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
.end method

.method private static final native z(Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;
.end method


# virtual methods
.method public final native A(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
.end method

.method public final native o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final native p()V
.end method

.method public final t(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/member/promotion/PromotionManager$showDialog$1;

    sget-object v0, Lcom/transsion/member/promotion/g;->a:Lcom/transsion/member/promotion/g;

    invoke-direct {v5, v0}, Lcom/transsion/member/promotion/PromotionManager$showDialog$1;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/transsion/member/promotion/o;

    invoke-direct {v6, p2, p3, p4, p5}, Lcom/transsion/member/promotion/o;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const-string v3, "MARKETING_PLACEMENT_SCENE_TYPE_OFFER_POPUP"

    const-string v4, "dialog"

    move-object v1, p0

    move-object v2, p1

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/transsion/member/promotion/PromotionManager;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final native y(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end method
