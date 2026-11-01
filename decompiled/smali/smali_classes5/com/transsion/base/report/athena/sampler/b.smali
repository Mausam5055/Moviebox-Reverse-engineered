.class public final Lcom/transsion/base/report/athena/sampler/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/base/report/athena/sampler/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/base/report/athena/sampler/b;

    invoke-direct {v0}, Lcom/transsion/base/report/athena/sampler/b;-><init>()V

    sput-object v0, Lcom/transsion/base/report/athena/sampler/b;->a:Lcom/transsion/base/report/athena/sampler/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(DLjava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const-string v0, "deviceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "batchKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, p1, v2

    const/4 v4, 0x1

    if-ltz v0, :cond_1

    return v4

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2d

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MD5"

    invoke-static {p4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p4

    sget-object v0, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const-string v0, "getBytes(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    aget-byte p4, p3, v1

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p4, p4, 0x18

    aget-byte v0, p3, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p4, v0

    const/4 v0, 0x2

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p4, v0

    const/4 v0, 0x3

    aget-byte p3, p3, v0

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p3, p4

    const p4, 0x7fffffff

    and-int/2addr p3, p4

    rem-int/2addr p3, p5

    div-double/2addr p1, v2

    int-to-double p4, p5

    mul-double/2addr p1, p4

    invoke-static {p1, p2}, Lkotlin/math/MathKt;->c(D)I

    move-result p1

    if-ge p3, p1, :cond_2

    move v1, v4

    :cond_2
    return v1
.end method
