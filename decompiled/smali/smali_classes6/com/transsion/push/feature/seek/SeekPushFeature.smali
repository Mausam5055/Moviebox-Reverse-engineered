.class public final Lcom/transsion/push/feature/seek/SeekPushFeature;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/mpush/api/IPushFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/feature/seek/SeekPushFeature$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/push/feature/seek/SeekPushFeature$a;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lkotlinx/coroutines/n0;

.field private c:Lcom/transsion/mpush/api/INotificationRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/push/feature/seek/SeekPushFeature$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/push/feature/seek/SeekPushFeature$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/push/feature/seek/SeekPushFeature;->d:Lcom/transsion/push/feature/seek/SeekPushFeature$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->b:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/push/feature/seek/b;

    invoke-direct {v0}, Lcom/transsion/push/feature/seek/b;-><init>()V

    iput-object v0, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->c:Lcom/transsion/mpush/api/INotificationRenderer;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/push/feature/seek/SeekPushFeature;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/push/feature/seek/SeekPushFeature;->b(I)V

    return-void
.end method

.method private final b(I)V
    .locals 9

    sget-object p1, Lcom/transsion/push/feature/seek/SeekPushFeature;->d:Lcom/transsion/push/feature/seek/SeekPushFeature$a;

    iget-object v0, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->a:Landroid/content/Context;

    const-string v1, "context"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {p1, v0}, Lcom/transsion/push/feature/seek/SeekPushFeature$a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "PushRegisterManager"

    const-string v5, "\u3010\u6c42\u7247\u63a8\u9001\u3011\u5f53\u5929\u5df2\u5c55\u793a\uff0c\u8df3\u8fc7"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    sget-object p1, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v0, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/transsion/mpush/core/utils/PushPreference;->h(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/transsion/mpush/api/LocalPushMessage;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/mpush/api/LocalPushMessage;->getDeeplink()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/transsion/mpush/api/LocalPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    invoke-virtual {v3}, Lcom/transsion/mpush/api/LocalPushMessage;->getDesc()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_6
    move-object v0, v2

    :cond_7
    check-cast v0, Lcom/transsion/mpush/api/LocalPushMessage;

    if-nez v0, :cond_8

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "PushRegisterManager"

    const-string v5, "\u3010\u6c42\u7247\u63a8\u9001\u3011\u65e0\u6709\u6548\u6d88\u606f"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_8
    sget-object p1, Lcom/transsion/mpush/core/config/PushMsgType;->SUBJECT_SEEKING:Lcom/transsion/mpush/core/config/PushMsgType;

    invoke-virtual {p1}, Lcom/transsion/mpush/core/config/PushMsgType;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/mpush/api/LocalPushMessage;->setType(Ljava/lang/String;)V

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transsion/mpush/api/LocalPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u3010\u6c42\u7247\u63a8\u9001\u3011\u51c6\u5907\u5c55\u793a\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u6807\u9898\uff1a"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "PushRegisterManager"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lln/b;->a:Lln/b;

    iget-object v3, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->a:Landroid/content/Context;

    if-nez v3, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    invoke-virtual {p1, v3, v0}, Lln/b;->j(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V

    iget-object p1, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->c:Lcom/transsion/mpush/api/INotificationRenderer;

    iget-object v3, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->a:Landroid/content/Context;

    if-nez v3, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v2, v3

    :goto_1
    invoke-interface {p1, v2, v0}, Lcom/transsion/mpush/api/INotificationRenderer;->show(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V

    return-void

    :cond_b
    :goto_2
    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "PushRegisterManager"

    const-string v5, "\u3010\u6c42\u7247\u63a8\u9001\u3011seekingItems \u7f13\u5b58\u4e3a\u7a7a"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final c()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->c:Lcom/transsion/mpush/api/INotificationRenderer;

    instance-of v1, v0, Lcom/transsion/push/feature/seek/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/push/feature/seek/b;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->a:Landroid/content/Context;

    if-nez v1, :cond_2

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->l(Landroid/content/Context;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u6c42\u7247\u63a8\u9001\u3011\u9884\u521b\u5efa\u901a\u77e5\u6e20\u9053\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "PushRegisterManager"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->b:Lkotlinx/coroutines/n0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/transsion/push/feature/seek/SeekPushFeature;->c()V

    return-void
.end method

.method public onMessageReceive(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/api/IPushFeature$DefaultImpls;->onMessageReceive(Lcom/transsion/mpush/api/IPushFeature;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrigger(I)V
    .locals 13

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010\u6c42\u7247\u63a8\u9001\u3011\u6536\u5230\u89e6\u53d1\u4e8b\u4ef6\uff0c\u89e6\u53d1\u6e90\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "PushRegisterManager"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v7, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->b:Lkotlinx/coroutines/n0;

    new-instance v10, Lcom/transsion/push/feature/seek/SeekPushFeature$onTrigger$1;

    const/4 v0, 0x0

    invoke-direct {v10, p0, p1, v0}, Lcom/transsion/push/feature/seek/SeekPushFeature$onTrigger$1;-><init>(Lcom/transsion/push/feature/seek/SeekPushFeature;ILkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public refreshMessage(Ljava/lang/Object;)Z
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsion/mpush/api/LocalPushMessage;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/mpush/core/config/PushMsgType;->SUBJECT_SEEKING:Lcom/transsion/mpush/core/config/PushMsgType;

    invoke-virtual {v1}, Lcom/transsion/mpush/core/config/PushMsgType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->c:Lcom/transsion/mpush/api/INotificationRenderer;

    iget-object v1, p0, Lcom/transsion/push/feature/seek/SeekPushFeature;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/transsion/mpush/api/INotificationRenderer;->show(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
