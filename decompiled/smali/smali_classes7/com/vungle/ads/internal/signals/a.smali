.class public final Lcom/vungle/ads/internal/signals/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/signals/a$b;,
        Lcom/vungle/ads/internal/signals/a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/signals/a$b;


# instance fields
.field private final sessionCount:I

.field private sessionCreationTime:J

.field private sessionDepthCounter:I

.field private sessionDuration:J

.field private final sessionId:Ljava/lang/String;

.field private signaledAd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/signals/b;",
            ">;"
        }
    .end annotation
.end field

.field private unclosedAd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/signals/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/signals/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/signals/a;->Companion:Lcom/vungle/ads/internal/signals/a$b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "randomUUID().toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;JLjava/util/List;JILjava/util/List;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    and-int/lit8 p11, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p11, :cond_0

    sget-object p11, Lcom/vungle/ads/internal/signals/a$a;->INSTANCE:Lcom/vungle/ads/internal/signals/a$a;

    invoke-virtual {p11}, Lcom/vungle/ads/internal/signals/a$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/m1;->a(IILkotlinx/serialization/descriptors/f;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "randomUUID().toString()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    iput-wide p2, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    goto :goto_1

    :cond_2
    iput-wide p4, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    goto :goto_2

    :cond_3
    iput-object p6, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    :goto_2
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    goto :goto_3

    :cond_4
    iput-wide p7, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    :goto_3
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    const/4 p2, 0x0

    iput p2, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    goto :goto_4

    :cond_5
    iput p9, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    :goto_4
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    goto :goto_5

    :cond_6
    iput-object p10, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    :goto_5
    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/signals/a;IILjava/lang/Object;)Lcom/vungle/ads/internal/signals/a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/signals/a;->copy(I)Lcom/vungle/ads/internal/signals/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSessionCount$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSessionCreationTime$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSessionDepthCounter$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSessionDuration$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSessionId$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSignaledAd$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUnclosedAd$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/signals/a;Le00/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Le00/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "randomUUID().toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Le00/d;->y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    :goto_1
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->F(Lkotlinx/serialization/descriptors/f;IJ)V

    :cond_3
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    new-instance v1, Lkotlinx/serialization/internal/f;

    sget-object v2, Lcom/vungle/ads/internal/signals/b$a;->INSTANCE:Lcom/vungle/ads/internal/signals/b$a;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->C(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    :goto_3
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->F(Lkotlinx/serialization/descriptors/f;IJ)V

    :cond_7
    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    if-eqz v1, :cond_9

    :goto_4
    iget v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    invoke-interface {p1, p2, v0, v1}, Le00/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    :cond_9
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_5
    new-instance v1, Lkotlinx/serialization/internal/f;

    sget-object v2, Lcom/vungle/ads/internal/model/j$a;->INSTANCE:Lcom/vungle/ads/internal/model/j$a;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    iget-object p0, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, p0}, Le00/d;->C(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    return v0
.end method

.method public final copy(I)Lcom/vungle/ads/internal/signals/a;
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/signals/a;

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/signals/a;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/signals/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/signals/a;

    iget v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    iget p1, p1, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getSessionCount()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    return v0
.end method

.method public final getSessionCreationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    return-wide v0
.end method

.method public final getSessionDepthCounter()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    return v0
.end method

.method public final getSessionDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    return-wide v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignaledAd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/signals/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    return-object v0
.end method

.method public final getUnclosedAd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    return v0
.end method

.method public final setSessionCreationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    return-void
.end method

.method public final setSessionDepthCounter(I)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    return-void
.end method

.method public final setSessionDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    return-void
.end method

.method public final setSignaledAd(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/signals/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    return-void
.end method

.method public final setUnclosedAd(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionData(sessionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
