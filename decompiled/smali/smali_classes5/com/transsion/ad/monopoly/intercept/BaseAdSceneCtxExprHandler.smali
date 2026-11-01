.class public abstract Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;
.super Lcom/transsion/ad/monopoly/intercept/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$a;

.field private static final c:Lkotlin/text/Regex;

.field private static final d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->b:Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$a;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\b([a-zA-Z_][a-zA-Z0-9_]*)\\b"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->c:Lkotlin/text/Regex;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/a;-><init>()V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->o(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/io/Serializable;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->p(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    instance-of v5, v4, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;

    iget v6, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->label:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;

    invoke-direct {v5, v0, v4}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v4, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v6

    iget v7, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->label:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    iget-object v0, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object v4

    if-eqz v4, :cond_6

    iput-object v0, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->L$0:Ljava/lang/Object;

    iput v10, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->label:I

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_5

    return-object v6

    :cond_5
    :goto_1
    check-cast v4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez v4, :cond_7

    :cond_6
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object v4

    :cond_7
    return-object v4

    :cond_8
    invoke-virtual/range {p0 .. p3}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->j(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const-string v4, ""

    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object v4

    if-eqz v4, :cond_b

    iput-object v0, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->L$0:Ljava/lang/Object;

    iput v9, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->label:I

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_a

    return-object v6

    :cond_a
    :goto_2
    check-cast v4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez v4, :cond_c

    :cond_b
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object v4

    :cond_c
    return-object v4

    :cond_d
    const-string v7, "genre"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/String;

    const/4 v13, 0x0

    if-eqz v12, :cond_e

    check-cast v11, Ljava/lang/String;

    move-object v14, v11

    goto :goto_3

    :cond_e
    move-object v14, v13

    :goto_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_12

    const-string v11, ","

    if-eqz v14, :cond_f

    const-string v15, ", "

    invoke-static {v14, v15, v12, v9, v13}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v15

    if-ne v15, v10, :cond_f

    goto :goto_4

    :cond_f
    if-eqz v14, :cond_12

    invoke-static {v14, v11, v12, v9, v13}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-ne v9, v10, :cond_12

    :goto_4
    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, " "

    const-string v16, ""

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v13, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v13, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v4, v13}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->n(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v14

    if-eqz v14, :cond_10

    iput-boolean v10, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_5

    :cond_11
    iget-boolean v4, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_6

    :cond_12
    invoke-direct {v0, v4, v3}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->n(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    :goto_6
    invoke-virtual {v0, v4}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->m(Z)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object v4

    if-eqz v4, :cond_14

    iput-object v0, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->L$0:Ljava/lang/Object;

    iput v8, v5, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler$doHandle$1;->label:I

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_13

    return-object v6

    :cond_13
    :goto_7
    check-cast v4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez v4, :cond_17

    :cond_14
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object v4

    goto :goto_9

    :cond_15
    new-instance v1, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-eqz v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->l()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {v1, v12, v0}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    move-object v4, v1

    :cond_17
    :goto_9
    return-object v4
.end method

.method private final n(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/transsion/ad/monopoly/intercept/h;

    invoke-direct {v2}, Lcom/transsion/ad/monopoly/intercept/h;-><init>()V

    new-instance v3, Lcom/transsion/ad/monopoly/intercept/i;

    invoke-direct {v3, v2}, Lcom/transsion/ad/monopoly/intercept/i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, p1, v3}, Lcom/transsion/ad/monopoly/intercept/c;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "computeIfAbsent(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/io/Serializable;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sget-object v3, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->c:Lkotlin/text/Regex;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, p1, v4, v5, v6}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/text/MatchResult;

    invoke-interface {v4}, Lkotlin/text/MatchResult;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Lorg/mvel2/d;->v(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Eval --> safeEval() --> it = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> rule = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> safeVars = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sampler"

    invoke-virtual {v0, p2, p1, v1}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private static final o(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/mvel2/d;->d(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method private static final p(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/io/Serializable;
    .locals 0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->i(Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract j(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;)Ljava/lang/String;
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public abstract m(Z)Z
.end method
