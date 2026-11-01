.class public final Lcom/cloud/h5update/utils/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/h5update/utils/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/h5update/utils/i;

    invoke-direct {v0}, Lcom/cloud/h5update/utils/i;-><init>()V

    sput-object v0, Lcom/cloud/h5update/utils/i;->a:Lcom/cloud/h5update/utils/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a([B)Ljava/lang/String;
    .locals 6

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p1, v3

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "r.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final b(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    invoke-virtual {v2, p1}, Lcom/cloud/h5update/utils/h$a;->r(Ljava/io/File;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v2, p1}, Lcom/cloud/h5update/utils/h$a;->n(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v3

    const/16 p1, 0x2000

    new-array p1, p1, [B

    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    invoke-virtual {v5, p1, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v2, "digest.digest()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/h5update/utils/i;->a([B)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    goto :goto_2

    :goto_1
    :try_start_1
    sget-object v2, Lgg/b;->a:Lgg/b;

    invoke-virtual {v2, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    :goto_2
    return-object v4

    :goto_3
    sget-object v2, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    throw p1
.end method
