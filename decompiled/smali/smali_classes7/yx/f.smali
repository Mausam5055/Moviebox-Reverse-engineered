.class public final Lyx/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lyx/f;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyx/f;

    invoke-direct {v0}, Lyx/f;-><init>()V

    sput-object v0, Lyx/f;->a:Lyx/f;

    new-instance v0, Lyx/b;

    invoke-direct {v0}, Lyx/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lyx/f;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Lcom/transsion/memberapi/TaskRewards;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lyx/f;->k(Lkotlin/jvm/functions/Function1;Lcom/transsion/memberapi/TaskRewards;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lyx/f;->i(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lyx/f;->j(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()Lcom/transsion/memberapi/IMemberApi;
    .locals 1

    invoke-static {}, Lyx/f;->o()Lcom/transsion/memberapi/IMemberApi;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic e(Lyx/f;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lyx/f;->h(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic f(Lyx/f;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lyx/f;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final g(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    invoke-direct {p0}, Lyx/f;->m()Lcom/transsion/memberapi/IMemberApi;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lyx/f$a;

    invoke-direct {v1, p1}, Lyx/f$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lcom/transsion/memberapi/IMemberApi;->u(Lzm/c;)V

    :cond_0
    return-void
.end method

.method private final h(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 29

    move-object/from16 v0, p2

    move-object/from16 v2, p1

    new-instance v15, Lcom/transsion/memberapi/MemberTaskItem;

    move-object v1, v15

    const v26, 0xfffffe

    const/16 v27, 0x0

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

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v28, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v1 .. v27}, Lcom/transsion/memberapi/MemberTaskItem;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/transsion/memberapi/MemberTaskRewardInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-direct/range {p0 .. p0}, Lyx/f;->l()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> fetchAdTaskReward() --> \u9886\u53d6\u6fc0\u6d3b\u5e7f\u544a\u4efb\u52a1\u5956\u52b1 -- taskId = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lyx/f;->m()Lcom/transsion/memberapi/IMemberApi;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lyx/c;

    invoke-direct {v2, v0}, Lyx/c;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lyx/d;

    invoke-direct {v3, v0}, Lyx/d;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v0, v28

    invoke-interface {v1, v0, v2, v3}, Lcom/transsion/memberapi/IMemberApi;->l(Lcom/transsion/memberapi/MemberTaskItem;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method private static final i(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    new-instance p1, Lyx/e;

    invoke-direct {p1, p0}, Lyx/e;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final j(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final k(Lkotlin/jvm/functions/Function1;Lcom/transsion/memberapi/TaskRewards;)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final l()Ljava/lang/String;
    .locals 2

    const-class v0, Lyx/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final m()Lcom/transsion/memberapi/IMemberApi;
    .locals 1

    sget-object v0, Lyx/f;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    return-object v0
.end method

.method private static final o()Lcom/transsion/memberapi/IMemberApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    return-object v0
.end method


# virtual methods
.method public final n(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1}, Lyx/f;->g(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
