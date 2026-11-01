.class public final Lcom/transsion/api/gateway/utils/ObjectLogUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;,
        Lcom/transsion/api/gateway/utils/ObjectLogUtils$TYPE;
    }
.end annotation


# static fields
.field public static final A:I = 0x7

.field public static final D:I = 0x3

.field public static final E:I = 0x6

.field private static final FILE_SEP:Ljava/lang/String;

.field public static final I:I = 0x4

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final T:[C

.field public static final V:I = 0x2

.field public static final W:I = 0x5


# instance fields
.field private final ARGS:Ljava/lang/String;

.field private final BOTTOM_BORDER:Ljava/lang/String;

.field private final FILE:I

.field private final FORMAT:Ljava/text/Format;

.field private final JSON:I

.field private final LEFT_BORDER:Ljava/lang/String;

.field private final MAX_LEN:I

.field private final NULL:Ljava/lang/String;

.field private final NULL_TIPS:Ljava/lang/String;

.field private final TOP_BORDER:Ljava/lang/String;

.field private final XML:I

.field public builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private invokeLayer:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->T:[C

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->FILE_SEP:Ljava/lang/String;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    return-void

    nop

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

.method private constructor <init>(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->FILE:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->JSON:I

    const/16 v0, 0x30

    iput v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->XML:I

    const-string v0, "|---------------------------------------------------------------------------------------------------"

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->TOP_BORDER:Ljava/lang/String;

    const-string v1, "| "

    iput-object v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->LEFT_BORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->BOTTOM_BORDER:Ljava/lang/String;

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->MAX_LEN:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->FORMAT:Ljava/text/Format;

    const-string v0, "Log with null object."

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->NULL_TIPS:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->NULL:Ljava/lang/String;

    const-string v0, "args"

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->ARGS:Ljava/lang/String;

    new-instance v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-direct {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->invokeLayer:I

    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;Lcom/transsion/api/gateway/utils/ObjectLogUtils$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;-><init>(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->isSpace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->FILE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300()[C
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->T:[C

    return-object v0
.end method

.method private addLeftBorder(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1300(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, "| "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    invoke-static {p0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->createOrExistsDir(Ljava/io/File;)Z

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

.method private formatXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ">"

    :try_start_0
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

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

    sget-object v3, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/os/Environment;

    const-string v2, "sUserRequired"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v2, Landroid/os/Environment;

    invoke-direct {v2}, Landroid/os/Environment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
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

.method private varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-le v0, v2, :cond_0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$600(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$700(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$800(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v0, p1, 0xf

    and-int/lit16 p1, p1, 0xf0

    iget-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$900(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1000(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)I

    move-result v2

    if-ge v0, v2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->processTagAndHead(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->processBody(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$700(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$900(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)I

    move-result v2

    if-lt v0, v2, :cond_4

    aget-object v2, p2, v1

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-direct {p0, v0, v2, v3, p3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$800(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x10

    if-ne p1, v2, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {p1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1000(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)I

    move-result p1

    if-lt v0, p1, :cond_6

    aget-object p1, p2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    aget-object p2, p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->print2File(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private print2Console(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1200(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, " \n"

    invoke-static {p1, p2, p3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p3, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {p3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1300(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result p3

    const-string v0, "|---------------------------------------------------------------------------------------------------"

    if-eqz p3, :cond_1

    invoke-static {p1, p2, v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->addLeftBorder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    div-int/lit16 v1, p3, 0xfa0

    if-lez v1, :cond_5

    const/4 v2, 0x0

    const/16 v3, 0xfa0

    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_1
    const-string v4, "| "

    if-ge v2, v1, :cond_3

    add-int/lit16 v5, v3, 0xfa0

    invoke-virtual {p4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v6}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1300(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {p1, p2, v3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p4, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {p4}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1300(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result p4

    if-eqz p4, :cond_4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_4
    invoke-static {p1, p2, p3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {p1, p2, p4}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p3, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {p3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1300(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {p1, p2, v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private print2File(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget-object v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->FORMAT:Ljava/text/Format;

    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1400(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "log"

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1402(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1402(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1400(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v3}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->createOrExistsFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "log to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " failed!"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->T:[C

    add-int/lit8 p1, p1, -0x2

    aget-char p1, v0, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez p3, :cond_4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    :cond_4
    iget-object p3, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$1;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$1;-><init>(Lcom/transsion/api/gateway/utils/ObjectLogUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private varargs processBody(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    if-eqz p2, :cond_5

    array-length v0, p2

    const-string v1, "null"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    aget-object p2, p2, v2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 p2, 0x20

    if-ne p1, p2, :cond_1

    invoke-static {v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_1
    const/16 p2, 0x30

    if-ne p1, p2, :cond_6

    invoke-direct {p0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->formatXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p2

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    const-string v4, "args"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    move-object v3, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    const-string v1, "Log with null object."

    :cond_6
    :goto_3
    return-object v1
.end method

.method private processTagAndHead(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1100(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1200(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {p1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    iget v3, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->invokeLayer:I

    add-int/lit8 v3, v3, 0x5

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
    iget-object v4, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v4}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1100(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->isSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object p1, v3

    :cond_3
    iget-object v4, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v4}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$1200(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z

    move-result v4

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

    sget-object v2, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

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

    filled-new-array {p1, v1, v0}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const-string v0, ""

    const-string v1, ": "

    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
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


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x6

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public file(ILjava/lang/Object;)V
    .locals 3

    or-int/lit8 p1, p1, 0x10

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public file(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    or-int/lit8 p1, p1, 0x10

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public file(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x13

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public file(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/16 p2, 0x13

    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getBuilder()Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public json(ILjava/lang/String;)V
    .locals 3

    or-int/lit8 p1, p1, 0x20

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public json(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    or-int/lit8 p1, p1, 0x20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public json(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x23

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public json(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/16 p2, 0x23

    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setInvokeLayer(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->invokeLayer:I

    return-void
.end method

.method public v(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public xml(ILjava/lang/String;)V
    .locals 3

    or-int/lit8 p1, p1, 0x30

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public xml(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    or-int/lit8 p1, p1, 0x30

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public xml(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->builder:Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x33

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public xml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/16 p2, 0x33

    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
