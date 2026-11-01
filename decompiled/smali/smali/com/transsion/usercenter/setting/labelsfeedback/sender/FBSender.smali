.class public final Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    invoke-direct {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;-><init>()V

    sput-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->a:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/a;

    invoke-direct {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->i()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->l(Ljava/lang/String;Landroid/app/Application;)V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->n(Ljava/lang/String;)V

    return-void
.end method

.method private final e()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->g()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "key_failed_json"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final g()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method

.method private final h(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-eqz p2, :cond_0

    sget-object v0, Lak/a0;->a:Lak/a0;

    invoke-virtual {v0, p2}, Lak/a0;->g(Ljava/lang/Throwable;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to schedule feedback work: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const-string v2, "FBSender"

    invoke-virtual {v0, v2, p2, v1}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->n(Ljava/lang/String;)V

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget p2, Lcom/transsion/usercenter/R$string;->upload_failed:I

    invoke-virtual {p1, p2}, Luh/b$a;->d(I)V

    return-void
.end method

.method private static final i()Lcom/tencent/mmkv/MMKV;
    .locals 2

    const-string v0, "feedback_mmkv"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkvWithID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final l(Ljava/lang/String;Landroid/app/Application;)V
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const/4 v0, 0x0

    sget-object v1, Lak/a0;->a:Lak/a0;

    move-object/from16 v6, p2

    invoke-virtual {v1, v6}, Lak/a0;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {v11, v12, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v1, Landroidx/work/v$a;

    const-class v2, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;

    invoke-direct {v1, v2}, Landroidx/work/v$a;-><init>(Ljava/lang/Class;)V

    const-string v2, "key_work_data"

    invoke-static {v2, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lkotlin/Pair;

    aput-object v2, v3, v0

    new-instance v2, Landroidx/work/f$a;

    invoke-direct {v2}, Landroidx/work/f$a;-><init>()V

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroidx/work/f$a;->b(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/f$a;

    invoke-virtual {v2}, Landroidx/work/f$a;->a()Landroidx/work/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/work/i0$a;->l(Landroidx/work/f;)Landroidx/work/i0$a;

    invoke-virtual {v1}, Landroidx/work/i0$a;->b()Landroidx/work/i0;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/work/v;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/cloud/tmc/integration/b;->a(Landroid/app/Application;)Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v6

    :goto_0
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Landroidx/work/WorkManager;->a:Landroidx/work/WorkManager$a;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroidx/work/WorkManager$a;->a(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v4

    invoke-virtual {v5}, Landroidx/work/i0;->a()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/work/WorkManager;->g(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;

    invoke-direct {v3, v2, v11, v12}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;-><init>(Landroidx/lifecycle/LiveData;Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v13

    new-instance v16, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$sendJson$1$1;

    const/4 v10, 0x0

    move-object/from16 v1, v16

    move-object/from16 v6, p2

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$sendJson$1$1;-><init>(Landroidx/lifecycle/LiveData;Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;Landroidx/work/WorkManager;Landroidx/work/v;Landroid/app/Application;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->a:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    invoke-direct {v1, v12, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private final m(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key_failed_json"

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->g()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->g()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/mmkv/MMKV;->v(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private final n(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->m(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update feedback retry data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "FBSender"

    invoke-virtual {v0, v2, p1, v1}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final f()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;
    .locals 3

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_1
    const-class v1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "unable to parse json"

    :cond_1
    const-string v1, "feedback"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method

.method public final j(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->a:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    invoke-direct {v1, v0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->l(Ljava/lang/String;Landroid/app/Application;)V

    :cond_2
    return-void
.end method

.method public final k(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Landroid/app/Application;)V
    .locals 7

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$send$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$send$1;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
