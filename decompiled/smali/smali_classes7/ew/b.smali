.class public final Lew/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lew/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lew/b;

    invoke-direct {v0}, Lew/b;-><init>()V

    sput-object v0, Lew/b;->a:Lew/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Lkotlin/jvm/functions/Function1;)V
    .locals 18

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const-string v2, "parentFile.listFiles()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v10, v1

    goto :goto_1

    :cond_0
    new-array v1, v9, [Ljava/io/File;

    aput-object p1, v1, v9

    goto :goto_0

    :goto_1
    const/16 v11, 0x400

    new-array v12, v11, [B

    const/4 v1, 0x0

    :try_start_0
    array-length v13, v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v14, v1

    move-object v15, v14

    move v7, v9

    :goto_2
    if-ge v7, v13, :cond_3

    :try_start_1
    aget-object v2, v10, v7

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "this as java.lang.String).substring(startIndex)"

    const-string v4, "it.path"

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/apache/tools/zip/ZipEntry;

    invoke-direct {v3, v1}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->putNextEntry(Lorg/apache/tools/zip/ZipEntry;)V

    sget-object v1, Lew/b;->a:Lew/b;

    const/16 v6, 0x8

    const/16 v16, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v17, v7

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lew/b;->c(Lew/b;Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v14

    goto :goto_6

    :cond_1
    move/from16 v17, v7

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v4, Lorg/apache/tools/zip/ZipEntry;

    invoke-direct {v4, v1}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->putNextEntry(Lorg/apache/tools/zip/ZipEntry;)V

    :goto_3
    invoke-virtual {v2, v12, v9, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    move-object v15, v2

    move-object v14, v3

    :goto_4
    add-int/lit8 v7, v17, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v15, v2

    :goto_5
    move-object v1, v3

    goto :goto_6

    :cond_2
    invoke-virtual {v0, v12, v9, v1}, Lorg/apache/tools/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_3
    if-eqz v8, :cond_6

    :try_start_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v15, v1

    :goto_6
    if-eqz v8, :cond_4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V

    :cond_6
    :goto_7
    return-void
.end method

.method static synthetic c(Lew/b;Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lew/b;->b(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    const-string v0, "zipFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v2, Lorg/apache/tools/zip/ZipOutputStream;

    invoke-direct {v2, p2}, Lorg/apache/tools/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v0, "GBK"

    invoke-virtual {v2, v0}, Lorg/apache/tools/zip/ZipOutputStream;->setEncoding(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v3, "basePath"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, v2, p3}, Lew/b;->b(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipOutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    goto :goto_1

    :catch_3
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipOutputStream;->close()V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    if-eqz p3, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    return-void
.end method
