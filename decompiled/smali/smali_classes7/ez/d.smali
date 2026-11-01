.class public final Lez/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lez/d$b;,
        Lez/d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lez/d$b;


# instance fields
.field private earningsByPlacementUSD:Ljava/lang/Float;

.field private isUserAPurchaser:Ljava/lang/Boolean;

.field private isUserASubscriber:Ljava/lang/Boolean;

.field private last30DaysMeanSpendUSD:Ljava/lang/Float;

.field private last30DaysMedianSpendUSD:Ljava/lang/Float;

.field private last30DaysPlacementFillRate:Ljava/lang/Float;

.field private last30DaysTotalSpendUSD:Ljava/lang/Float;

.field private last30DaysUserLtvUSD:Ljava/lang/Float;

.field private last30DaysUserPltvUSD:Ljava/lang/Float;

.field private last7DaysMeanSpendUSD:Ljava/lang/Float;

.field private last7DaysMedianSpendUSD:Ljava/lang/Float;

.field private last7DaysPlacementFillRate:Ljava/lang/Float;

.field private last7DaysTotalSpendUSD:Ljava/lang/Float;

.field private last7DaysUserLtvUSD:Ljava/lang/Float;

.field private last7DaysUserPltvUSD:Ljava/lang/Float;

.field private topNAdomain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalEarningsUSD:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lez/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lez/d$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lez/d;->Companion:Lez/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Float;Ljava/lang/Float;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lkotlinx/serialization/internal/w1;)V
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    move-object v0, p0

    move v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, v0, Lez/d;->totalEarningsUSD:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    move-object v2, p2

    iput-object v2, v0, Lez/d;->totalEarningsUSD:Ljava/lang/Float;

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    iput-object v3, v0, Lez/d;->earningsByPlacementUSD:Ljava/lang/Float;

    goto :goto_1

    :cond_1
    move-object v2, p3

    iput-object v2, v0, Lez/d;->earningsByPlacementUSD:Ljava/lang/Float;

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_2

    iput-object v3, v0, Lez/d;->topNAdomain:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v2, p4

    iput-object v2, v0, Lez/d;->topNAdomain:Ljava/util/List;

    :goto_2
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_3

    iput-object v3, v0, Lez/d;->isUserAPurchaser:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v2, p5

    iput-object v2, v0, Lez/d;->isUserAPurchaser:Ljava/lang/Boolean;

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_4

    iput-object v3, v0, Lez/d;->isUserASubscriber:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object v2, p6

    iput-object v2, v0, Lez/d;->isUserASubscriber:Ljava/lang/Boolean;

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_5

    iput-object v3, v0, Lez/d;->last7DaysTotalSpendUSD:Ljava/lang/Float;

    goto :goto_5

    :cond_5
    move-object v2, p7

    iput-object v2, v0, Lez/d;->last7DaysTotalSpendUSD:Ljava/lang/Float;

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_6

    iput-object v3, v0, Lez/d;->last7DaysMedianSpendUSD:Ljava/lang/Float;

    goto :goto_6

    :cond_6
    move-object v2, p8

    iput-object v2, v0, Lez/d;->last7DaysMedianSpendUSD:Ljava/lang/Float;

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_7

    iput-object v3, v0, Lez/d;->last7DaysMeanSpendUSD:Ljava/lang/Float;

    goto :goto_7

    :cond_7
    move-object v2, p9

    iput-object v2, v0, Lez/d;->last7DaysMeanSpendUSD:Ljava/lang/Float;

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_8

    iput-object v3, v0, Lez/d;->last30DaysTotalSpendUSD:Ljava/lang/Float;

    goto :goto_8

    :cond_8
    move-object v2, p10

    iput-object v2, v0, Lez/d;->last30DaysTotalSpendUSD:Ljava/lang/Float;

    :goto_8
    and-int/lit16 v2, v1, 0x200

    if-nez v2, :cond_9

    iput-object v3, v0, Lez/d;->last30DaysMedianSpendUSD:Ljava/lang/Float;

    goto :goto_9

    :cond_9
    move-object v2, p11

    iput-object v2, v0, Lez/d;->last30DaysMedianSpendUSD:Ljava/lang/Float;

    :goto_9
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_a

    iput-object v3, v0, Lez/d;->last30DaysMeanSpendUSD:Ljava/lang/Float;

    goto :goto_a

    :cond_a
    move-object/from16 v2, p12

    iput-object v2, v0, Lez/d;->last30DaysMeanSpendUSD:Ljava/lang/Float;

    :goto_a
    and-int/lit16 v2, v1, 0x800

    if-nez v2, :cond_b

    iput-object v3, v0, Lez/d;->last7DaysUserPltvUSD:Ljava/lang/Float;

    goto :goto_b

    :cond_b
    move-object/from16 v2, p13

    iput-object v2, v0, Lez/d;->last7DaysUserPltvUSD:Ljava/lang/Float;

    :goto_b
    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_c

    iput-object v3, v0, Lez/d;->last7DaysUserLtvUSD:Ljava/lang/Float;

    goto :goto_c

    :cond_c
    move-object/from16 v2, p14

    iput-object v2, v0, Lez/d;->last7DaysUserLtvUSD:Ljava/lang/Float;

    :goto_c
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_d

    iput-object v3, v0, Lez/d;->last30DaysUserPltvUSD:Ljava/lang/Float;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p15

    iput-object v2, v0, Lez/d;->last30DaysUserPltvUSD:Ljava/lang/Float;

    :goto_d
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_e

    iput-object v3, v0, Lez/d;->last30DaysUserLtvUSD:Ljava/lang/Float;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p16

    iput-object v2, v0, Lez/d;->last30DaysUserLtvUSD:Ljava/lang/Float;

    :goto_e
    const v2, 0x8000

    and-int/2addr v2, v1

    if-nez v2, :cond_f

    iput-object v3, v0, Lez/d;->last7DaysPlacementFillRate:Ljava/lang/Float;

    goto :goto_f

    :cond_f
    move-object/from16 v2, p17

    iput-object v2, v0, Lez/d;->last7DaysPlacementFillRate:Ljava/lang/Float;

    :goto_f
    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_10

    iput-object v3, v0, Lez/d;->last30DaysPlacementFillRate:Ljava/lang/Float;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p18

    iput-object v1, v0, Lez/d;->last30DaysPlacementFillRate:Ljava/lang/Float;

    :goto_10
    return-void
