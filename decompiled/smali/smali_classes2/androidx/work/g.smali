.class public abstract Landroidx/work/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Data"

    invoke-static {v0}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/work/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a([Z)[Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Landroidx/work/g;->h([Z)[Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b([B)[Ljava/lang/Byte;
    .locals 0

    invoke-static {p0}, Landroidx/work/g;->i([B)[Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c([D)[Ljava/lang/Double;
    .locals 0

    invoke-static {p0}, Landroidx/work/g;->j([D)[Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d([F)[Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Landroidx/work/g;->k([F)[Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e([I)[Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Landroidx/work/g;->l([I)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f([J)[Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Landroidx/work/g;->m([J)[Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/work/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static final h([Z)[Ljava/lang/Boolean;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-boolean v3, p0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final i([B)[Ljava/lang/Byte;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Byte;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final j([D)[Ljava/lang/Double;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Double;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final k([F)[Ljava/lang/Float;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Float;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final l([I)[Ljava/lang/Integer;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final m([J)[Ljava/lang/Long;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
