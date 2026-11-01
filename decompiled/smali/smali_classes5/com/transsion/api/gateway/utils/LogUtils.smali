.class public final Lcom/transsion/api/gateway/utils/LogUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/api/gateway/utils/LogUtils$Builder;,
        Lcom/transsion/api/gateway/utils/LogUtils$TYPE;
    }
.end annotation


# static fields
.field public static final A:I = 0x7

.field private static final ARGS:Ljava/lang/String; = "args"

.field private static final BOTTOM_BORDER:Ljava/lang/String; = "|---------------------------------------------------------------------------------------------------"

.field public static final D:I = 0x3

.field public static final E:I = 0x6

.field private static final FILE:I = 0x10

.field private static final FILE_SEP:Ljava/lang/String;

.field private static final FORMAT:Ljava/text/Format;

.field public static final I:I = 0x4

.field private static final JSON:I = 0x20

.field private static final LEFT_BORDER:Ljava/lang/String; = "| "

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final MAX_LEN:I = 0xfa0

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final NULL_TIPS:Ljava/lang/String; = "Log with null object."

.field private static final T:[C

.field private static final TOP_BORDER:Ljava/lang/String; = "|---------------------------------------------------------------------------------------------------"

.field public static final V:I = 0x2

.field public static final W:I = 0x5

.field private static final XML:I = 0x30

.field private static defaultDir:Ljava/lang/String; = null

.field private static dir:Ljava/lang/String; = null

.field private static executor:Ljava/util/concurrent/ExecutorService; = null

.field private static sConsoleFilter:I = 0x2

.field private static sFileFilter:I = 0x2

.field private static sGlobalTag:Ljava/lang/String; = "TAG"

.field private static sLog2ConsoleSwitch:Z = true

.field private static sLog2FileSwitch:Z = false

.field private static sLogBorderSwitch:Z = true

.field private static sLogHeadSwitch:Z = true

.field private static sLogSwitch:Z = false

.field private static sTagIsSpace:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->T:[C

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->FILE_SEP:Ljava/lang/String;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->LINE_SEP:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->FORMAT:Ljava/text/Format;

    return-void

    :array_0
    .array-data 2
        0x56s
        0x44s
        0x49s
        0x57s
        0x45s
        0x41s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x7

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/api/gateway/utils/LogUtils;->sLogSwitch:Z

    return v0
.end method

.method public static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/transsion/api/gateway/utils/LogUtils;->sLogSwitch:Z

    return p0
.end method

.method public static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/api/gateway/utils/LogUtils;->sLog2ConsoleSwitch:Z

    return v0
.end method

.method public static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/transsion/api/gateway/utils/LogUtils;->sConsoleFilter:I

    return v0
.end method

.method public static synthetic access$1002(I)I
    .locals 0

    sput p0, Lcom/transsion/api/gateway/utils/LogUtils;->sConsoleFilter:I

    return p0
.end method

.method public static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/transsion/api/gateway/utils/LogUtils;->sLog2ConsoleSwitch:Z

    return p0
.end method

.method public static synthetic access$1100()I
    .locals 1

    sget v0, Lcom/transsion/api/gateway/utils/LogUtils;->sFileFilter:I

    return v0
.end method

.method public static synthetic access$1102(I)I
    .locals 0

    sput p0, Lcom/transsion/api/gateway/utils/LogUtils;->sFileFilter:I

    return p0
.end method

.method public static synthetic access$1200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->LINE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->defaultDir:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1400()[C
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->T:[C

    return-object v0
.end method

.method public static synthetic access$200(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/api/gateway/utils/LogUtils;->isSpace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/api/gateway/utils/LogUtils;->sTagIsSpace:Z

    return v0
.end method

.method public static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/transsion/api/gateway/utils/LogUtils;->sTagIsSpace:Z

    return p0
.end method

.method public static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/api/gateway/utils/LogUtils;->sLogHeadSwitch:Z

    return v0
.end method

.method public static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/transsion/api/gateway/utils/LogUtils;->sLogHeadSwitch:Z

    return p0
.end method

.method public static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/api/gateway/utils/LogUtils;->sLog2FileSwitch:Z

    return v0
.end method

.method public static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/transsion/api/gateway/utils/LogUtils;->sLog2FileSwitch:Z

    return p0
.end method

.method public static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->dir:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/transsion/api/gateway/utils/LogUtils;->dir:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->FILE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/api/gateway/utils/LogUtils;->sLogBorderSwitch:Z

    return v0
.end method

.method public static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/transsion/api/gateway/utils/LogUtils;->sLogBorderSwitch:Z

    return p0
.end method

.method private static addLeftBorder(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lcom/transsion/api/gateway/utils/LogUtils;->sLogBorderSwitch:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/api/gateway/utils/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, "| "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/api/gateway/utils/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compress([B)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/Deflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Deflater;-><init>(I)V

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    const/16 p0, 0x800

    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    throw p0
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static createOrExistsFile(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/api/gateway/utils/LogUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x3

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x6

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static file(ILjava/lang/Object;)V
    .locals 3

    or-int/lit8 p0, p0, 0x10

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static file(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    or-int/lit8 p0, p0, 0x10

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static file(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x13

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static file(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x13

    invoke-static {p1, p0, v0}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p0
.end method

.method private static formatXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ">"

    :try_start_0
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    const-string v4, "indent"

    const-string v5, "yes"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "{http://xml.apache.org/xslt}indent-amount"

    const-string v5, "4"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/api/gateway/utils/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x4

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static json(ILjava/lang/String;)V
    .locals 3

    or-int/lit8 p0, p0, 0x20

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static json(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    or-int/lit8 p0, p0, 0x20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static json(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x23

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static json(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x23

    invoke-static {p1, p0, v0}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/transsion/api/gateway/utils/LogUtils;->sLogSwitch:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/transsion/api/gateway/utils/LogUtils;->sLog2ConsoleSwitch:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/transsion/api/gateway/utils/LogUtils;->sLog2FileSwitch:Z

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v0, p0, 0xf

    and-int/lit16 p0, p0, 0xf0

    sget v2, Lcom/transsion/api/gateway/utils/LogUtils;->sConsoleFilter:I

    if-ge v0, v2, :cond_3

    sget v2, Lcom/transsion/api/gateway/utils/LogUtils;->sFileFilter:I

    if-ge v0, v2, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->processTagAndHead(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2}, Lcom/transsion/api/gateway/utils/LogUtils;->processBody(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-boolean v2, Lcom/transsion/api/gateway/utils/LogUtils;->sLog2ConsoleSwitch:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/transsion/api/gateway/utils/LogUtils;->sConsoleFilter:I

    if-lt v0, v2, :cond_4

    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v0, v2, v3, p2}, Lcom/transsion/api/gateway/utils/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-boolean v2, Lcom/transsion/api/gateway/utils/LogUtils;->sLog2FileSwitch:Z

    if-nez v2, :cond_5

    const/16 v2, 0x10

    if-ne p0, v2, :cond_6

    :cond_5
    sget p0, Lcom/transsion/api/gateway/utils/LogUtils;->sFileFilter:I

    if-lt v0, p0, :cond_6

    aget-object p0, p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/api/gateway/utils/LogUtils;->print2File(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static print2Console(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-boolean v0, Lcom/transsion/api/gateway/utils/LogUtils;->sLogHeadSwitch:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/transsion/api/gateway/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, " \n"

    invoke-static {p0, p1, p2}, Lcom/transsion/api/gateway/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-boolean p2, Lcom/transsion/api/gateway/utils/LogUtils;->sLogBorderSwitch:Z

    const-string v0, "|---------------------------------------------------------------------------------------------------"

    if-eqz p2, :cond_1

    invoke-static {p0, p1, v0}, Lcom/transsion/api/gateway/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/transsion/api/gateway/utils/LogUtils;->addLeftBorder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    div-int/lit16 v1, p2, 0xfa0

    if-lez v1, :cond_5

    const/4 v2, 0x0

    const/16 v3, 0xfa0

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/transsion/api/gateway/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_1
    const-string v4, "| "

    if-ge v2, v1, :cond_3

    add-int/lit16 v5, v3, 0xfa0

    invoke-virtual {p3, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-boolean v6, Lcom/transsion/api/gateway/utils/LogUtils;->sLogBorderSwitch:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {p0, p1, v3}, Lcom/transsion/api/gateway/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p3, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    sget-boolean p3, Lcom/transsion/api/gateway/utils/LogUtils;->sLogBorderSwitch:Z

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-static {p0, p1, p2}, Lcom/transsion/api/gateway/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {p0, p1, p3}, Lcom/transsion/api/gateway/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-boolean p2, Lcom/transsion/api/gateway/utils/LogUtils;->sLogBorderSwitch:Z

    if-eqz p2, :cond_6

    invoke-static {p0, p1, v0}, Lcom/transsion/api/gateway/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private static print2File(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sget-object v1, Lcom/transsion/api/gateway/utils/LogUtils;->FORMAT:Ljava/text/Format;

    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/transsion/api/gateway/utils/LogUtils;->dir:Ljava/lang/String;

    if-nez v3, :cond_0

    sget-object v3, Lcom/transsion/api/gateway/utils/LogUtils;->defaultDir:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/api/gateway/utils/LogUtils;->createOrExistsFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "log to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed!"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->T:[C

    add-int/lit8 p0, p0, -0x2

    aget-char p0, v0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/api/gateway/utils/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/transsion/api/gateway/utils/LogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    sput-object p2, Lcom/transsion/api/gateway/utils/LogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    :cond_2
    sget-object p2, Lcom/transsion/api/gateway/utils/LogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/transsion/api/gateway/utils/LogUtils$1;

    invoke-direct {v0, v1, p0, p1}, Lcom/transsion/api/gateway/utils/LogUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static varargs processBody(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_5

    array-length v0, p1

    const-string v1, "null"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    aget-object p1, p1, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 p1, 0x20

    if-ne p0, p1, :cond_1

    invoke-static {v1}, Lcom/transsion/api/gateway/utils/LogUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_1
    const/16 p1, 0x30

    if-ne p0, p1, :cond_6

    invoke-static {v1}, Lcom/transsion/api/gateway/utils/LogUtils;->formatXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    const-string v4, "args"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    move-object v3, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/api/gateway/utils/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    const-string v1, "Log with null object."

    :cond_6
    :goto_3
    return-object v1
.end method

.method private static processTagAndHead(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/transsion/api/gateway/utils/LogUtils;->sTagIsSpace:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/transsion/api/gateway/utils/LogUtils;->sLogHeadSwitch:Z

    if-nez v2, :cond_0

    sget-object p0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_1

    array-length v3, v4

    sub-int/2addr v3, v1

    aget-object v3, v4, v3

    :cond_1
    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\\$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    :cond_2
    sget-boolean v4, Lcom/transsion/api/gateway/utils/LogUtils;->sTagIsSpace:Z

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/transsion/api/gateway/utils/LogUtils;->isSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object p0, v3

    :cond_3
    sget-boolean v4, Lcom/transsion/api/gateway/utils/LogUtils;->sLogHeadSwitch:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v0

    aput-object v6, v7, v1

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const-string v0, "%s, %s(%s.java:%d)"

    invoke-virtual {v4, v0, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/api/gateway/utils/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v1, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const-string v0, ""

    const-string v1, ": "

    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static uncompress([B)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    const/16 p0, 0x800

    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v2

    :goto_1
    invoke-virtual {v0, p0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    throw p0
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x5

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static xml(ILjava/lang/String;)V
    .locals 3

    or-int/lit8 p0, p0, 0x30

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static xml(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    or-int/lit8 p0, p0, 0x30

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static xml(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/api/gateway/utils/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x33

    invoke-static {p0, v0, v1}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static xml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x33

    invoke-static {p1, p0, v0}, Lcom/transsion/api/gateway/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
