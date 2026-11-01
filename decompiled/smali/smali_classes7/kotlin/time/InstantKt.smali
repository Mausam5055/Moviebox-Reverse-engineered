.class public final Lkotlin/time/InstantKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\t\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\"\u0014\u0010\u0008\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\"\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0007\"\u0014\u0010\u000b\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0007\"\u0014\u0010\r\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/time/Instant;",
        "instant",
        "",
        "b",
        "(Lkotlin/time/Instant;)Ljava/lang/String;",
        "",
        "a",
        "[I",
        "POWERS_OF_TEN",
        "asciiDigitPositionsInIsoStringAfterYear",
        "c",
        "colonsInIsoOffsetString",
        "d",
        "asciiDigitsInIsoOffsetString",
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


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lkotlin/time/InstantKt;->a:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lkotlin/time/InstantKt;->b:[I

    const/4 v0, 0x3

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lkotlin/time/InstantKt;->c:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lkotlin/time/InstantKt;->d:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x5
        0x7
        0x8
        0xa
        0xb
        0xd
        0xe
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x5
        0x7
        0x8
    .end array-data
.end method

.method public static final synthetic a(Lkotlin/time/Instant;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lkotlin/time/InstantKt;->b(Lkotlin/time/Instant;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lkotlin/time/Instant;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lkotlin/time/UnboundLocalDateTime;->h:Lkotlin/time/UnboundLocalDateTime$Companion;

    invoke-virtual {v1, p0}, Lkotlin/time/UnboundLocalDateTime$Companion;->a(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x2710

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCharAt(...)"

    if-ltz v1, :cond_0

    add-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-lt v1, v6, :cond_2

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->d()I

    move-result v2

    invoke-static {v0, v0, v2}, Lkotlin/time/InstantKt;->c(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->a()I

    move-result v1

    invoke-static {v0, v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->b()I

    move-result v1

    invoke-static {v0, v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->c()I

    move-result v2

    invoke-static {v0, v0, v2}, Lkotlin/time/InstantKt;->c(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->f()I

    move-result v1

    invoke-static {v0, v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->e()I

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->e()I

    move-result v1

    sget-object v2, Lkotlin/time/InstantKt;->a:[I

    add-int/lit8 v3, v4, 0x1

    aget v6, v2, v3

    rem-int/2addr v1, v6

    if-nez v1, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    rem-int/lit8 v1, v4, 0x3

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->e()I

    move-result p0

    aget v1, v2, v4

    div-int/2addr p0, v1

    rsub-int/lit8 v1, v4, 0x9

    aget v1, v2, v1

    add-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "substring(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 p0, 0x5a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    const/16 v0, 0x30

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
