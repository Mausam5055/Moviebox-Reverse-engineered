.class public final Lcom/transsion/mbwidget/data/SportWidgetDataManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/mbwidget/data/SportWidgetDataManager;

.field private static volatile b:J

.field private static volatile c:Z

.field private static final d:Lkotlin/Lazy;

.field private static e:Lcom/transsion/mbwidget/data/SportMatch;

.field private static final f:Lkotlinx/coroutines/flow/y0;

.field private static final g:Lkotlinx/coroutines/flow/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;

    invoke-direct {v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;-><init>()V

    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->a:Lcom/transsion/mbwidget/data/SportWidgetDataManager;

    new-instance v0, Lcom/transsion/mbwidget/data/e;

    invoke-direct {v0}, Lcom/transsion/mbwidget/data/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->d:Lkotlin/Lazy;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/j1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/y0;

    move-result-object v0

    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/y0;

    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->g:Lkotlinx/coroutines/flow/i1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/mbwidget/data/a;
    .locals 1

    invoke-static {}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->n()Lcom/transsion/mbwidget/data/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/mbwidget/data/SportWidgetDataManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f()V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/mbwidget/data/SportWidgetDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final d()V
    .locals 4

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->b:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.transsion.mbwidget.ACTION_MATCH_REFRESH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_1

    const/high16 v0, 0xc000000

    goto :goto_1

    :cond_1
    const/high16 v0, 0x8000000

    :goto_1
    const v3, 0xc137a2b

    invoke-static {v1, v3, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/app/AlarmManager;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/app/AlarmManager;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_3
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "Cancel match refresh alarm"

    const/4 v2, 0x1

    const-string v3, "SportWidget"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private final f()V
    .locals 8

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/mbwidget/data/SportWidgetDataManager$forceRefresh$1;

    invoke-direct {v5, v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager$forceRefresh$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final i()Lcom/transsion/mbwidget/data/SportMatch;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    invoke-virtual {v1}, Lcom/transsion/mbwidget/d;->k()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "sport_widget_match_cache"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v2, Lcom/transsion/mbwidget/data/SportMatch;

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/mbwidget/data/SportMatch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v1

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get cached match error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v3, "SportWidget"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private final j()Lcom/transsion/mbwidget/data/a;
    .locals 1

    sget-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mbwidget/data/a;

    return-object v0
.end method

.method private static final n()Lcom/transsion/mbwidget/data/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/mbwidget/data/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mbwidget/data/a;

    return-object v0
.end method

.method private final q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;

    iget v3, v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->label:I

    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;

    invoke-direct {v2, v1, v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;-><init>(Lcom/transsion/mbwidget/data/SportWidgetDataManager;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v2

    iget v3, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->label:I

    const/4 v9, 0x0

    const-string v10, "SportWidget"

    const/4 v11, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v11, :cond_1

    iget-object v2, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager;

    iget-object v3, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->c:Z

    if-eqz v0, :cond_3

    sget-object v12, Llg/a;->a:Llg/a$a;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "SportWidget"

    const-string v14, "[Lab] requestMatch started (laboratory trigger)"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sput-boolean v9, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->c:Z

    :cond_3
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v3, "Request match from API..."

    invoke-virtual {v0, v10, v3, v11}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->j()Lcom/transsion/mbwidget/data/a;

    move-result-object v3

    iput-object v12, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$0:Ljava/lang/Object;

    iput-object v13, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$1:Ljava/lang/Object;

    iput-object v1, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$2:Ljava/lang/Object;

    iput v11, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/transsion/mbwidget/data/a$a;->a(Lcom/transsion/mbwidget/data/a;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v2, :cond_4

    return-object v2

    :cond_4
    move-object v2, v1

    move-object v4, v12

    move-object v3, v13

    :goto_2
    :try_start_2
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v6

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mbwidget/data/BffMatchData;

    goto :goto_4

    :cond_6
    move-object v0, v6

    :goto_4
    if-eqz v0, :cond_a

    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/BffMatchData;->getList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "API request success, data list size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v10, v7, v11}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/BffMatchData;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/mbwidget/data/c;->a(Ljava/util/List;)Lcom/transsion/mbwidget/data/ServerMatchItem;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/transsion/mbwidget/data/c;->b(Lcom/transsion/mbwidget/data/ServerMatchItem;)Lcom/transsion/mbwidget/data/SportMatch;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object v0, v6

    :goto_5
    if-eqz v0, :cond_9

    invoke-direct {v2, v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->r(Lcom/transsion/mbwidget/data/SportMatch;)V

    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    sget-object v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/y0;

    invoke-interface {v6, v0}, Lkotlinx/coroutines/flow/y0;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Request match success: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v10, v6, v11}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v2, v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->s(Lcom/transsion/mbwidget/data/SportMatch;)V

    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_6

    :cond_9
    const-string v0, "No valid match from API response (conversion failed or empty list)"

    invoke-virtual {v5, v10, v0, v11}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    sget-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/y0;

    invoke-interface {v0, v6}, Lkotlinx/coroutines/flow/y0;->setValue(Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v2, "API response failed, need fallback"

    invoke-virtual {v0, v10, v2, v11}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v11, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v4, v12

    move-object v3, v13

    :goto_7
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v15

    if-eqz v15, :cond_b

    sget-object v12, Llg/a;->a:Llg/a$a;

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request match error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x8

    const/16 v18, 0x0

    const-string v13, "SportWidget"

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    iput-boolean v11, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_b
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_c

    iget-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_c

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v2, "API failed, use fallback data (cache > mock)"

    invoke-virtual {v0, v10, v2, v11}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->t()Lcom/transsion/mbwidget/data/SportMatch;

    move-result-object v0

    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_c
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0
.end method

.method private final r(Lcom/transsion/mbwidget/data/SportMatch;)V
    .locals 7

    :try_start_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    invoke-virtual {v0}, Lcom/transsion/mbwidget/d;->k()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "sport_widget_match_cache"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save cache error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SportWidget"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final s(Lcom/transsion/mbwidget/data/SportMatch;)V
    .locals 13

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    move-result-object v0

    sget-object v1, Lcom/transsion/mbwidget/data/MatchStatus;->NOT_START:Lcom/transsion/mbwidget/data/MatchStatus;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchTime()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    sub-long v6, v4, v0

    cmp-long v2, v6, v2

    const/4 v3, 0x1

    const-string v8, "SportWidget"

    if-gtz v2, :cond_2

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    move-result-object p1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip scheduleMatchRefresh: triggerAt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", now="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", delta="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", matchId="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v8, p1, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    sget-wide v9, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->b:J

    const-wide/16 v11, 0x1

    add-long/2addr v0, v11

    cmp-long v0, v0, v9

    if-gtz v0, :cond_3

    cmp-long v0, v9, v4

    if-gez v0, :cond_3

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip scheduleMatchRefresh: keep earlier alarm at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", new trigger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is later, matchId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_4

    sget-object v1, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver;

    invoke-direct {v2, v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "com.transsion.mbwidget.ACTION_MATCH_REFRESH"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v9, 0x1f

    if-lt v0, v9, :cond_5

    const/high16 v0, 0xc000000

    goto :goto_1

    :cond_5
    const/high16 v0, 0x8000000

    :goto_1
    const v9, 0xc137a2b

    invoke-static {v1, v9, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/app/AlarmManager;

    if-eqz v2, :cond_6

    check-cast v1, Landroid/app/AlarmManager;

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    sput-wide v4, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->b:J

    :cond_7
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule match refresh at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms), matchId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private final t()Lcom/transsion/mbwidget/data/SportMatch;
    .locals 7

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "SportWidget"

    const-string v2, "Using fallback data..."

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->i()Lcom/transsion/mbwidget/data/SportMatch;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Use cached match as fallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    sget-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/y0;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/y0;->setValue(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->s(Lcom/transsion/mbwidget/data/SportMatch;)V

    return-object v2

    :cond_0
    const-string v2, "Mock fallback disabled, return null to show Fallback UI"

    invoke-virtual {v0, v1, v2, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    sget-object v1, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/y0;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/y0;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "Force refresh for match change (periodic or after match start)"

    const/4 v2, 0x1

    const-string v3, "SportWidget"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final h()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->c:Z

    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v2, "SportWidget"

    const-string v3, "[Lab] forceRefresh triggered from Laboratory"

    invoke-virtual {v1, v2, v3, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f()V

    return-void
.end method

.method public final k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    if-eqz v0, :cond_1

    sget-object p1, Llg/a;->a:Llg/a$a;

    sget-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Return memory cached match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SportWidget"

    invoke-virtual {p1, v2, v0, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lcom/transsion/mbwidget/data/SportMatch;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/mbwidget/data/d;->a:Lcom/transsion/mbwidget/data/d;

    invoke-virtual {v0, p1}, Lcom/transsion/mbwidget/data/d;->a(Lcom/transsion/mbwidget/data/SportMatch;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final m(Lcom/transsion/mbwidget/data/SportMatch;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/mbwidget/data/d;->a:Lcom/transsion/mbwidget/data/d;

    invoke-virtual {v0, p1}, Lcom/transsion/mbwidget/data/d;->b(Lcom/transsion/mbwidget/data/SportMatch;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final o()V
    .locals 8

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "All sport widgets removed, clear memory and persistent cache"

    const/4 v2, 0x1

    const-string v3, "SportWidget"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->d()V

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    sget-object v1, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/y0;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/y0;->setValue(Ljava/lang/Object;)V

    :try_start_0
    sget-object v0, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    invoke-virtual {v0}, Lcom/transsion/mbwidget/d;->k()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "sport_widget_match_cache"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear persistent cache error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "SportWidget"

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final p()V
    .locals 7

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "Refresh on user click (likely viewing live match)"

    const/4 v2, 0x1

    const-string v3, "SportWidget"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/mbwidget/data/SportWidgetDataManager$refreshOnUserClick$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager$refreshOnUserClick$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
