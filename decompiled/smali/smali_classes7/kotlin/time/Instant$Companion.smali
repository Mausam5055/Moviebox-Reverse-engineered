.class public final Lkotlin/time/Instant$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/Instant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u00078\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u00078\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000e\u001a\u0004\u0008\u0012\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/time/Instant$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "epochSeconds",
        "nanosecondAdjustment",
        "Lkotlin/time/Instant;",
        "b",
        "(JJ)Lkotlin/time/Instant;",
        "",
        "a",
        "(JI)Lkotlin/time/Instant;",
        "MIN",
        "Lkotlin/time/Instant;",
        "d",
        "()Lkotlin/time/Instant;",
        "MAX",
        "c",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/time/Instant$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JI)Lkotlin/time/Instant;
    .locals 2

    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lkotlin/time/Instant$Companion;->b(JJ)Lkotlin/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public final b(JJ)Lkotlin/time/Instant;
    .locals 10

    const-wide/32 v0, 0x3b9aca00

    div-long v2, p3, v0

    xor-long v4, p3, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    mul-long v4, v2, v0

    cmp-long v4, v4, p3

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    :cond_0
    add-long v4, p1, v2

    xor-long v8, p1, v4

    cmp-long v8, v8, v6

    if-gez v8, :cond_2

    xor-long/2addr v2, p1

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    cmp-long p1, p1, v6

    if-lez p1, :cond_1

    sget-object p1, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    invoke-virtual {p1}, Lkotlin/time/Instant$Companion;->c()Lkotlin/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    invoke-virtual {p1}, Lkotlin/time/Instant$Companion;->d()Lkotlin/time/Instant;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    const-wide p1, -0x701cefeb9bec00L

    cmp-long p1, v4, p1

    if-gez p1, :cond_3

    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->d()Lkotlin/time/Instant;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-wide p1, 0x701cd2fa9578ffL

    cmp-long p1, v4, p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->c()Lkotlin/time/Instant;

    move-result-object p1

    goto :goto_1

    :cond_4
    rem-long/2addr p3, v0

    xor-long p1, p3, v0

    neg-long v2, p3

    or-long/2addr v2, p3

    and-long/2addr p1, v2

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    and-long/2addr p1, v0

    add-long/2addr p3, p1

    long-to-int p1, p3

    new-instance p2, Lkotlin/time/Instant;

    invoke-direct {p2, v4, v5, p1}, Lkotlin/time/Instant;-><init>(JI)V

    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final c()Lkotlin/time/Instant;
    .locals 1

    invoke-static {}, Lkotlin/time/Instant;->access$getMAX$cp()Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lkotlin/time/Instant;
    .locals 1

    invoke-static {}, Lkotlin/time/Instant;->access$getMIN$cp()Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method
