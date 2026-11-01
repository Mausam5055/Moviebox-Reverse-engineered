.class public Lcom/cicada/player/utils/ContentDataSource;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static final EINVAL:I = 0x16

.field private static final EIO:I = 0x5

.field private static final ENOENT:I = 0x2

.field private static final SEEK_CUR:I = 0x1

.field private static final SEEK_END:I = 0x2

.field private static final SEEK_SET:I = 0x0

.field private static final SEEK_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ContentDataSource"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mOffset:J

.field private mStream:Ljava/io/InputStream;

.field private mStreamSize:I

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    const/4 v0, -0x1

    iput v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStreamSize:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/cicada/player/utils/ContentDataSource;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/cicada/player/utils/ContentDataSource;->sContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    iget-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    add-long/2addr v0, p1

    long-to-int p1, v0

    int-to-long p1, p1

    invoke-virtual {p0}, Lcom/cicada/player/utils/ContentDataSource;->close()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cicada/player/utils/ContentDataSource;->open(I)I

    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public open(I)I
    .locals 2

    iget-object p1, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, -0x16

    if-eqz p1, :cond_0

    return v0

    :cond_0
    sget-object p1, Lcom/cicada/player/utils/ContentDataSource;->sContext:Landroid/content/Context;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lcom/cicada/player/utils/ContentDataSource;->mStreamSize:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    const/4 p1, -0x5

    return p1

    :catch_1
    const/4 p1, -0x2

    return p1
.end method

.method public read([B)I
    .locals 4

    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/16 p1, -0x16

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    iget-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x5

    return p1
.end method

.method public seek(JI)J
    .locals 6

    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    const-wide/16 v1, -0x16

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/high16 v3, 0x10000

    if-ne p3, v3, :cond_2

    iget p1, p0, Lcom/cicada/player/utils/ContentDataSource;->mStreamSize:I

    if-gtz p1, :cond_1

    return-wide v1

    :cond_1
    int-to-long p1, p1

    return-wide p1

    :cond_2
    const/4 v3, 0x2

    const-wide/16 v4, -0x5

    if-ne p3, v3, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p1, p1

    goto :goto_0

    :catch_0
    return-wide v4

    :cond_3
    if-nez p3, :cond_4

    iget-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne p3, v0, :cond_5

    :goto_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/cicada/player/utils/ContentDataSource;->skip(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    return-wide v4

    :cond_5
    return-wide v1
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    return-void
.end method
