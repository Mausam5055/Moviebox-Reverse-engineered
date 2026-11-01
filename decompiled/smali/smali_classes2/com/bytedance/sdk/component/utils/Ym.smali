.class public Lcom/bytedance/sdk/component/utils/Ym;
.super Ljava/lang/Object;


# static fields
.field private static final Sj:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "VP8X"

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Ym;->Sj(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/utils/Ym;->Sj:[B

    return-void
.end method

.method public static Sj([BI)Z
    .locals 3

    add-int/lit8 v0, p1, 0xc

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/bytedance/sdk/component/utils/Ym;->Sj:[B

    invoke-static {p0, v0, v2}, Lcom/bytedance/sdk/component/utils/Ym;->Sj([BI[B)Z

    move-result v0

    add-int/lit8 p1, p1, 0x14

    array-length v2, p0

    if-gt v2, p1, :cond_0

    return v1

    :cond_0
    aget-byte p0, p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    and-int/2addr p0, p1

    const/4 v2, 0x1

    if-ne p0, p1, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    return v2

    :catchall_0
    :cond_2
    return v1
.end method

.method private static Sj([BI[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p2

    add-int/2addr v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    add-int v2, v1, p1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method private static Sj(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x1

    new-array p0, p0, [B

    return-object p0
.end method
