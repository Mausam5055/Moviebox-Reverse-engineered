.class public final Lcom/transsion/player/longvideo/member/ResolutionMemberManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    new-instance v0, Lcom/transsion/player/longvideo/member/l;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/member/l;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/baselib/db/member/MemberResolutionDao;
    .locals 1

    invoke-static {}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->g()Lcom/transsion/baselib/db/member/MemberResolutionDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/player/longvideo/member/ResolutionMemberManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/player/longvideo/member/ResolutionMemberManager;)Lcom/transsion/baselib/db/member/MemberResolutionDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->e()Lcom/transsion/baselib/db/member/MemberResolutionDao;

    move-result-object p0

    return-object p0
.end method

.method private final d()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final e()Lcom/transsion/baselib/db/member/MemberResolutionDao;
    .locals 1

    sget-object v0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/member/MemberResolutionDao;

    return-object v0
.end method

.method private static final g()Lcom/transsion/baselib/db/member/MemberResolutionDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->s1()Lcom/transsion/baselib/db/member/MemberResolutionDao;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final f(Lgo/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isVipResolutionTip$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isVipResolutionTip$2;-><init>(Lgo/a;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(Landroidx/fragment/app/FragmentManager;Lcom/transsion/memberapi/MemberSource;Lgo/a;Ljava/lang/String;Lzx/e;)V
    .locals 4

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyx/a;->a:Lyx/a;

    invoke-virtual {v0, p2}, Lyx/a;->k(Lcom/transsion/memberapi/MemberSource;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->d()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " --> showRewardDialog() --> \u89e3\u9501\u9ad8\u6e05\u89c6\u9891\u64ad\u653e\u6743\u9650\u5f00\u5173\u5173\u95ed --> from = "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3, v2, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    invoke-virtual {v0}, Lcom/transsion/ad/ps/activate/PSActivateManager;->d()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->d()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " --> showRewardDialog() --> \u6ca1\u6709\u6fc0\u52b1\u5e7f\u544a\uff0c\u65e0\u6cd5\u89e3\u9501\u9ad8\u6e05\u89c6\u9891\u64ad\u653e\u6743\u9650 --> from = "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3, v2, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p5, :cond_1

    invoke-interface {p5, v3}, Lzx/e;->a(Z)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    invoke-direct {v0}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;-><init>()V

    new-instance v1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;

    invoke-direct {v1, p3, p5}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;-><init>(Lgo/a;Lzx/e;)V

    invoke-virtual {v0, v1}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;->v0(Lzx/e;)V

    invoke-virtual {v0, p2, p4}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;->r0(Lcom/transsion/memberapi/MemberSource;Ljava/lang/String;)V

    const-string p2, "\u89e3\u9501\u9ad8\u6e05\u89c6\u9891\u64ad\u653e\u6743\u9650"

    invoke-virtual {v0, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final i(Lgo/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$unlock$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$unlock$2;-><init>(Lgo/a;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final j(Lgo/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$updateVipResolutionTip$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$updateVipResolutionTip$2;-><init>(Lgo/a;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
