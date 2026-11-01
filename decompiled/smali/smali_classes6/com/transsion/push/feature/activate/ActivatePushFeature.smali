.class public final Lcom/transsion/push/feature/activate/ActivatePushFeature;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/mpush/api/IPushFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/feature/activate/ActivatePushFeature$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/push/feature/activate/ActivatePushFeature$a;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lkotlinx/coroutines/n0;

.field private final c:Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/push/feature/activate/ActivatePushFeature$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/push/feature/activate/ActivatePushFeature$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/push/feature/activate/ActivatePushFeature;->d:Lcom/transsion/push/feature/activate/ActivatePushFeature$a;

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

    iput-object v0, p0, Lcom/transsion/push/feature/activate/ActivatePushFeature;->b:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;

    invoke-direct {v0}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;-><init>()V

    iput-object v0, p0, Lcom/transsion/push/feature/activate/ActivatePushFeature;->c:Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/push/feature/activate/ActivatePushFeature;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/push/feature/activate/ActivatePushFeature;->d()V

    return-void
.end method

.method private final b(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    iget-object v1, p0, Lcom/transsion/push/feature/activate/ActivatePushFeature;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/transsion/baseui/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final c()Z
    .locals 13

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    const-string v1, "ActivatePushScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "pushStart"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "pushSlot"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    :goto_1
    sget-object v8, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001\u3011\u65f6\u95f4\u7a97\u53e3\u914d\u7f6e\uff1astartHour="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", timeSpan="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "PushRegisterManager"

    const/4 v5, 0x0

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v9, 0x0

    if-gtz v0, :cond_2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "PushRegisterManager"

    const-string v4, "\u3010\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001\u3011\u63a8\u9001\u65f6\u95f4\u8de8\u5ea6\u4e3a 0\uff0c\u5df2\u7981\u7528"

    const/4 v5, 0x0

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v9

    :cond_2
    const/16 v2, 0x18

    const/4 v10, 0x1

    if-lt v0, v2, :cond_3

    return v10

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int v11, v4, v6

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v12, 0x5a0

    if-gt v0, v12, :cond_4

    move v4, v0

    goto :goto_2

    :cond_4
    rem-int/lit16 v4, v0, 0x5a0

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u3010\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001\u3011\u5f53\u524d\u65f6\u95f4 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u8f6c\u6362\u4e3a\u5206\u949f\uff1a"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u7a97\u53e3\uff1a"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "PushRegisterManager"

    const/4 v5, 0x0

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-gt v0, v12, :cond_6

    if-gt v1, v11, :cond_7

    if-ge v11, v0, :cond_7

    :cond_5
    :goto_3
    move v9, v10

    goto :goto_4

    :cond_6
    if-ge v11, v1, :cond_5

    rem-int/2addr v0, v12

    if-ge v11, v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    return v9
.end method

.method private final d()V
    .locals 24

    move-object/from16 v7, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/transsion/push/feature/activate/ActivatePushFeature;->d:Lcom/transsion/push/feature/activate/ActivatePushFeature$a;

    iget-object v3, v7, Lcom/transsion/push/feature/activate/ActivatePushFeature;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "context"

    if-nez v3, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    invoke-virtual {v0, v3}, Lcom/transsion/push/feature/activate/ActivatePushFeature$a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v9, Llg/a;->a:Llg/a$a;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "PushRegisterManager"

    const-string v11, "\u3010\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001\u3011\u5f53\u5929\u5df2\u5c55\u793a\uff0c\u8df3\u8fc7"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/transsion/push/feature/activate/ActivatePushFeature;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v9, Llg/a;->a:Llg/a$a;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "PushRegisterManager"

    const-string v11, "\u3010\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001\u3011\u4e0d\u5728\u63a8\u9001\u65f6\u95f4\u6bb5\u5185\uff0c\u8df3\u8fc7"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    sget-object v0, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    invoke-virtual {v0}, Lcom/transsion/ad/ps/activate/PSActivateManager;->d()Z

    move-result v3

    const-string v6, "4"

    const-string v9, "trigger_source"

    const-string v10, "reason"

    if-nez v3, :cond_3

    sget-object v11, Llg/a;->a:Llg/a$a;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "PushRegisterManager"

    const-string v13, "\u3010\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001\u3011\u65e0\u53ef\u7528\u5e7f\u544a\uff0c\u8df3\u8fc7\u95f4\u9694\u9650\u5236\u8bf7\u6c42\u5e7f\u544a"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v3, "no_ad"

    invoke-static {v10, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v9, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    new-array v1, v1, [Lkotlin/Pair;

    aput-object v3, v1, v2

    aput-object v4, v1, v8

    invoke-static {v1}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/push/feature/activate/ActivatePushFeature;->f(Lcom/transsion/push/feature/activate/ActivatePushFeature;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {v0, v8}, Lcom/transsion/ad/ps/activate/PSActivateManager;->f(Z)V

    return-void

    :cond_3
    move v0, v2

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_b

    add-int/2addr v0, v8

    sget-object v3, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    invoke-virtual {v3}, Lcom/transsion/ad/ps/activate/PSActivateManager;->b()Lcom/transsion/ad/ps/activate/PsActivateBean;

    move-result-object v3

    if-nez v3, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/transsion/push/feature/activate/ActivatePushFeature;->b(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    sget-object v12, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getAppName()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u3010\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001\u3011\u5e94\u7528\u672a\u5b89\u88c5\uff0c\u8df3\u8fc7\uff1a"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "PushRegisterManager"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-object v18, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getAppName()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u3010\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001\u3011\u6709\u53ef\u7528\u5e7f\u544a\uff0c\u51c6\u5907\u5c55\u793a\uff0c\u5e94\u7528\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "PushRegisterManager"

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v0, "ad_available"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    invoke-static {v9, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-virtual {v3}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    if-nez v0, :cond_6

    move-object v0, v9

    :cond_6
    const-string v11, "packageName"

    invoke-static {v11, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lih/b;->a:Lih/b;

    invoke-virtual {v0}, Lih/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_2

    :cond_7
    move-object v9, v0

    :goto_2
    const-string v0, "gaid"

    invoke-static {v0, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v9, 0x4

    new-array v9, v9, [Lkotlin/Pair;

    aput-object v10, v9, v2

    aput-object v6, v9, v8

    aput-object v11, v9, v1

    const/4 v1, 0x3

    aput-object v0, v9, v1

    invoke-static {v9}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, v7, Lcom/transsion/push/feature/activate/ActivatePushFeature;->a:Landroid/content/Context;

    if-nez v1, :cond_8

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v4

    :cond_8
    sget v6, Lcom/transsion/lib/push/R$string;->notification_activate_title:I

    invoke-virtual {v3}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getAppName()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v9, v10, v2

    invoke-virtual {v1, v6, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v7, Lcom/transsion/push/feature/activate/ActivatePushFeature;->a:Landroid/content/Context;

    if-nez v6, :cond_9

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v6, v4

    :cond_9
    sget v9, Lcom/transsion/lib/push/R$string;->notification_activate_content:I

    invoke-virtual {v3}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getAppName()Ljava/lang/String;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v10, v8, v2

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v1, v2}, Lcom/transsion/push/feature/activate/ActivatePushFeature;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/mpush/api/LocalPushMessage;

    move-result-object v0

    iget-object v1, v7, Lcom/transsion/push/feature/activate/ActivatePushFeature;->c:Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;

    iget-object v2, v7, Lcom/transsion/push/feature/activate/ActivatePushFeature;->a:Landroid/content/Context;

    if-nez v2, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move-object v4, v2

    :goto_3
    invoke-virtual {v1, v4, v0, v3}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->T(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lcom/transsion/ad/ps/activate/PsActivateBean;)V

    return-void

    :cond_b
    :goto_4
    sget-object v11, Llg/a;->a:Llg/a$a;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "PushRegisterManager"

    const-string v13, "\u3010\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001\u3011\u6709\u5e7f\u544a\u4f46\u5168\u90e8\u672a\u5b89\u88c5\uff0c\u8df3\u8fc7\u95f4\u9694\u9650\u5236\u8bf7\u6c42\u5e7f\u544a"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v0, "ad_unavailable"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v9, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    new-array v1, v1, [Lkotlin/Pair;

    aput-object v0, v1, v2

    aput-object v3, v1, v8

    invoke-static {v1}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/push/feature/activate/ActivatePushFeature;->f(Lcom/transsion/push/feature/activate/ActivatePushFeature;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/mpush/api/LocalPushMessage;

    sget-object v0, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    invoke-virtual {v0, v8}, Lcom/transsion/ad/ps/activate/PSActivateManager;->f(Z)V

    return-void
.end method

.method private final e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/mpush/api/LocalPushMessage;
    .locals 26

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    new-instance v15, Lcom/transsion/mpush/api/LocalPushMessage;

    move-object v2, v15

    const v23, 0x3ffff

    const/16 v24, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v25, v15

    move/from16 v15, v16

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v2 .. v24}, Lcom/transsion/mpush/api/LocalPushMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activate_push_message_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v25

    invoke-virtual {v3, v2}, Lcom/transsion/mpush/api/LocalPushMessage;->setMessageId(Ljava/lang/String;)V

    const-string v2, "activate_push"

    invoke-virtual {v3, v2}, Lcom/transsion/mpush/api/LocalPushMessage;->setSource(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/transsion/mpush/api/LocalPushMessage;->setType(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v4, p1

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsion/mpush/api/LocalPushMessage;->setExtraMap(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Lcom/transsion/mpush/api/LocalPushMessage;->setTitle(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Lcom/transsion/mpush/api/LocalPushMessage;->setDesc(Ljava/lang/String;)V

    :cond_1
    const-string v0, "oneroom://com.community.oneroom?type=/main/tab&channel=activate_push&utm_source=activate_push"

    invoke-virtual {v3, v0}, Lcom/transsion/mpush/api/LocalPushMessage;->setDeeplink(Ljava/lang/String;)V

    sget-object v0, Lln/b;->a:Lln/b;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/transsion/push/feature/activate/ActivatePushFeature;->a:Landroid/content/Context;

    if-nez v2, :cond_2

    const-string v2, "context"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v0, v2, v3}, Lln/b;->j(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V

    return-object v3
.end method

.method static synthetic f(Lcom/transsion/push/feature/activate/ActivatePushFeature;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/mpush/api/LocalPushMessage;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/push/feature/activate/ActivatePushFeature;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/mpush/api/LocalPushMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/push/feature/activate/ActivatePushFeature;->b:Lkotlinx/coroutines/n0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/push/feature/activate/ActivatePushFeature;->c:Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;

    invoke-virtual {v0}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->N()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/push/feature/activate/ActivatePushFeature;->a:Landroid/content/Context;

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

    return-void

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "PushRegisterManager"

    const-string v3, "\u3010\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001\u3011\u6536\u5230 TIMER \u89e6\u53d1"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v7, p0, Lcom/transsion/push/feature/activate/ActivatePushFeature;->b:Lkotlinx/coroutines/n0;

    new-instance v10, Lcom/transsion/push/feature/activate/ActivatePushFeature$onTrigger$1;

    const/4 p1, 0x0

    invoke-direct {v10, p0, p1}, Lcom/transsion/push/feature/activate/ActivatePushFeature$onTrigger$1;-><init>(Lcom/transsion/push/feature/activate/ActivatePushFeature;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public refreshMessage(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
