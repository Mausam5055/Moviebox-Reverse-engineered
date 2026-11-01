.class public final Lkotlin/time/UnboundLocalDateTime$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/UnboundLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime$Companion;",
        "",
        "<init>",
        "()V",
        "Lkotlin/time/Instant;",
        "instant",
        "Lkotlin/time/UnboundLocalDateTime;",
        "a",
        "(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;
    .locals 23

    const-string v0, "instant"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getEpochSeconds()J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    div-long v6, v2, v4

    xor-long v8, v2, v4

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    const-wide/16 v8, -0x1

    if-gez v0, :cond_0

    mul-long v12, v6, v4

    cmp-long v0, v12, v2

    if-eqz v0, :cond_0

    add-long/2addr v6, v8

    :cond_0
    rem-long/2addr v2, v4

    xor-long v12, v2, v4

    neg-long v14, v2

    or-long/2addr v14, v2

    and-long/2addr v12, v14

    const/16 v0, 0x3f

    shr-long/2addr v12, v0

    and-long/2addr v4, v12

    add-long/2addr v2, v4

    long-to-int v0, v2

    const v2, 0xafaa8

    int-to-long v2, v2

    add-long/2addr v6, v2

    const/16 v2, 0x3c

    int-to-long v2, v2

    sub-long/2addr v6, v2

    cmp-long v2, v6, v10

    const/16 v3, 0x190

    const v4, 0x23ab1

    if-gez v2, :cond_1

    const-wide/16 v12, 0x1

    add-long v14, v6, v12

    int-to-long v8, v4

    div-long/2addr v14, v8

    sub-long/2addr v14, v12

    int-to-long v12, v3

    mul-long/2addr v12, v14

    neg-long v14, v14

    mul-long/2addr v14, v8

    add-long/2addr v6, v14

    goto :goto_0

    :cond_1
    move-wide v12, v10

    :goto_0
    int-to-long v2, v3

    mul-long v8, v2, v6

    const/16 v5, 0x24f

    int-to-long v14, v5

    add-long/2addr v8, v14

    int-to-long v4, v4

    div-long/2addr v8, v4

    const/16 v4, 0x16d

    int-to-long v4, v4

    mul-long v14, v4, v8

    const/4 v10, 0x4

    int-to-long v10, v10

    div-long v20, v8, v10

    add-long v14, v14, v20

    const/16 v1, 0x64

    move/from16 v20, v0

    int-to-long v0, v1

    div-long v21, v8, v0

    sub-long v14, v14, v21

    div-long v21, v8, v2

    add-long v14, v14, v21

    sub-long v14, v6, v14

    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gez v18, :cond_2

    const-wide/16 v16, -0x1

    add-long v8, v8, v16

    mul-long/2addr v4, v8

    div-long v10, v8, v10

    add-long/2addr v4, v10

    div-long v0, v8, v0

    sub-long/2addr v4, v0

    div-long v0, v8, v2

    add-long/2addr v4, v0

    sub-long v14, v6, v4

    :cond_2
    add-long/2addr v8, v12

    long-to-int v0, v14

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x2

    div-int/lit16 v1, v1, 0x99

    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0xc

    add-int/lit8 v12, v2, 0x1

    mul-int/lit16 v2, v1, 0x132

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v0, v2

    add-int/lit8 v13, v0, 0x1

    div-int/lit8 v1, v1, 0xa

    int-to-long v0, v1

    add-long/2addr v8, v0

    long-to-int v11, v8

    move/from16 v0, v20

    div-int/lit16 v14, v0, 0xe10

    mul-int/lit16 v1, v14, 0xe10

    sub-int/2addr v0, v1

    div-int/lit8 v15, v0, 0x3c

    mul-int/lit8 v1, v15, 0x3c

    sub-int v16, v0, v1

    new-instance v0, Lkotlin/time/UnboundLocalDateTime;

    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getNanosecondsOfSecond()I

    move-result v17

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    return-object v0
.end method
