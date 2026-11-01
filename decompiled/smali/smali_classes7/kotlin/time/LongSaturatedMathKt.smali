.class public final Lkotlin/time/LongSaturatedMathKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a\'\u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a\'\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "",
        "value",
        "Lkotlin/time/Duration;",
        "a",
        "(J)J",
        "origin1",
        "origin2",
        "Lkotlin/time/DurationUnit;",
        "unit",
        "c",
        "(JJLkotlin/time/DurationUnit;)J",
        "value1",
        "value2",
        "b",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method private static final a(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    sget-object p0, Lkotlin/time/Duration;->b:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->b()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/time/Duration;->b:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->a()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private static final b(JJLkotlin/time/DurationUnit;)J
    .locals 7

    sub-long v0, p0, p2

    xor-long v2, v0, p0

    xor-long v4, v0, p2

    not-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {p4, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v2, p4}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->b(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v0

    div-long v3, p0, v0

    div-long v5, p2, v0

    sub-long/2addr v3, v5

    rem-long/2addr p0, v0

    rem-long/2addr p2, v0

    sub-long/2addr p0, p2

    sget-object p2, Lkotlin/time/Duration;->b:Lkotlin/time/Duration$Companion;

    invoke-static {v3, v4, v2}, Lkotlin/time/DurationKt;->t(JLkotlin/time/DurationUnit;)J

    move-result-wide p2

    invoke-static {p0, p1, p4}, Lkotlin/time/DurationKt;->t(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Lkotlin/time/Duration;->G(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {v0, v1}, Lkotlin/time/LongSaturatedMathKt;->a(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->K(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-static {v0, v1, p4}, Lkotlin/time/DurationKt;->t(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c(JJLkotlin/time/DurationUnit;)J
    .locals 6

    const-string v0, "unit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    sub-long v2, p2, v0

    or-long/2addr v2, v0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/time/Duration;->b:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->c()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p2, p3}, Lkotlin/time/LongSaturatedMathKt;->a(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->K(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    sub-long v2, p0, v0

    or-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lkotlin/time/LongSaturatedMathKt;->a(J)J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/time/LongSaturatedMathKt;->b(JJLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method
