.class public final Lcom/transsion/rewardscenter/task/ad/v$a;
.super Lcom/transsion/rewardscenter/task/ad/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/rewardscenter/task/ad/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field private c:Lcom/transsion/ad/bidding/base/r;

.field private d:Lcom/transsion/ad/bidding/base/u;

.field private e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJ)V
    .locals 1

    const-string v0, "adBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTaskState"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/rewardscenter/task/ad/v;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iput-object p3, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    iput-object p4, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    iput-object p5, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    iput-object p6, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    iput-boolean p8, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    iput-wide p9, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_3

    sget-object v4, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_4

    const-string v5, ""

    goto :goto_4

    :cond_4
    move-object/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_5

    :cond_5
    move/from16 v6, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v7, p8

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    const-wide/16 v8, 0x0

    goto :goto_7

    :cond_7
    move-wide/from16 v8, p9

    :goto_7
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v3

    move-object/from16 p6, v2

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move/from16 p9, v6

    move/from16 p10, v7

    move-wide/from16 p11, v8

    invoke-direct/range {p2 .. p12}, Lcom/transsion/rewardscenter/task/ad/v$a;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJ)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/rewardscenter/task/ad/v$a;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJILjava/lang/Object;)Lcom/transsion/rewardscenter/task/ad/v$a;
    .locals 12

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-wide v10, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    goto :goto_8

    :cond_8
    move-wide/from16 v10, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-wide/from16 p9, v10

    invoke-virtual/range {p0 .. p10}, Lcom/transsion/rewardscenter/task/ad/v$a;->a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJ)Lcom/transsion/rewardscenter/task/ad/v$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJ)Lcom/transsion/rewardscenter/task/ad/v$a;
    .locals 12

    const-string v0, "adBean"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTaskState"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/v$a;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/transsion/rewardscenter/task/ad/v$a;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJ)V

    return-object v0
.end method

.method public final c()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    return-object v0
.end method

.method public final d()Lcom/transsion/ad/bidding/base/r;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    return-object v0
.end method

.method public final e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/rewardscenter/task/ad/v$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v$a;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    iget-boolean v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    iget-boolean v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    iget-wide v5, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    return v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    return-wide v0
.end method

.method public final h()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lcom/transsion/ad/bidding/base/u;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    return v0
.end method

.method public final l(Lcom/transsion/ad/bidding/base/r;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    return-void
.end method

.method public final m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    return-void
.end method

.method public final o(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    return-void
.end method

.method public final p(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    return-void
.end method

.method public final q(Lcom/transsion/ad/bidding/base/u;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v2, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    iget-object v4, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    iget-object v5, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    iget-boolean v7, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    iget-wide v8, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RegularItem(adBean="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", nativeAdView="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adLayoutProvider="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sspLayoutProvider="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adTaskState="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isPullNewAd="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", bind="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", downloadStartTime="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
