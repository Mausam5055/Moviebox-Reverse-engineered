.class public abstract Lcom/google/common/base/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/b$f;,
        Lcom/google/common/base/b$g;,
        Lcom/google/common/base/b$a;,
        Lcom/google/common/base/b$d;,
        Lcom/google/common/base/b$c;,
        Lcom/google/common/base/b$e;,
        Lcom/google/common/base/b$b;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(C)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/common/base/b;->j(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/google/common/base/b;
    .locals 1

    sget-object v0, Lcom/google/common/base/b$a;->b:Lcom/google/common/base/b;

    return-object v0
.end method

.method public static d(CC)Lcom/google/common/base/b;
    .locals 1

    new-instance v0, Lcom/google/common/base/b$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/b$c;-><init>(CC)V

    return-object v0
.end method

.method public static f(C)Lcom/google/common/base/b;
    .locals 1

    new-instance v0, Lcom/google/common/base/b$d;

    invoke-direct {v0, p0}, Lcom/google/common/base/b$d;-><init>(C)V

    return-object v0
.end method

.method public static i()Lcom/google/common/base/b;
    .locals 1

    sget-object v0, Lcom/google/common/base/b$f;->b:Lcom/google/common/base/b;

    return-object v0
.end method

.method private static j(C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [C

    const/16 v1, 0x5c

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x75

    aput-char v3, v0, v1

    const/4 v1, 0x2

    aput-char v2, v0, v1

    const/4 v1, 0x3

    aput-char v2, v0, v1

    const/4 v1, 0x4

    aput-char v2, v0, v1

    const/4 v3, 0x5

    aput-char v2, v0, v3

    :goto_0
    if-ge v2, v1, :cond_0

    rsub-int/lit8 v3, v2, 0x5

    and-int/lit8 v4, p0, 0xf

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v1

    int-to-char p0, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k()Lcom/google/common/base/b;
    .locals 1

    sget-object v0, Lcom/google/common/base/b$g;->c:Lcom/google/common/base/b;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Character;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/b;->g(C)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/CharSequence;I)I
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, v0}, Lcom/google/common/base/m;->r(II)I

    :goto_0
    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/b;->g(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract g(C)Z
.end method

.method public h(Ljava/lang/CharSequence;)Z
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/b;->g(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method
