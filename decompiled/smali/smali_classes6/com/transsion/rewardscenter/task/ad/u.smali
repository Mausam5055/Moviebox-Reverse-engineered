.class public final Lcom/transsion/rewardscenter/task/ad/u;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/rewardscenter/task/ad/u;

.field private static final b:Lkotlin/Lazy;

.field private static c:Lcom/transsion/rewardscenter/task/ad/v$c;

.field private static d:Ljava/util/List;

.field private static e:Ljava/util/List;

.field private static f:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field private static g:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field private static h:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field private static i:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field private static j:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field public static final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/u;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/u;-><init>()V

    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/t;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/t;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->b:Lkotlin/Lazy;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/rewardscenter/task/ad/u;->k:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/rewardscenter/task/ad/u;->o()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private final f()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method

.method private static final o()Lcom/tencent/mmkv/MMKV;
    .locals 1

    const-string v0, "StageTaskAdCache"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenterapi/MemberTaskItem;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/u;->f:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/transsion/rewardscenter/task/ad/u;->f:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    sget-object v3, Lcom/transsion/rewardscenter/task/ad/u;->g:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    sget-object v4, Lcom/transsion/rewardscenter/task/ad/u;->g:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    sget-object v4, Lcom/transsion/rewardscenter/task/ad/u;->h:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    sget-object v5, Lcom/transsion/rewardscenter/task/ad/u;->h:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    sget-object v5, Lcom/transsion/rewardscenter/task/ad/u;->j:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v5, v2

    :goto_3
    sget-object v6, Lcom/transsion/rewardscenter/task/ad/u;->j:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    sget-object v6, Lcom/transsion/rewardscenter/task/ad/u;->i:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v2

    :cond_5
    sget-object v6, Lcom/transsion/rewardscenter/task/ad/u;->i:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x5

    new-array v6, v6, [Lkotlin/Pair;

    aput-object v1, v6, v0

    const/4 v1, 0x1

    aput-object v3, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    const/4 v1, 0x4

    aput-object v2, v6, v1

    invoke-static {v6}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getProgress()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setProgress(Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTotalProgress()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setTotalProgress(Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setStatus(Ljava/lang/Integer;)V

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTotalProgress()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getProgress()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_7
    sub-int v0, v1, v0

    :cond_8
    if-gtz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/task/ad/u;->p(Lcom/transsion/rewardscenter/task/ad/v;)V

    :cond_9
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x44cbe256

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_18

    const v1, 0x5276b338

    const/4 v4, 0x0

    if-eq v0, v1, :cond_b

    const v1, 0x7f85caa6

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v0, "MemberCenterStageNativeScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_6

    :cond_1
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->c:Lcom/transsion/rewardscenter/task/ad/v$c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_9

    :cond_5
    :goto_0
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {v4}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_9

    :cond_a
    :goto_2
    move v2, v3

    goto/16 :goto_9

    :cond_b
    const-string v0, "MemberTaskRegularNativeScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_6

    :cond_c
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->c:Lcom/transsion/rewardscenter/task/ad/v$c;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    move-result-object v4

    :cond_d
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_9

    :cond_10
    :goto_3
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4

    :cond_11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$c;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_9

    :cond_13
    :goto_4
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {v4}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    goto/16 :goto_2

    :cond_16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_9

    :cond_18
    const-string v0, "MemberTaskStageNativeScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    :goto_6
    goto/16 :goto_2

    :cond_19
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_7

    :cond_1a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$c;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_9

    :cond_1c
    :goto_7
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {v4}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1e
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto/16 :goto_2

    :cond_1f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :goto_9
    return v2
.end method

.method public final d()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    return-object v0
.end method

.method public final g()Lcom/transsion/rewardscenterapi/MemberTaskItem;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->i:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    return-object v0
.end method

.method public final h()Lcom/transsion/rewardscenterapi/MemberTaskItem;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->h:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    return-object v0
.end method

.method public final i()Lcom/transsion/rewardscenterapi/MemberTaskItem;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->j:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    return-object v0
.end method

.method public final j()Lcom/transsion/rewardscenterapi/MemberTaskItem;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->f:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    return-object v0
.end method

.method public final k()Lcom/transsion/rewardscenterapi/MemberTaskItem;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->g:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)Lcom/transsion/rewardscenter/task/ad/AdTaskState;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/u;->f()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task_state_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_1

    invoke-static {}, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    :cond_1
    return-object v0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    sget-object v2, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v2, p1, p2}, Lcom/transsion/rewardscenter/task/ad/u;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p2}, Lcom/transsion/rewardscenter/task/ad/u;->n(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    move v1, p1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFiltered = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", packageName: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", isDuplicate: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isInCooldown: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "StageTaskAd"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v0
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/u;->f()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package_cooldown_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final p(Lcom/transsion/rewardscenter/task/ad/v;)V
    .locals 4

    instance-of v0, p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    if-eqz v0, :cond_3

    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->c:Lcom/transsion/rewardscenter/task/ad/v$c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->CLAIMED_STAGE1:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    sput-object p1, Lcom/transsion/rewardscenter/task/ad/u;->c:Lcom/transsion/rewardscenter/task/ad/v$c;

    :cond_0
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/rewardscenter/task/ad/v$c;

    invoke-virtual {v2}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    sget-object v3, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->CLAIMED_STAGE1:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-lt v2, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    goto :goto_3

    :cond_3
    instance-of v0, p1, Lcom/transsion/rewardscenter/task/ad/v$a;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {v2}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {v2}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    :cond_8
    :goto_3
    return-void
.end method

.method public final q(Lcom/transsion/rewardscenter/task/ad/v$a;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sput-object v1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 5

    const-string v0, "taskInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/transsion/rewardscenterapi/TaskType;->AD_STAGE_1ST:Lcom/transsion/rewardscenterapi/TaskType;

    invoke-virtual {v4}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    move-result v4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    sput-object v1, Lcom/transsion/rewardscenter/task/ad/u;->f:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/transsion/rewardscenterapi/TaskType;->AD_STAGE_2ND:Lcom/transsion/rewardscenterapi/TaskType;

    invoke-virtual {v4}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    move-result v4

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    sput-object v1, Lcom/transsion/rewardscenter/task/ad/u;->g:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/transsion/rewardscenterapi/TaskType;->AD_REGULAR_PULL_NEW:Lcom/transsion/rewardscenterapi/TaskType;

    invoke-virtual {v4}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    move-result v4

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_6

    goto :goto_5

    :cond_8
    move-object v1, v2

    :goto_5
    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    sput-object v1, Lcom/transsion/rewardscenter/task/ad/u;->h:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/transsion/rewardscenterapi/TaskType;->AD_REGULAR_PULL_LIVE:Lcom/transsion/rewardscenterapi/TaskType;

    invoke-virtual {v4}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    move-result v4

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_9

    goto :goto_7

    :cond_b
    move-object v1, v2

    :goto_7
    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    sput-object v1, Lcom/transsion/rewardscenter/task/ad/u;->i:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/transsion/rewardscenterapi/TaskType;->AD_REWARD:Lcom/transsion/rewardscenterapi/TaskType;

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    move-result v3

    if-nez v1, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_c

    move-object v2, v0

    :cond_e
    check-cast v2, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    sput-object v2, Lcom/transsion/rewardscenter/task/ad/u;->j:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    return-void
.end method

.method public final s(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    return-void
.end method

.method public final t(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3

    :goto_0
    const/16 p2, 0x18

    int-to-long v4, p2

    mul-long/2addr v2, v4

    const/16 p2, 0x3c

    int-to-long v4, p2

    mul-long/2addr v2, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/u;->f()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package_cooldown_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V
    .locals 3

    const-string v0, "adTaskState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/u;->f()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task_state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
