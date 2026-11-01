.class public final Lcom/transsion/rewardscenter/task/ad/v$c;
.super Lcom/transsion/rewardscenter/task/ad/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/rewardscenter/task/ad/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field private c:Lcom/transsion/ad/bidding/base/r;

.field private d:Lcom/transsion/ad/bidding/base/u;

.field private e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZJJ)V
    .locals 1

    const-string v0, "adBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTaskState"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/rewardscenter/task/ad/v;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iput-object p3, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->c:Lcom/transsion/ad/bidding/base/r;

    iput-object p4, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->d:Lcom/transsion/ad/bidding/base/u;

    iput-object p5, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    iput-object p6, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->g:Z

    iput-wide p8, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->h:J

    iput-wide p10, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->i:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p12

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
    move-object/from16 v2, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_3

    sget-object v4, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    goto :goto_3

    :cond_3
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_4

    const-string v5, ""

    goto :goto_4

    :cond_4
    move-object/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    move/from16 v6, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_6

    move-wide v10, v8

    goto :goto_6

    :cond_6
    move-wide/from16 v10, p8

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move-wide/from16 v8, p10

    :goto_7
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v2

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move/from16 p9, v6

    move-wide/from16 p10, v10

    move-wide/from16 p12, v8

    invoke-direct/range {p2 .. p13}, Lcom/transsion/rewardscenter/task/ad/v$c;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZJJ)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/rewardscenter/task/ad/v$c;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZJJILjava/lang/Object;)Lcom/transsion/rewardscenter/task/ad/v$c;
    .locals 13

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/rewardscenter/task/ad/v$c;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/rewardscenter/task/ad/v$c;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/rewardscenter/task/ad/v$c;->c:Lcom/transsion/ad/bidding/base/r;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/rewardscenter/task/ad/v$c;->d:Lcom/transsion/ad/bidding/base/u;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/rewardscenter/task/ad/v$c;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/rewardscenter/task/ad/v$c;->f:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/transsion/rewardscenter/task/ad/v$c;->g:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-wide v9, v0, Lcom/transsion/rewardscenter/task/ad/v$c;->h:J

    goto :goto_7

    :cond_7
    move-wide/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-wide v11, v0, Lcom/transsion/rewardscenter/task/ad/v$c;->i:J

    goto :goto_8

    :cond_8
    move-wide/from16 v11, p10

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    invoke-virtual/range {p0 .. p11}, Lcom/transsion/rewardscenter/task/ad/v$c;->a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZJJ)Lcom/transsion/rewardscenter/task/ad/v$c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZJJ)Lcom/transsion/rewardscenter/task/ad/v$c;
    .locals 13

    const-string v0, "adBean"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTaskState"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/v$c;

    move-object v1, v0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/transsion/rewardscenter/task/ad/v$c;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZJJ)V

    return-object v0
.end method

.method public final c()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    return-object v0
.end method

.method public final d()Lcom/transsion/ad/bidding/base/r;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->c:Lcom/transsion/ad/bidding/base/r;

    return-object v0
.end method

.method public final e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$c;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$c;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->c:Lcom/transsion/ad/bidding/base/r;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$c;->c:Lcom/transsion/ad/bidding/base/r;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->d:Lcom/transsion/ad/bidding/base/u;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$c;->d:Lcom/transsion/ad/bidding/base/u;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$c;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$c;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->g:Z

    iget-boolean v3, p1, Lcom/transsion/rewardscenter/task/ad/v$c;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->h:J

    iget-wide v5, p1, Lcom/transsion/rewardscenter/task/ad/v$c;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->i:J

    iget-wide v5, p1, Lcom/transsion/rewardscenter/task/ad/v$c;->i:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->g:Z

    return v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->i:J

    return-wide v0
.end method

.method public final h()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

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

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->c:Lcom/transsion/ad/bidding/base/r;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->d:Lcom/transsion/ad/bidding/base/u;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->g:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->h:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->i:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->h:J

    return-wide v0
.end method

.method public final k()Lcom/transsion/ad/bidding/base/u;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->d:Lcom/transsion/ad/bidding/base/u;

    return-object v0
.end method

.method public final l(Lcom/transsion/ad/bidding/base/r;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->c:Lcom/transsion/ad/bidding/base/r;

    return-void
.end method

.method public final m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->g:Z

    return-void
.end method

.method public final o(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->i:J

    return-void
.end method

.method public final p(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    return-void
.end method

.method public final q(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->h:J

    return-void
.end method

.method public final r(Lcom/transsion/ad/bidding/base/u;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->d:Lcom/transsion/ad/bidding/base/u;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v2, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->c:Lcom/transsion/ad/bidding/base/r;

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->d:Lcom/transsion/ad/bidding/base/u;

    iget-object v4, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    iget-object v5, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->g:Z

    iget-wide v7, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->h:J

    iget-wide v9, p0, Lcom/transsion/rewardscenter/task/ad/v$c;->i:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StageItem(adBean="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", nativeAdView="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adLayoutProvider="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sspLayoutProvider="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adTaskState="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bind="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", playedTime="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", downloadStartTime="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
