.class public final Lcom/transsion/home/repository/HomePreferencesRepository;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/repository/HomePreferencesRepository$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/home/repository/HomePreferencesRepository$a;

.field public static final d:I


# instance fields
.field private final a:Lol/b;

.field private final b:Lmj/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/repository/HomePreferencesRepository$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/repository/HomePreferencesRepository$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/repository/HomePreferencesRepository;->c:Lcom/transsion/home/repository/HomePreferencesRepository$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/repository/HomePreferencesRepository;->d:I

    return-void
.end method

.method public constructor <init>(Lol/b;Lcom/transsion/baselib/db/AppDatabase;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDatabase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/repository/HomePreferencesRepository;->a:Lol/b;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/AppDatabase;->r1()Lmj/a;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/repository/HomePreferencesRepository;->b:Lmj/a;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->j(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->l(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->h(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/home/repository/HomePreferencesRepository;Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/repository/HomePreferencesRepository;->n(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final e(JLcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lcom/transsion/home/bean/HomePreferencesIntervalTime;)Z
    .locals 17

    move-wide/from16 v0, p1

    const/4 v2, 0x1

    if-nez p3, :cond_0

    return v2

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getShowInterval()J

    move-result-wide v3

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getCloseInterval()J

    move-result-wide v5

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getChooseInterval()J

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getShowTime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    const/16 v10, 0x3e8

    if-lez v9, :cond_1

    cmp-long v9, v3, v11

    if-lez v9, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getShowTime()J

    move-result-wide v13

    int-to-long v11, v10

    mul-long/2addr v3, v11

    add-long/2addr v13, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    move-wide v11, v15

    goto :goto_0

    :cond_1
    move-wide v3, v11

    move-wide v11, v3

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getCloseTime()J

    move-result-wide v13

    cmp-long v9, v13, v3

    if-lez v9, :cond_2

    cmp-long v9, v5, v3

    if-lez v9, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getCloseTime()J

    move-result-wide v3

    int-to-long v13, v10

    mul-long/2addr v5, v13

    add-long/2addr v3, v5

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getChooseTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    cmp-long v3, v7, v5

    if-lez v3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getChooseTime()J

    move-result-wide v3

    int-to-long v5, v10

    mul-long/2addr v7, v5

    add-long/2addr v3, v7

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    :cond_3
    sget-object v3, Llg/a;->a:Llg/a$a;

    cmp-long v9, v0, v11

    const/4 v10, 0x0

    if-ltz v9, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v10

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getShowTime()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getCloseTime()J

    move-result-wide v11

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getChooseTime()J

    move-result-wide v13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "----canShow:>>>> "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " <<<<<, id:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",now:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", showTime:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", closeTime:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", chooseTime:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "HomePreferencesRepository"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-ltz v9, :cond_5

    goto :goto_2

    :cond_5
    move v2, v10

    :goto_2
    return v2
.end method

.method private static final h(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 1

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->setChooseTime(J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final j(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 1

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->setCloseTime(J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final l(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 1

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->setShowTime(J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final n(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;

    iget v3, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;

    invoke-direct {v2, v0, v1}, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;-><init>(Lcom/transsion/home/repository/HomePreferencesRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-wide v6, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->J$0:J

    iget-object v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v8, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iget-object v9, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v11, v4

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/transsion/home/repository/HomePreferencesRepository;->b:Lmj/a;

    move-object/from16 v9, p1

    iput-object v9, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$0:Ljava/lang/Object;

    move-object/from16 v10, p2

    iput-object v10, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$2:Ljava/lang/Object;

    iput-wide v7, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->J$0:J

    iput v6, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->label:I

    invoke-interface {v1, v4, v2}, Lmj/a;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v11, v4

    move-wide v6, v7

    move-object v8, v10

    :goto_1
    check-cast v1, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    if-nez v1, :cond_5

    new-instance v1, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getShowInterval()J

    move-result-wide v18

    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getCloseInterval()J

    move-result-wide v20

    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getChooseInterval()J

    move-result-wide v22

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v23}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;-><init>(Ljava/lang/String;JJJJJJ)V

    :cond_5
    move-object/from16 v24, v1

    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getShowInterval()J

    move-result-wide v32

    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getCloseInterval()J

    move-result-wide v34

    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getChooseInterval()J

    move-result-wide v36

    const/16 v38, 0xf

    const/16 v39, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    invoke-static/range {v24 .. v39}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->copy$default(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Ljava/lang/String;JJJJJJILjava/lang/Object;)Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    move-result-object v1

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v8, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/transsion/home/repository/HomePreferencesRepository;->b:Lmj/a;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$2:Ljava/lang/Object;

    iput v5, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->label:I

    invoke-interface {v4, v1, v2}, Lmj/a;->a(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method


# virtual methods
.method public final f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;

    iget v3, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;

    invoke-direct {v2, v1, v0}, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;-><init>(Lcom/transsion/home/repository/HomePreferencesRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->label:I

    const/4 v5, 0x2

    const-string v6, "HomePreferencesRepository"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v5, :cond_1

    iget-wide v9, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->J$0:J

    iget-object v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/home/repository/HomePreferencesRepository;

    iget-object v7, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/transsion/home/bean/HomePreferencesConfig;

    iget-object v11, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/transsion/home/repository/HomePreferencesRepository;->a:Lol/b;

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$0:Ljava/lang/Object;

    iput v8, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->label:I

    invoke-static {v0, v7, v2, v8, v7}, Lol/b$a;->a(Lol/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    :goto_1
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/HomePreferencesList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/home/bean/HomePreferencesList;->getPreferences()Ljava/util/List;

    move-result-object v7

    :cond_5
    if-nez v7, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v2, "loadPreferencesState config is empty ~"

    invoke-virtual {v0, v6, v2, v8}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/transsion/home/bean/HomePreferencesState;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/home/bean/HomePreferencesState;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :cond_7
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadPreferencesState success "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v6, v9, v8}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    check-cast v7, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-virtual {v12}, Lcom/transsion/home/bean/HomePreferencesConfig;->getTabCode()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4, v8}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    move-object v7, v0

    :cond_b
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v12, v0

    move-object v11, v4

    :cond_c
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/transsion/home/bean/HomePreferencesConfig;

    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/transsion/home/repository/HomePreferencesRepository;->b:Lmj/a;

    iput-object v12, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$2:Ljava/lang/Object;

    iput-object v1, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$3:Ljava/lang/Object;

    iput-wide v9, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->J$0:J

    iput v5, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->label:I

    invoke-interface {v4, v0, v2}, Lmj/a;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_d

    return-object v3

    :cond_d
    move-object v4, v1

    :goto_5
    check-cast v0, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    move-result-object v13

    invoke-direct {v4, v9, v10, v0, v13}, Lcom/transsion/home/repository/HomePreferencesRepository;->e(JLcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lcom/transsion/home/bean/HomePreferencesIntervalTime;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getTabCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getShowStyle()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadPreferencesState  tabCode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", showStyle:"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4, v8}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :goto_6
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v13, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadPreferencesState canShow error: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v14, "HomePreferencesRepository"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_f
    move-object v0, v12

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-virtual {v5}, Lcom/transsion/home/bean/HomePreferencesConfig;->getShowStyle()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/transsion/home/bean/HomePreferencesShowStyle;->OPT_INSERT:Lcom/transsion/home/bean/HomePreferencesShowStyle;

    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesShowStyle;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesConfig;->getShowStyle()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/transsion/home/bean/HomePreferencesShowStyle;->POPUP:Lcom/transsion/home/bean/HomePreferencesShowStyle;

    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesShowStyle;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesConfig;->getShowStyle()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/transsion/home/bean/HomePreferencesShowStyle;->ENTER_POP:Lcom/transsion/home/bean/HomePreferencesShowStyle;

    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesShowStyle;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    new-instance v0, Lcom/transsion/home/bean/HomePreferencesState;

    invoke-direct {v0, v12, v2, v3, v4}, Lcom/transsion/home/bean/HomePreferencesState;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final g(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/transsion/home/repository/b;

    invoke-direct {v0}, Lcom/transsion/home/repository/b;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->n(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final i(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/transsion/home/repository/a;

    invoke-direct {v0}, Lcom/transsion/home/repository/a;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->n(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final k(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/transsion/home/repository/c;

    invoke-direct {v0}, Lcom/transsion/home/repository/c;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->n(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final m(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;

    iget v1, v0, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;-><init>(Lcom/transsion/home/repository/HomePreferencesRepository;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p3, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iget-object p1, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object v5, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "submitPreferences skip: empty options, labelId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "HomePreferencesRepository"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    new-instance v3, Lcom/transsion/home/bean/HomePreferencesSubmitRequest;

    invoke-direct {v3, p1, p2}, Lcom/transsion/home/bean/HomePreferencesSubmitRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lcom/transsion/home/repository/HomePreferencesRepository;->a:Lol/b;

    iput-object p1, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->L$0:Ljava/lang/Object;

    iput-object p2, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->L$1:Ljava/lang/Object;

    iput v2, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lol/b$a;->c(Lol/b;Ljava/lang/String;Lcom/transsion/home/bean/HomePreferencesSubmitRequest;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    check-cast p3, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_4
    invoke-static {p3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submitPreferences success, labelId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", options="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "HomePreferencesRepository"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_5
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "submitPreferences error, labelId="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", msg="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "HomePreferencesRepository"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