.end method

.method private static synthetic getEarningsByPlacementUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast30DaysMeanSpendUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast30DaysMedianSpendUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast30DaysPlacementFillRate$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast30DaysTotalSpendUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast30DaysUserLtvUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast30DaysUserPltvUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast7DaysMeanSpendUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast7DaysMedianSpendUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast7DaysPlacementFillRate$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast7DaysTotalSpendUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast7DaysUserLtvUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLast7DaysUserPltvUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getTopNAdomain$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getTotalEarningsUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic isUserAPurchaser$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic isUserASubscriber$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lez/d;Le00/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lez/d;->totalEarningsUSD:Ljava/lang/Float;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->totalEarningsUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lez/d;->earningsByPlacementUSD:Ljava/lang/Float;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->earningsByPlacementUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lez/d;->topNAdomain:Ljava/util/List;

    if-eqz v1, :cond_5

    :goto_2
    new-instance v1, Lkotlinx/serialization/internal/f;

    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    iget-object v2, p0, Lez/d;->topNAdomain:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lez/d;->isUserAPurchaser:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    iget-object v2, p0, Lez/d;->isUserAPurchaser:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_7
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lez/d;->isUserASubscriber:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    :goto_4
    sget-object v1, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    iget-object v2, p0, Lez/d;->isUserASubscriber:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_9
    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lez/d;->last7DaysTotalSpendUSD:Ljava/lang/Float;

    if-eqz v1, :cond_b

    :goto_5
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->last7DaysTotalSpendUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_b
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lez/d;->last7DaysMedianSpendUSD:Ljava/lang/Float;

    if-eqz v1, :cond_d

    :goto_6
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->last7DaysMedianSpendUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_d
    const/4 v0, 0x7

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lez/d;->last7DaysMeanSpendUSD:Ljava/lang/Float;

    if-eqz v1, :cond_f

    :goto_7
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->last7DaysMeanSpendUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_f
    const/16 v0, 0x8

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    iget-object v1, p0, Lez/d;->last30DaysTotalSpendUSD:Ljava/lang/Float;

    if-eqz v1, :cond_11

    :goto_8
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->last30DaysTotalSpendUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_11
    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_9

    :cond_12
    iget-object v1, p0, Lez/d;->last30DaysMedianSpendUSD:Ljava/lang/Float;

    if-eqz v1, :cond_13

    :goto_9
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->last30DaysMedianSpendUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_13
    const/16 v0, 0xa

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    iget-object v1, p0, Lez/d;->last30DaysMeanSpendUSD:Ljava/lang/Float;

    if-eqz v1, :cond_15

    :goto_a
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->last30DaysMeanSpendUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_15
    const/16 v0, 0xb

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_b

    :cond_16
    iget-object v1, p0, Lez/d;->last7DaysUserPltvUSD:Ljava/lang/Float;

    if-eqz v1, :cond_17

    :goto_b
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->last7DaysUserPltvUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_17
    const/16 v0, 0xc

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_c

    :cond_18
    iget-object v1, p0, Lez/d;->last7DaysUserLtvUSD:Ljava/lang/Float;

    if-eqz v1, :cond_19

    :goto_c
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->last7DaysUserLtvUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_19
    const/16 v0, 0xd

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_d

    :cond_1a
    iget-object v1, p0, Lez/d;->last30DaysUserPltvUSD:Ljava/lang/Float;

    if-eqz v1, :cond_1b

    :goto_d
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->last30DaysUserPltvUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1b
    const/16 v0, 0xe

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_e

    :cond_1c
    iget-object v1, p0, Lez/d;->last30DaysUserLtvUSD:Ljava/lang/Float;

    if-eqz v1, :cond_1d

    :goto_e
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->last30DaysUserLtvUSD:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1d
    const/16 v0, 0xf

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_f

    :cond_1e
    iget-object v1, p0, Lez/d;->last7DaysPlacementFillRate:Ljava/lang/Float;

    if-eqz v1, :cond_1f

    :goto_f
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object v2, p0, Lez/d;->last7DaysPlacementFillRate:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1f
    const/16 v0, 0x10

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_10

    :cond_20
    iget-object v1, p0, Lez/d;->last30DaysPlacementFillRate:Ljava/lang/Float;

    if-eqz v1, :cond_21

    :goto_10
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    iget-object p0, p0, Lez/d;->last30DaysPlacementFillRate:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, p0}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_21
    return-void
