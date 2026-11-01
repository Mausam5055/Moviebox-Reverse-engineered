.class public final Lcom/transsion/commercialization/task/TaskCenterProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/commercializationapi/ITaskCenterApi;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/commercialization/task/o;

    invoke-direct {v0}, Lcom/transsion/commercialization/task/o;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic g()Lcom/transsion/commercialization/task/treasure/b;
    .locals 1

    invoke-static {}, Lcom/transsion/commercialization/task/TaskCenterProvider;->l()Lcom/transsion/commercialization/task/treasure/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic h(Lcom/transsion/commercialization/task/TaskCenterProvider;Lok/b;Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/commercialization/task/TaskCenterProvider;->m(Lok/b;Lcom/transsion/memberapi/MemberCheckResult;)V

    return-void
.end method

.method private final i(Lok/b;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/memberapi/MemberSceneType;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/commercialization/task/TaskCenterProvider$a;

    invoke-direct {v1, p0, p1, p4, p3}, Lcom/transsion/commercialization/task/TaskCenterProvider$a;-><init>(Lcom/transsion/commercialization/task/TaskCenterProvider;Lok/b;Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/String;)V

    invoke-interface {v0, p4, p2, v1}, Lcom/transsion/memberapi/IMemberApi;->z(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lzm/a;)V

    :cond_0
    return-void
.end method

.method private final k()Lcom/transsion/commercialization/task/treasure/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/task/treasure/b;

    return-object v0
.end method

.method private static final l()Lcom/transsion/commercialization/task/treasure/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/commercialization/task/treasure/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/task/treasure/b;

    return-object v0
.end method

.method private final m(Lok/b;Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/transsion/memberapi/MemberSource;->SOURCE_OTHER_DOWNLOAD_DIALOG:Lcom/transsion/memberapi/MemberSource;

    new-instance v3, Lcom/transsion/commercialization/task/TaskCenterProvider$b;

    invoke-direct {v3, p0, p1}, Lcom/transsion/commercialization/task/TaskCenterProvider$b;-><init>(Lcom/transsion/commercialization/task/TaskCenterProvider;Lok/b;)V

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/transsion/memberapi/IMemberApi;->w(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lcom/transsion/memberapi/MemberCheckResult;Lzm/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object p4

    if-eqz p4, :cond_0

    new-instance v0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

    invoke-direct {v0}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->x0(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

    move-result-object p1

    const-string p2, "CheckLotteryLoadingDialog"

    invoke-virtual {p1, p4, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public b(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    new-instance v0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;

    invoke-direct {v0}, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;-><init>()V

    invoke-virtual {v0, p2}, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->t0(Lkotlin/jvm/functions/Function1;)Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;

    move-result-object p2

    const-string v0, "MemberPageVideoTaskDialog"

    invoke-virtual {p2, p1, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lok/b;)V
    .locals 8

    new-instance v7, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;-><init>(Lok/b;Lcom/transsion/memberapi/MemberCheckResult;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->h()V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/transsion/memberapi/MemberCheckResult;Lok/b;)V
    .locals 1

    const-string v0, "genre"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    invoke-direct {v0}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;-><init>()V

    invoke-virtual {v0, p2}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->z0(Lcom/transsion/memberapi/MemberCheckResult;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->x0(Ljava/lang/String;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    move-result-object p1

    sget-object p2, Lcom/transsion/memberapi/MemberSceneType;->SCENE_MULTIDL:Lcom/transsion/memberapi/MemberSceneType;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->A0(Lcom/transsion/memberapi/MemberSceneType;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->y0(Lok/b;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "TreasureStyleADialog"

    invoke-virtual {p1, p2, p3}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/transsion/commercialization/task/TaskCenterProvider$getLotteryUserInfoEntity$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/commercialization/task/TaskCenterProvider$getLotteryUserInfoEntity$1;

    iget v1, v0, Lcom/transsion/commercialization/task/TaskCenterProvider$getLotteryUserInfoEntity$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/commercialization/task/TaskCenterProvider$getLotteryUserInfoEntity$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/commercialization/task/TaskCenterProvider$getLotteryUserInfoEntity$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/commercialization/task/TaskCenterProvider$getLotteryUserInfoEntity$1;-><init>(Lcom/transsion/commercialization/task/TaskCenterProvider;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p1, v4, Lcom/transsion/commercialization/task/TaskCenterProvider$getLotteryUserInfoEntity$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/commercialization/task/TaskCenterProvider$getLotteryUserInfoEntity$1;->label:I

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/commercialization/task/TaskCenterProvider;->k()Lcom/transsion/commercialization/task/treasure/b;

    move-result-object v1

    iput v2, v4, Lcom/transsion/commercialization/task/TaskCenterProvider$getLotteryUserInfoEntity$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/commercialization/task/treasure/b$a;->b(Lcom/transsion/commercialization/task/treasure/b;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    goto :goto_3

    :cond_4
    move-object p1, v7

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v7, p1

    goto :goto_6

    :cond_5
    sget-object p1, Lok/c;->a:Lok/c;

    invoke-virtual {p0}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> getLotteryUserInfoEntity() --> it = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lok/c;->b(Ljava/lang/String;)V

    :goto_6
    return-object v7
.end method

.method public f(Ljava/lang/Integer;Ljava/lang/String;Lok/b;Lcom/transsion/memberapi/MemberSceneType;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lok/c;->a:Lok/c;

    invoke-virtual {p0}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/transsion/memberapi/MemberSceneType;->getValue()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> interception() --> resolution = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- genre = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- sceneType = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lok/c;->b(Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, p2, p4}, Lcom/transsion/commercialization/task/TaskCenterProvider;->i(Lok/b;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/memberapi/MemberSceneType;)V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/commercialization/task/TaskCenterProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
