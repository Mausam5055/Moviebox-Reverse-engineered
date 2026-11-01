.class public final Lak/u;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lak/u;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lak/u;

    invoke-direct {v0}, Lak/u;-><init>()V

    sput-object v0, Lak/u;->a:Lak/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()I
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [[I

    const/16 v2, 0x60

    const/16 v3, 0xfe

    const/16 v4, 0xd6

    const/16 v5, 0x74

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0xf8

    const/16 v4, 0xcd

    const/16 v5, 0x2f

    const/16 v6, 0x7e

    filled-new-array {v2, v4, v5, v6}, [I

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0xd1

    const/16 v5, 0x49

    const/16 v6, 0xff

    const/16 v7, 0x48

    filled-new-array {v2, v5, v6, v7}, [I

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/16 v2, 0x17

    const/16 v5, 0x52

    const/16 v6, 0x51

    const/16 v7, 0x63

    filled-new-array {v2, v5, v6, v7}, [I

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    move v2, v3

    move v5, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v6, v1, v2

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    aget v9, v6, v8

    shl-int/2addr v5, v4

    xor-int/2addr v5, v9

    add-int/2addr v8, v4

    goto :goto_1

    :cond_0
    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    return v5
.end method

.method private final c(Ljava/lang/String;)I
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lkotlin/internal/ProgressionUtilKt;->c(III)I

    move-result v0

    if-ltz v0, :cond_1

    move v1, v2

    :goto_0
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "substring(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x10

    invoke-static {v5}, Lkotlin/text/CharsKt;->a(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    shl-int/lit8 v1, v1, 0x1

    xor-int/2addr v1, v4

    if-eq v2, v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    return v2
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lak/u;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    sget-object v0, Lak/r;->a:Lak/r;

    invoke-virtual {v0, p1}, Lak/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lak/u;->c(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0}, Lak/u;->b()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lak/u;->b:Ljava/lang/Boolean;

    return p1
.end method
