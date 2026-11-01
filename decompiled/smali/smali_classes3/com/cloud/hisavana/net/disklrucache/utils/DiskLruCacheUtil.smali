.class public Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;

.field private static c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

.field private static d:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

.field private static e:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

.field private static final f:[C

.field private static final g:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->a:Ljava/nio/charset/Charset;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b:Ljava/nio/charset/Charset;

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->f:[C

    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->g:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B[C)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    and-int/lit16 v2, v1, 0xff

    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->f:[C

    ushr-int/lit8 v2, v2, 0x4

    aget-char v2, v4, v2

    aput-char v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    aput-char v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static b(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeQuietly --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->c(Ljava/io/File;)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a readable directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(I)Ljava/io/File;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/hisavana/net/utils/StorageUtils;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/cloud/hisavana/net/utils/StorageUtils;->c(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/cloud/hisavana/net/utils/StorageUtils;->f(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->d(I)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/utils/SafeKeyUtils;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 4

    sget-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->e:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    if-nez v0, :cond_1

    sget-object v0, Lcom/cloud/hisavana/net/HttpRequest;->a:Lcom/cloud/hisavana/net/HttpRequest;

    invoke-virtual {v0}, Lcom/cloud/hisavana/net/HttpRequest;->f()I

    move-result v1

    if-gtz v1, :cond_0

    const-wide/32 v0, 0xc800000

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/HttpRequest;->f()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    :goto_0
    new-instance v2, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;

    invoke-direct {v2}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v1, v3}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->b(JI)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->e:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    :cond_1
    sget-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->e:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    return-object v0
.end method

.method public static declared-synchronized g(I)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 2

    const-class v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;

    monitor-enter v0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->h()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->f()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->i()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static h()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 4

    sget-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    if-nez v0, :cond_1

    sget-object v0, Lcom/cloud/hisavana/net/HttpRequest;->a:Lcom/cloud/hisavana/net/HttpRequest;

    invoke-virtual {v0}, Lcom/cloud/hisavana/net/HttpRequest;->e()I

    move-result v1

    if-gtz v1, :cond_0

    const-wide/32 v0, 0x12c00000

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/HttpRequest;->e()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    :goto_0
    new-instance v2, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;

    invoke-direct {v2}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->b(JI)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    :cond_1
    sget-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    return-object v0
.end method

.method private static i()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 4

    sget-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->d:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    if-nez v0, :cond_1

    sget-object v0, Lcom/cloud/hisavana/net/HttpRequest;->a:Lcom/cloud/hisavana/net/HttpRequest;

    invoke-virtual {v0}, Lcom/cloud/hisavana/net/HttpRequest;->i()I

    move-result v1

    if-gtz v1, :cond_0

    const-wide/32 v0, 0x9600000

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/HttpRequest;->i()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    :goto_0
    new-instance v2, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;

    invoke-direct {v2}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v1, v3}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->b(JI)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->d:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    :cond_1
    sget-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->d:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    return-object v0
.end method

.method public static j([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->g:[C

    monitor-enter v0

    :try_start_0
    invoke-static {p0, v0}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->a([B[C)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
