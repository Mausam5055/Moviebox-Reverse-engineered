.class public final Lcom/transsion/mpush/core/trigger/PushTriggerManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/mpush/core/trigger/PushTriggerManager;

.field private static b:Lkotlinx/coroutines/n0;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Lcom/transsion/mpush/core/trigger/PushTriggerReceiver;

.field private static e:Lcom/transsion/mpush/core/trigger/b;

.field private static f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;

    invoke-direct {v0}, Lcom/transsion/mpush/core/trigger/PushTriggerManager;-><init>()V

    sput-object v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->a:Lcom/transsion/mpush/core/trigger/PushTriggerManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    sput-object v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->b:Lkotlinx/coroutines/n0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->e(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->f()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method private final c(Ljava/lang/String;)V
    .locals 13

    sget-object v6, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010\u89e6\u53d1\u7ba1\u7406\u3011\u6536\u5230\u7cfb\u7edf\u5e7f\u64ad\uff0c\u52a8\u4f5c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x56ac2893

    if-eq v0, v1, :cond_3

    const v1, 0x311a1d6c

    if-eq v0, v1, :cond_1

    const v1, 0x31af1c32

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "\u3010\u89e6\u53d1\u7ba1\u7406\u3011\u68c0\u6d4b\u5230\u89e3\u9501\u4e8b\u4ef6\uff0c\u5ef6\u8fdf2\u79d2\u540e\u89e6\u53d1"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v7, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->b:Lkotlinx/coroutines/n0;

    new-instance v10, Lcom/transsion/mpush/core/trigger/PushTriggerManager$handleBroadcastAction$1;

    const/4 p1, 0x0

    invoke-direct {v10, p1}, Lcom/transsion/mpush/core/trigger/PushTriggerManager$handleBroadcastAction$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_1

    :cond_3
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "\u3010\u89e6\u53d1\u7ba1\u7406\u3011\u68c0\u6d4b\u5230\u4eae\u5c4f\u4e8b\u4ef6\uff0c\u89e6\u53d1\u63a8\u9001\u68c0\u6d4b"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    const-string p1, "\u4eae\u5c4f"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->g(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010\u89e6\u53d1\u7ba1\u7406\u3011\u5ffd\u7565\u672a\u77e5\u7684\u5e7f\u64ad\u52a8\u4f5c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static final e(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->a:Lcom/transsion/mpush/core/trigger/PushTriggerManager;

    invoke-direct {v0, p0}, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->c(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final f()Lkotlin/Unit;
    .locals 3

    sget-object v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->a:Lcom/transsion/mpush/core/trigger/PushTriggerManager;

    const-string v1, "\u7f51\u7edc\u53ef\u7528"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->g(Ljava/lang/String;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final d(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->f:Landroid/content/Context;

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const-string v3, "\u3010\u89e6\u53d1\u7ba1\u7406\u3011\u5f00\u59cb\u521d\u59cb\u5316PushTriggerManager"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lcom/transsion/mpush/core/trigger/PushTriggerReceiver;

    new-instance v1, Lcom/transsion/mpush/core/trigger/c;

    invoke-direct {v1}, Lcom/transsion/mpush/core/trigger/c;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/mpush/core/trigger/PushTriggerReceiver;-><init>(Lkotlin/jvm/functions/Function1;)V

    sput-object v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->d:Lcom/transsion/mpush/core/trigger/PushTriggerReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/16 v2, 0x21

    const/4 v3, 0x2

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->d:Lcom/transsion/mpush/core/trigger/PushTriggerReceiver;

    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->d:Lcom/transsion/mpush/core/trigger/PushTriggerReceiver;

    invoke-static {v1, v2, v0, v3}, Landroidx/core/content/b;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    new-instance v0, Lcom/transsion/mpush/core/trigger/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/mpush/core/trigger/d;

    invoke-direct {v1}, Lcom/transsion/mpush/core/trigger/d;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/transsion/mpush/core/trigger/b;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    sput-object v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->e:Lcom/transsion/mpush/core/trigger/b;

    invoke-virtual {v0}, Lcom/transsion/mpush/core/trigger/b;->e()V

    sget-object v2, Llg/a;->a:Llg/a$a;

    const-string p1, "\u3010\u89e6\u53d1\u7ba1\u7406\u3011PushTriggerManager\u521d\u59cb\u5316\u6210\u529f\uff0c\u5e7f\u64ad\u63a5\u6536\u5668\u548c\u7f51\u7edc\u76d1\u542c\u5668\u5df2\u6ce8\u518c"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "M_PUSH_SDK"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final g(Ljava/lang/String;I)V
    .locals 13

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const-string v3, "\u3010\u89e6\u53d1\u7ba1\u7406\u3011triggerPull \u5ffd\u7565\uff1aSDK \u672a\u521d\u59cb\u5316\u6216\u5df2\u9500\u6bc1"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v7, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010\u89e6\u53d1\u7ba1\u7406\u3011\u89e6\u53d1\u63a8\u9001\u62c9\u53d6\uff0c\u539f\u56e0\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u89e6\u53d1\u6e90\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "M_PUSH_SDK"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lln/a;->a:Lln/a;

    invoke-virtual {p1, p2}, Lln/a;->m(I)V

    return-void
.end method
