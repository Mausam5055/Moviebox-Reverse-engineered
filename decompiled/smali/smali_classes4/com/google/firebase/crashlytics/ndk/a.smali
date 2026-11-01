.class public Lcom/google/firebase/crashlytics/ndk/a;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/crashlytics/ndk/e;

.field private final c:Lvb/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/ndk/a;->d:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/ndk/e;Lvb/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/ndk/a;->b:Lcom/google/firebase/crashlytics/ndk/e;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/ndk/a;->c:Lvb/g;

    return-void
.end method

.method private static a(Landroid/app/ApplicationExitInfo;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;
    .locals 3

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/o0;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->c(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/p0;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v0

    invoke-static {p0}, Landroidx/work/impl/utils/j;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->g(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v0

    invoke-static {p0}, Landroidx/work/impl/utils/k;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->i(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/q0;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->d(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/r0;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->f(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/s0;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->h(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/ndk/a;->i(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->j(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/ndk/a;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/ndk/a;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private e(Ljava/lang/String;Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/f$c;
    .locals 1

    const-string v0, ".dmp"

    invoke-static {p2, v0}, Lcom/google/firebase/crashlytics/ndk/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/ndk/a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/crashlytics/ndk/f$c;

    invoke-direct {v0, p2, p1}, Lcom/google/firebase/crashlytics/ndk/f$c;-><init>(Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)V

    return-object v0
.end method

.method private f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/a;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroidx/work/impl/utils/h;->a(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/a;->c:Lvb/g;

    const-string v2, "start-time"

    invoke-virtual {v1, p1, v2}, Lvb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/google/firebase/crashlytics/ndk/a;->g(JLjava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object p1

    return-object p1
.end method

.method private g(JLjava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/impl/utils/i;->a(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/impl/utils/j;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Landroidx/work/impl/utils/k;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/impl/utils/i;->a(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/a;->a(Landroid/app/ApplicationExitInfo;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private static h(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static i(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/m0;->a(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/ndk/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p0

    const-string v0, "Failed to get input stream from ApplicationExitInfo"

    invoke-virtual {p0, v0}, Lob/g;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static o(Lvb/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lvb/g;->k(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/ndk/a;->q(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static q(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Failed to close "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lcom/google/firebase/crashlytics/ndk/a;->d:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->f(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->f(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1

    :catch_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->f(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static r([B)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-static {}, Lcom/cloud/hisavana/sdk/i;->a()Ljava/util/Base64$Encoder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/cloud/hisavana/sdk/j;->a(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/f;
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/a;->c:Lvb/g;

    invoke-virtual {v0, p1}, Lvb/g;->k(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "pending"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Minidump directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lob/g;->i(Ljava/lang/String;)V

    const-string v2, ".dmp"

    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/ndk/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Minidump file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "exists"

    goto :goto_0

    :cond_0
    const-string v2, "does not exist"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lob/g;->i(Ljava/lang/String;)V

    new-instance v2, Lcom/google/firebase/crashlytics/ndk/f$b;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/ndk/f$b;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/crashlytics/ndk/a;->e(Ljava/lang/String;Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/f$c;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/firebase/crashlytics/ndk/f$b;->l(Lcom/google/firebase/crashlytics/ndk/f$c;)Lcom/google/firebase/crashlytics/ndk/f$b;

    move-result-object p1

    const-string v1, ".device_info"

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/ndk/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/ndk/f$b;->k(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/f$b;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    const-string v3, "session.json"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/ndk/f$b;->n(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/f$b;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    const-string v3, "app.json"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/ndk/f$b;->h(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/f$b;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    const-string v3, "device.json"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/ndk/f$b;->j(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/f$b;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    const-string v3, "os.json"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/ndk/f$b;->m(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/f$b;

    :cond_1
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/ndk/f$b;->i()Lcom/google/firebase/crashlytics/ndk/f;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/ndk/a;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/f;

    move-result-object p1

    iget-object p1, p1, Lcom/google/firebase/crashlytics/ndk/f;->a:Lcom/google/firebase/crashlytics/ndk/f$c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/ndk/f$c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;JLsb/e;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/a;->c:Lvb/g;

    invoke-virtual {v0, p1}, Lvb/g;->k(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/a;->b:Lcom/google/firebase/crashlytics/ndk/e;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/ndk/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/firebase/crashlytics/ndk/e;->a(Ljava/lang/String;Landroid/content/res/AssetManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/ndk/a;->l(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p5}, Lsb/e;->a()Lsb/e$a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/ndk/a;->m(Ljava/lang/String;Lsb/e$a;)V

    invoke-virtual {p5}, Lsb/e;->d()Lsb/e$c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/ndk/a;->p(Ljava/lang/String;Lsb/e$c;)V

    invoke-virtual {p5}, Lsb/e;->c()Lsb/e$b;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/ndk/a;->n(Ljava/lang/String;Lsb/e$b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p2

    const-string p3, "Error initializing Crashlytics NDK"

    invoke-virtual {p2, p3, p1}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/ndk/h;->b(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/firebase/crashlytics/ndk/a;->c:Lvb/g;

    const-string p4, "session.json"

    invoke-static {p3, p1, p2, p4}, Lcom/google/firebase/crashlytics/ndk/a;->o(Lvb/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Ljava/lang/String;Lsb/e$a;)V
    .locals 7

    invoke-virtual {p2}, Lsb/e$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lsb/e$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lsb/e$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lsb/e$a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lsb/e$a;->c()I

    move-result v4

    invoke-virtual {p2}, Lsb/e$a;->d()Lob/f;

    move-result-object v5

    invoke-virtual {v5}, Lob/f;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lsb/e$a;->d()Lob/f;

    move-result-object p2

    invoke-virtual {p2}, Lob/f;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/firebase/crashlytics/ndk/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/a;->c:Lvb/g;

    const-string v1, "app.json"

    invoke-static {v0, p1, p2, v1}, Lcom/google/firebase/crashlytics/ndk/a;->o(Lvb/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;Lsb/e$b;)V
    .locals 11

    invoke-virtual {p2}, Lsb/e$b;->a()I

    move-result v0

    invoke-virtual {p2}, Lsb/e$b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lsb/e$b;->b()I

    move-result v2

    invoke-virtual {p2}, Lsb/e$b;->j()J

    move-result-wide v3

    invoke-virtual {p2}, Lsb/e$b;->d()J

    move-result-wide v5

    invoke-virtual {p2}, Lsb/e$b;->e()Z

    move-result v7

    invoke-virtual {p2}, Lsb/e$b;->i()I

    move-result v8

    invoke-virtual {p2}, Lsb/e$b;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lsb/e$b;->h()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/google/firebase/crashlytics/ndk/h;->d(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/a;->c:Lvb/g;

    const-string v1, "device.json"

    invoke-static {v0, p1, p2, v1}, Lcom/google/firebase/crashlytics/ndk/a;->o(Lvb/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;Lsb/e$c;)V
    .locals 2

    invoke-virtual {p2}, Lsb/e$c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lsb/e$c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lsb/e$c;->b()Z

    move-result p2

    invoke-static {v0, v1, p2}, Lcom/google/firebase/crashlytics/ndk/h;->e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/a;->c:Lvb/g;

    const-string v1, "os.json"

    invoke-static {v0, p1, p2, v1}, Lcom/google/firebase/crashlytics/ndk/a;->o(Lvb/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
