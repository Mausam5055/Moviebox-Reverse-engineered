.class public Lcom/cloud/hisavana/sdk/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/cloud/hisavana/sdk/q3;

.field private c:Ljava/util/List;

.field private d:Lcom/cloud/hisavana/sdk/api/listener/f;

.field private e:Z

.field private final f:Ljava/util/List;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/util/List;

.field private final m:Lcom/cloud/hisavana/sdk/l4$a;

.field n:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/api/listener/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->e:Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->k:Z

    new-instance v0, Lcom/cloud/hisavana/sdk/e$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/e$a;-><init>(Lcom/cloud/hisavana/sdk/e;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e;->m:Lcom/cloud/hisavana/sdk/l4$a;

    new-instance v0, Lcom/cloud/hisavana/sdk/e$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/e$b;-><init>(Lcom/cloud/hisavana/sdk/e;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e;->n:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/e;->d:Lcom/cloud/hisavana/sdk/api/listener/f;

    return-void
.end method

.method static synthetic A(Lcom/cloud/hisavana/sdk/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic B(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e;->l:Ljava/util/List;

    return-object p1
.end method

.method private C()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v2, 0x3

    const-string v3, "start to load ad"

    invoke-direct {v0, v3}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/P;->g()Lcom/cloud/hisavana/sdk/P;

    move-result-object v3

    iget-object v4, v0, Lcom/cloud/hisavana/sdk/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/P;->c(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v5

    xor-int/2addr v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v3, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/P;->g()Lcom/cloud/hisavana/sdk/P;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/P;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "\u672c\u5730\u6709\u4e91\u63a7\u6570\u636e\uff0c\u4f46\u5f53\u524d\u4ee3\u7801\u4f4d\u914d\u7f6e\u4e0d\u5b58\u5728, return"

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->r()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    const/16 v2, 0x1004

    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->T(Lcom/cloud/hisavana/sdk/q3;I)V

    :cond_0
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_NEW_UNIT_CONFIG_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {v0, v1, v7}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    return-void

    :cond_1
    const-string v3, "\u672c\u5730\u6ca1\u6709\u4e91\u63a7\u6570\u636e\uff0c\u6784\u5efa\u9ed8\u8ba4\u4e91\u63a7"

    invoke-direct {v0, v3}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    new-instance v3, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-direct {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;-><init>()V

    iget-object v8, v0, Lcom/cloud/hisavana/sdk/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCodeSeatId(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCodeSeatType(Ljava/lang/Integer;)V

    invoke-virtual {v3, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setOfflineAdEnable(Z)V

    iget-object v8, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/q3;->h()I

    move-result v8

    if-ltz v8, :cond_2

    iget-object v8, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/q3;->h()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setFillTimeoutDuration(Ljava/lang/Integer;)V

    :cond_2
    sget-object v8, Lcom/cloud/hisavana/sdk/common/util/h;->a:Lcom/cloud/hisavana/sdk/common/util/h;

    invoke-virtual {v8, v3}, Lcom/cloud/hisavana/sdk/common/util/h;->a(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v3

    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/cloud/hisavana/sdk/k1;->n(I)V

    :cond_3
    iget-object v8, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v8, v5}, Lcom/cloud/hisavana/sdk/q3;->b(I)V

    iget-object v8, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v8, v3}, Lcom/cloud/hisavana/sdk/q3;->c(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCrosslevelComparison()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v0, Lcom/cloud/hisavana/sdk/e;->e:Z

    iget-object v8, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/q3;->r()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-static {v8, v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->T(Lcom/cloud/hisavana/sdk/q3;I)V

    :cond_4
    invoke-static {}, La7/c;->p()Z

    move-result v8

    if-eqz v8, :cond_5

    :try_start_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "config info:\nfetchAdCount=%d\nfillTimeoutDuration=%s\nofflineAdEnable=%b\nadInternalRequestEnable=%b\nadShowCountLimit=%d\uff0ccurrentShowTimes=%d\ncarouselTime=%d\uff0ccarouselCount=%d\ncrosslevelComparison=%b"

    iget-object v10, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v12}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getFillTimeoutDuration()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v12}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    sget-object v13, Lcom/cloud/hisavana/sdk/Z;->a:Lcom/cloud/hisavana/sdk/Z;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/Z;->A()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-object v14, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdShowCountLimit()Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v15}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v15

    invoke-virtual {v15}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCurrentShowTimes()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselCount()Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCrosslevelComparison()Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v10, v4, v6

    const/4 v6, 0x1

    aput-object v11, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    :try_start_1
    aput-object v12, v4, v6

    const/4 v10, 0x3

    aput-object v13, v4, v10

    const/4 v10, 0x4

    aput-object v14, v4, v10

    const/4 v10, 0x5

    aput-object v15, v4, v10

    const/4 v10, 0x6

    aput-object v7, v4, v10

    const/4 v7, 0x7

    aput-object v2, v4, v7

    const/16 v2, 0x8

    aput-object v1, v4, v2

    invoke-static {v8, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/cloud/sdk/commonutil/util/q;->b(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_5
    const/4 v6, 0x2

    :catch_1
    :goto_0
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdShowCountLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_6

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCurrentShowTimes()I

    move-result v1

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdShowCountLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u4ee3\u7801\u4f4d\u5c55\u793a\u6b21\u6570\u8fbe\u5230\u4e0a\u9650 ----- \u5df2\u5c55\u793a\u6b21\u6570="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCurrentShowTimes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  \u5c55\u793a\u4e0a\u9650="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdShowCountLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_NEW_IMPRESSION_LIMIT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    return-void

    :cond_6
    const/4 v2, 0x0

    invoke-direct {v0, v3}, Lcom/cloud/hisavana/sdk/e;->w(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_SHOW_NOT_IN_INTERVAL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    return-void

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current cloud is default cloud ---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isDefaultConfig()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/cloud/hisavana/sdk/e;->m(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCrosslevelComparison()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getFillTimeoutDuration()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/l4;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/l4;->b()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/l4;->c(I)V

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-interface {v2, v3}, Lcom/cloud/hisavana/sdk/c4;->a(Lcom/cloud/hisavana/sdk/q3;)V

    goto :goto_1

    :cond_9
    move v1, v6

    goto :goto_2

    :cond_a
    const/4 v4, 0x1

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/e;->F(I)V

    move v1, v4

    :goto_2
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-string v3, "s_req_type"

    invoke-static {v2, v3, v1}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    goto :goto_3

    :cond_b
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_CHAIN_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    :goto_3
    return-void
.end method

.method private F(I)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/l4;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/l4;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/l4;->c(I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-interface {v1, p1}, Lcom/cloud/hisavana/sdk/c4;->a(Lcom/cloud/hisavana/sdk/q3;)V

    :cond_1
    return-void
.end method

.method static synthetic G(Lcom/cloud/hisavana/sdk/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e;->K()V

    return-void
.end method

.method private H(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-class v0, Lcom/cloud/hisavana/sdk/y4;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/e;->l(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/l4;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/hisavana/sdk/y4;

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/y4;->k(Ljava/util/List;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e;->F(I)V

    :cond_0
    return-void
.end method

.method private I()V
    .locals 4

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e;->n:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/q3;->m()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->f(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic J(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e;->H(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e;->I()V

    return-void
.end method

.method private K()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/e;->h(Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e;->C()V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/e;->v(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/e;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/e;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/e;->p(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e;->J(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e;->h(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method private h(Ljava/util/List;)I
    .locals 8

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lcom/cloud/hisavana/sdk/api/listener/f;

    const/4 v2, 0x2

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/k3;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/k3;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/e;->k:Z

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e;->y(Z)Z

    move-result p1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/e;->z(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "s_req_timeout"

    const/4 v6, 0x0

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_5

    sget-object p1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {v0, v5, v4}, Lcom/cloud/hisavana/sdk/common/util/g0;->c(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {p1, v0, v2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->x(Ljava/util/List;Lcom/cloud/hisavana/sdk/q3;)V

    invoke-direct {p0, v6, v3}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    sub-int v1, p1, v0

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    :goto_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-boolean v7, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    invoke-static {v0, v5, v7}, Lcom/cloud/hisavana/sdk/common/util/g0;->c(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Z)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/e;->k:Z

    if-eqz p1, :cond_8

    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/e;->y(Z)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e;->l:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "AdFetch"

    const-string v2, "adsList is empty,webPageRecommendInfo is not empty return success"

    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v3}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    goto :goto_1

    :cond_9
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_TAKE_AD_RESULT_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1, v6}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {p1, v0, v2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->x(Ljava/util/List;Lcom/cloud/hisavana/sdk/q3;)V

    invoke-direct {p0, v6, v3}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    :goto_1
    return v1
.end method

.method private i(Lcom/cloud/hisavana/sdk/q3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mAdCount:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->k()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    invoke-virtual {v1}, Lb7/b;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    invoke-virtual {v1}, Lb7/b;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameScene:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    invoke-virtual {v1}, Lb7/b;->a()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->extInfo:Ljava/util/Map;

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->y()Z

    move-result v1

    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->supportEw:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestTs:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->q()Z

    move-result v1

    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoPlayVideoAd:Z

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAdEnable:Z

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->cacheAdCount:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->o()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mTriggerNetState:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->p()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->webPageReqInfo:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static j(Lcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/api/listener/f;)Lcom/cloud/hisavana/sdk/e;
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/e;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/e;-><init>(Lcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/api/listener/f;)V

    return-object v0
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/e;)Lcom/cloud/hisavana/sdk/q3;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    return-object p0
.end method

.method private l(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/l4;
    .locals 1

    const-class v0, Lcom/cloud/hisavana/sdk/d1;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/cloud/hisavana/sdk/d1;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/d1;-><init>()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getFillTimeoutDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/l4;->e(I)V

    goto :goto_0

    :cond_0
    const-class v0, Lcom/cloud/hisavana/sdk/g0;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/cloud/hisavana/sdk/g0;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/g0;-><init>()V

    goto :goto_0

    :cond_1
    const-class v0, Lcom/cloud/hisavana/sdk/p2;

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/cloud/hisavana/sdk/p2;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/p2;-><init>()V

    goto :goto_0

    :cond_2
    const-class v0, Lcom/cloud/hisavana/sdk/y4;

    if-ne p1, v0, :cond_3

    new-instance p1, Lcom/cloud/hisavana/sdk/y4;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/y4;-><init>()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->m:Lcom/cloud/hisavana/sdk/l4$a;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/l4;->d(Lcom/cloud/hisavana/sdk/l4$a;)V

    :cond_4
    return-object p1
.end method

.method private m(I)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v1

    sget-object v2, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/q3;->x()Z

    move-result v3

    const-string v4, "temp_online_without_req"

    const-class v5, Lcom/cloud/hisavana/sdk/p2;

    if-eqz v3, :cond_0

    const/16 p1, 0x13a3

    invoke-static {v2, v4, p1}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/e;->l(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/l4;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const-class v6, Lcom/cloud/hisavana/sdk/g0;

    if-ne p1, v3, :cond_2

    const/16 p1, 0x13a4

    invoke-static {v2, v4, p1}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    if-eqz v1, :cond_1

    invoke-direct {p0, v6}, Lcom/cloud/hisavana/sdk/e;->l(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/l4;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object p1, Lcom/cloud/hisavana/sdk/Z;->a:Lcom/cloud/hisavana/sdk/Z;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/Z;->A()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/e;->l(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/l4;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-class p1, Lcom/cloud/hisavana/sdk/d1;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e;->l(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/l4;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v6}, Lcom/cloud/hisavana/sdk/e;->l(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/l4;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p1, Lcom/cloud/hisavana/sdk/Z;->a:Lcom/cloud/hisavana/sdk/Z;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/Z;->A()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/e;->l(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/l4;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-object v0
.end method

.method private o(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "default_ad_status"

    const-string v1, "offline_ad_status"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e;->i:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic p(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lcom/cloud/hisavana/sdk/api/listener/f;

    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/f;->b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method private q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V
    .locals 10

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->h:Z

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->d(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lcom/cloud/hisavana/sdk/api/listener/f;

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/e;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLocalOfflineAdCacheCount()I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/q3;->g()J

    move-result-wide v7

    sub-long v7, p1, v7

    const/4 v3, 0x0

    const/4 v9, 0x2

    invoke-virtual/range {v0 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->A(ILcom/cloud/hisavana/sdk/q3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/q3;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "time_consuming"

    invoke-static {v2, v3, v0, v1}, Lcom/cloud/hisavana/sdk/common/util/g0;->f(Landroid/os/Bundle;Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLocalOfflineAdCacheCount()I

    move-result v3

    const-string v4, "cache_offline_ad_count"

    invoke-static {v2, v4, v3}, Lcom/cloud/hisavana/sdk/common/util/g0;->d(Landroid/os/Bundle;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->i:Ljava/lang/String;

    const-string v4, "offline_ad_status"

    invoke-static {v2, v4, v3}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->j:Ljava/lang/String;

    const-string v4, "default_ad_status"

    invoke-static {v2, v4, v3}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-static {}, La7/c;->p()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fill_fail\uff0cerror code is "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ad_trigger_status\uff0c"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/q3;->o()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x3

    invoke-static {p2, v3}, Lcom/cloud/sdk/commonutil/util/q;->b(Ljava/lang/String;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fill failed, filltime="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "error="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    :cond_4
    sget-object p2, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lcom/cloud/hisavana/sdk/n3;

    invoke-direct {v0, p0, p1, v2}, Lcom/cloud/hisavana/sdk/n3;-><init>(Lcom/cloud/hisavana/sdk/e;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    invoke-direct {p0, p2, v0, v1}, Lcom/cloud/hisavana/sdk/e;->u(Ljava/util/List;J)V

    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lcom/cloud/hisavana/sdk/o3;

    invoke-direct {v0, p0, p2, v2}, Lcom/cloud/hisavana/sdk/o3;-><init>(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic r(Lcom/cloud/hisavana/sdk/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e;->F(I)V

    return-void
.end method

.method static synthetic s(Lcom/cloud/hisavana/sdk/e;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e;->o(Landroid/os/Bundle;)V

    return-void
.end method

.method private t(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, La7/c;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", codeSeatId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdFetch"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private u(Ljava/util/List;J)V
    .locals 3

    const-string v0, "\n"

    invoke-static {}, La7/c;->p()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fill time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, "ad_trigger_status: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/q3;->o()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\uff0cis_offline_ad: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "\uff0cadCreativeId: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", source:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/cloud/sdk/commonutil/util/q;->b(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private synthetic v(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lcom/cloud/hisavana/sdk/api/listener/f;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/e;->i(Lcom/cloud/hisavana/sdk/q3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v2

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/cloud/hisavana/sdk/api/listener/f;->c(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lcom/cloud/hisavana/sdk/api/listener/f;

    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/f;->d(Ljava/util/List;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private w(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getShowInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLastShowAdTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateDownloadCount, current "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",lastShowAdTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",showInterval "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AdFetch"

    invoke-virtual {p1, v6, v5}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_1

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic x(Lcom/cloud/hisavana/sdk/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/e;->k:Z

    return p1
.end method

.method private y(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/l4;

    if-eqz p1, :cond_1

    instance-of v2, v1, Lcom/cloud/hisavana/sdk/d1;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/l4;->b()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private z(I)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/e;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getShowSourceSize()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowSourceSize(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, p1, :cond_1

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildDeduplicatedAdResult error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdFetch"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-object v2
.end method


# virtual methods
.method public D(Ljava/util/List;)V
    .locals 2

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/l3;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/l3;-><init>(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public E()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->d(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lcom/cloud/hisavana/sdk/api/listener/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e;->l:Ljava/util/List;

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/m3;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/m3;-><init>(Lcom/cloud/hisavana/sdk/e;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e;->I()V

    return-void
.end method
