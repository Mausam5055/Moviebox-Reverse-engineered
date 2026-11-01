.class public Lu00/b;
.super Lorg/apache/tools/ant/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu00/b$b;,
        Lu00/b$f;,
        Lu00/b$d;,
        Lu00/b$c;,
        Lu00/b$e;,
        Lu00/b$a;
    }
.end annotation


# static fields
.field private static b:Lu00/b$a;

.field private static c:Lu00/b$a;

.field private static d:Lu00/b$a;

.field private static e:Lu00/b$a;

.field private static final f:Lorg/apache/tools/ant/util/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu00/b$b;

    invoke-direct {v0}, Lu00/b$b;-><init>()V

    sput-object v0, Lu00/b;->b:Lu00/b$a;

    new-instance v0, Lu00/b$f;

    invoke-direct {v0}, Lu00/b$f;-><init>()V

    sput-object v0, Lu00/b;->c:Lu00/b$a;

    new-instance v0, Lu00/b$c;

    invoke-direct {v0}, Lu00/b$c;-><init>()V

    sput-object v0, Lu00/b;->d:Lu00/b$a;

    new-instance v0, Lu00/b$d;

    invoke-direct {v0}, Lu00/b$d;-><init>()V

    sput-object v0, Lu00/b;->e:Lu00/b$a;

    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    move-result-object v0

    sput-object v0, Lu00/b;->f:Lorg/apache/tools/ant/util/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/tools/ant/r;-><init>()V

    return-void
.end method

.method static synthetic f()Lorg/apache/tools/ant/util/d;
    .locals 1

    sget-object v0, Lu00/b;->f:Lorg/apache/tools/ant/util/d;

    return-object v0
.end method

.method static synthetic g()Lu00/b$a;
    .locals 1

    sget-object v0, Lu00/b;->e:Lu00/b$a;

    return-object v0
.end method

.method static synthetic h()Lu00/b$a;
    .locals 1

    sget-object v0, Lu00/b;->c:Lu00/b$a;

    return-object v0
.end method

.method static synthetic i()Lu00/b$a;
    .locals 1

    sget-object v0, Lu00/b;->b:Lu00/b$a;

    return-object v0
.end method


# virtual methods
.method public j(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lu00/b$e;)V
    .locals 6

    invoke-static {p3}, Lu00/b$e;->a(Lu00/b$e;)Lu00/a;

    move-result-object v0

    instance-of v1, p2, Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p2, Ljava/io/File;

    sget-object v1, Lu00/b;->f:Lorg/apache/tools/ant/util/d;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {v0, p2}, Lu00/a;->q(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/net/URL;

    if-eqz v0, :cond_8

    check-cast p2, Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, p2

    move-object p2, v2

    :goto_0
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/e;->c()Lorg/xml/sax/XMLReader;

    move-result-object v3

    if-eqz p2, :cond_1

    sget-object v0, Lu00/b;->f:Lorg/apache/tools/ant/util/d;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/util/d;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto/16 :goto_4

    :catch_3
    move-exception p1

    goto/16 :goto_5

    :catch_4
    move-exception p1

    goto/16 :goto_7

    :cond_1
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance p2, Lorg/xml/sax/InputSource;

    invoke-direct {p2, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "parsing buildfile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " with URI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v4}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface {v3, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    return-void

    :goto_2
    :try_start_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Error reading project file "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_3
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Encoding of project file "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " is invalid."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_4
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_5
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p2

    instance-of p3, p2, Lorg/apache/tools/ant/BuildException;

    if-nez p3, :cond_4

    new-instance p3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_3

    goto :goto_6

    :cond_3
    move-object p1, p2

    :goto_6
    invoke-direct {p3, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_4
    check-cast p2, Lorg/apache/tools/ant/BuildException;

    throw p2

    :goto_7
    new-instance p2, Lorg/apache/tools/ant/Location;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-direct {p2, p3, v0, v1}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p3

    instance-of v0, p3, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_6

    check-cast p3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p3}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p1

    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    if-ne p1, v0, :cond_5

    invoke-virtual {p3, p2}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    :cond_5
    throw p3

    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_7

    goto :goto_8

    :cond_7
    move-object p1, p3

    :goto_8
    invoke-direct {v0, v1, p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    invoke-static {v2}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    throw p1

    :cond_8
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Source "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " not supported by this plugin"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Lorg/apache/tools/ant/Project;Ljava/net/URL;)Lorg/apache/tools/ant/w;
    .locals 4

    new-instance v0, Lorg/apache/tools/ant/t;

    invoke-direct {v0}, Lorg/apache/tools/ant/t;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/t;->m(Lorg/apache/tools/ant/Project;)V

    new-instance v1, Lu00/a;

    invoke-direct {v1, p1}, Lu00/a;-><init>(Lorg/apache/tools/ant/Project;)V

    invoke-virtual {v1, v0}, Lu00/a;->a(Lorg/apache/tools/ant/t;)V

    invoke-virtual {v1, v0}, Lu00/a;->t(Lorg/apache/tools/ant/t;)V

    invoke-virtual {v1}, Lu00/a;->m()Lorg/apache/tools/ant/Project;

    move-result-object p1

    new-instance v2, Lu00/b$e;

    sget-object v3, Lu00/b;->b:Lu00/b$a;

    invoke-direct {v2, v1, v3}, Lu00/b$e;-><init>(Lu00/a;Lu00/b$a;)V

    invoke-virtual {p0, p1, p2, v2}, Lu00/b;->j(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lu00/b$e;)V

    invoke-virtual {v0}, Lorg/apache/tools/ant/t;->f()[Lorg/apache/tools/ant/u;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    check-cast p1, Lorg/apache/tools/ant/w;

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "No tasks defined"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
