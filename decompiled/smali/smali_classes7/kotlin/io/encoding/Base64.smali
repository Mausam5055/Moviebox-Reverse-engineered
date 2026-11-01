.class public Lkotlin/io/encoding/Base64;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/encoding/Base64$Default;,
        Lkotlin/io/encoding/Base64$PaddingOption;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0017\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0015B!\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u00058\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlin/io/encoding/Base64;",
        "",
        "",
        "isUrlSafe",
        "isMimeScheme",
        "Lkotlin/io/encoding/Base64$PaddingOption;",
        "paddingOption",
        "<init>",
        "(ZZLkotlin/io/encoding/Base64$PaddingOption;)V",
        "a",
        "Z",
        "isUrlSafe$kotlin_stdlib",
        "()Z",
        "b",
        "isMimeScheme$kotlin_stdlib",
        "c",
        "Lkotlin/io/encoding/Base64$PaddingOption;",
        "getPaddingOption$kotlin_stdlib",
        "()Lkotlin/io/encoding/Base64$PaddingOption;",
        "d",
        "PaddingOption",
        "Default",
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

.annotation build Lkotlin/SinceKotlin;
.end annotation

.annotation build Lkotlin/io/encoding/ExperimentalEncodingApi;
.end annotation


# static fields
.field public static final d:Lkotlin/io/encoding/Base64$Default;

.field private static final e:[B

.field private static final f:Lkotlin/io/encoding/Base64;

.field private static final g:Lkotlin/io/encoding/Base64;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lkotlin/io/encoding/Base64$PaddingOption;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/io/encoding/Base64$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/io/encoding/Base64$Default;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/io/encoding/Base64;->d:Lkotlin/io/encoding/Base64$Default;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lkotlin/io/encoding/Base64;->e:[B

    new-instance v0, Lkotlin/io/encoding/Base64;

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lkotlin/io/encoding/Base64;-><init>(ZZLkotlin/io/encoding/Base64$PaddingOption;)V

    sput-object v0, Lkotlin/io/encoding/Base64;->f:Lkotlin/io/encoding/Base64;

    new-instance v0, Lkotlin/io/encoding/Base64;

    invoke-direct {v0, v3, v2, v1}, Lkotlin/io/encoding/Base64;-><init>(ZZLkotlin/io/encoding/Base64$PaddingOption;)V

    sput-object v0, Lkotlin/io/encoding/Base64;->g:Lkotlin/io/encoding/Base64;

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(ZZLkotlin/io/encoding/Base64$PaddingOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlin/io/encoding/Base64;->a:Z

    iput-boolean p2, p0, Lkotlin/io/encoding/Base64;->b:Z

    iput-object p3, p0, Lkotlin/io/encoding/Base64;->c:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(ZZLkotlin/io/encoding/Base64$PaddingOption;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;-><init>(ZZLkotlin/io/encoding/Base64$PaddingOption;)V

    return-void
.end method