.end method


# virtual methods
.method public final setEarningsByPlacement(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->earningsByPlacementUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setIsUserAPurchaser(Z)Lez/d;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lez/d;->isUserAPurchaser:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsUserASubscriber(Z)Lez/d;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lez/d;->isUserASubscriber:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setLast30DaysMeanSpendUsd(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last30DaysMeanSpendUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setLast30DaysMedianSpendUsd(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last30DaysMedianSpendUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setLast30DaysPlacementFillRate(F)Lez/d;
    .locals 3

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/ads/internal/util/q;->isInRange(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last30DaysPlacementFillRate:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setLast30DaysTotalSpendUsd(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last30DaysTotalSpendUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setLast30DaysUserLtvUsd(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last30DaysUserLtvUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setLast30DaysUserPltvUsd(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last30DaysUserPltvUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setLast7DaysMeanSpendUsd(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last7DaysMeanSpendUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setLast7DaysMedianSpendUsd(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last7DaysMedianSpendUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setLast7DaysPlacementFillRate(F)Lez/d;
    .locals 3

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/ads/internal/util/q;->isInRange(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last7DaysPlacementFillRate:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setLast7DaysTotalSpendUsd(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last7DaysTotalSpendUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setLast7DaysUserLtvUsd(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last7DaysUserLtvUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setLast7DaysUserPltvUsd(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->last7DaysUserPltvUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method

.method public final setTopNAdomain(Ljava/util/List;)Lez/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lez/d;"
        }
    .end annotation

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lez/d;->topNAdomain:Ljava/util/List;

    return-object p0
.end method

.method public final setTotalEarningsUsd(F)Lez/d;
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lez/d;->totalEarningsUSD:Ljava/lang/Float;

    :cond_0
    return-object p0
.end method
