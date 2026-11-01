.class public final Lcom/vungle/ads/internal/model/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/g$b;,
        Lcom/vungle/ads/internal/model/g$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/g$b;


# instance fields
.field private final headerBidding:Z

.field private final referenceId:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private wakeupTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/model/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/g$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/model/g;->Companion:Lcom/vungle/ads/internal/model/g$b;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p5, :cond_0

    sget-object p5, Lcom/vungle/ads/internal/model/g$a;->INSTANCE:Lcom/vungle/ads/internal/model/g$a;

    invoke-virtual {p5}, Lcom/vungle/ads/internal/model/g$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/m1;->a(IILkotlinx/serialization/descriptors/f;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/g;->referenceId:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    goto :goto_0

    :cond_1
    iput-boolean p3, p0, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    :goto_0
    and-int/lit8 p1, p1, 0x4

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iput-object p2, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    :goto_1
    iput-object p2, p0, Lcom/vungle/ads/internal/model/g;->wakeupTime:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "referenceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/g;->referenceId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    iput-object p3, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/model/g;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/g;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/g;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/vungle/ads/internal/model/g;->referenceId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/internal/model/g;->copy(Ljava/lang/String;ZLjava/lang/String;)Lcom/vungle/ads/internal/model/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getHeaderBidding$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getReferenceId$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getWakeupTime$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/g;Le00/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->referenceId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Le00/d;->y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    if-eqz v1, :cond_1

    :goto_0
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    invoke-interface {p1, p2, v0, v1}, Le00/d;->x(Lkotlinx/serialization/descriptors/f;IZ)V

    :cond_1
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->referenceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZLjava/lang/String;)Lcom/vungle/ads/internal/model/g;
    .locals 1

    const-string v0, "referenceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/model/g;

    invoke-direct {v0, p1, p2, p3}, Lcom/vungle/ads/internal/model/g;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/model/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/model/g;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/g;->referenceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/g;->referenceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    iget-boolean v3, p1, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getHeaderBidding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    return v0
.end method

.method public final getReferenceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->referenceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getWakeupTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->wakeupTime:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->referenceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAppOpen()Z
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    const-string v1, "appopen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isBanner()Z
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    const-string v1, "banner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isInline()Z
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    const-string v1, "in_line"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isInterstitial()Z
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    const-string v1, "interstitial"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isMREC()Z
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    const-string v1, "mrec"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isNative()Z
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    const-string v1, "native"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isRewardedVideo()Z
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    const-string v1, "rewarded"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setWakeupTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/g;->wakeupTime:Ljava/lang/Long;

    return-void
.end method

.method public final snooze(J)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr p1, v2

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/model/g;->wakeupTime:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement(referenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/g;->referenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headerBidding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/g;->headerBidding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/g;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
