.class public final Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageStatus"
.end annotation


# instance fields
.field private canGoBack:Z

.field private isDomContentLoaded:Z

.field private isHomePage:Z

.field private isLoadError:Z

.field private isPageFinished:Z

.field private isProgressChangedTo100:Z

.field private pageRandomIdByGAID:Ljava/lang/String;

.field private progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field private progressStartTime:J

.field private url:Ljava/lang/String;

.field private virtual_h5PageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 15

    const/16 v13, 0x7ff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;-><init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;",
            "JZ)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressCollectList"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    iput-boolean p6, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    iput-object p8, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p9, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    iput-wide p10, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    iput-boolean p12, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->pageRandomIdByGAID:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const-string v8, "0"

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    goto :goto_9

    :cond_9
    move-wide/from16 v11, p10

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v3, p12

    :goto_a
    move-object p1, p0

    move-object p2, v1

    move/from16 p3, v2

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-wide/from16 p11, v11

    move/from16 p13, v3

    invoke-direct/range {p1 .. p13}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;-><init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZILjava/lang/Object;)Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-wide v11, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    goto :goto_9

    :cond_9
    move-wide/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    goto :goto_a

    :cond_a
    move/from16 v1, p12

    :goto_a
    move-object p1, v2

    move p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-wide/from16 p10, v11

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->copy(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZ)Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    return-wide v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final component9()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZ)Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;",
            "JZ)",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;"
        }
    .end annotation

    const-string v0, "url"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressCollectList"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    move-object v1, v0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;-><init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getCanGoBack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    return v0
.end method

.method public final getPageRandomIdByGAID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->pageRandomIdByGAID:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    return-object v0
.end method

.method public final getProgressStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getVirtual_h5PageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public final isDomContentLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    return v0
.end method

.method public final isHomePage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    return v0
.end method

.method public final isLoadError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    return v0
.end method

.method public final isPageFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    return v0
.end method

.method public final isProgressChangedTo100()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    return v0
.end method

.method public final setCanGoBack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    return-void
.end method

.method public final setDomContentLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    return-void
.end method

.method public final setHomePage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    return-void
.end method

.method public final setLoadError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    return-void
.end method

.method public final setPageFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    return-void
.end method

.method public final setPageRandomIdByGAID(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->pageRandomIdByGAID:Ljava/lang/String;

    return-void
.end method

.method public final setProgressChangedTo100(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    return-void
.end method

.method public final setProgressCollectList(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public final setProgressCurrentStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    return-void
.end method

.method public final setProgressStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    return-void
.end method

.method public final setVirtual_h5PageId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    iget-wide v9, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    iget-boolean v11, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PageStatus(url="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isProgressChangedTo100="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPageFinished="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isHomePage="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isLoadError="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", canGoBack="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", virtual_h5PageId="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", progressCollectList="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", progressCurrentStep="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", progressStartTime="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isDomContentLoaded="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
