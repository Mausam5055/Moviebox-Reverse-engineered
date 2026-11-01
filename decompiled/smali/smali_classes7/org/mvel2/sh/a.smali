.class public Lorg/mvel2/sh/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/sh/a$a;
    }
.end annotation


# static fields
.field private static final m:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;

.field d:Lorg/mvel2/ParserContext;

.field e:Lorg/mvel2/integration/VariableResolverFactory;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/io/PrintStream;

.field private j:Ljava/lang/String;

.field k:Lorg/mvel2/util/s;

.field final l:Ljava/io/BufferedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/mvel2/sh/a;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/sh/a;->a:Ljava/util/Map;

    new-instance v1, Lorg/mvel2/ParserContext;

    invoke-direct {v1}, Lorg/mvel2/ParserContext;-><init>()V

    iput-object v1, p0, Lorg/mvel2/sh/a;->d:Lorg/mvel2/ParserContext;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mvel2/sh/a;->g:Z

    iput v1, p0, Lorg/mvel2/sh/a;->h:I

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v1, p0, Lorg/mvel2/sh/a;->i:Ljava/io/PrintStream;

    new-instance v2, Lorg/mvel2/util/s;

    invoke-direct {v2}, Lorg/mvel2/util/s;-><init>()V

    iput-object v2, p0, Lorg/mvel2/sh/a;->k:Lorg/mvel2/util/s;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lorg/mvel2/sh/a;->l:Ljava/io/BufferedReader;

    const-string v2, "Starting session..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mvel2/sh/a;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    new-instance v1, Lp10/a;

    invoke-direct {v1}, Lp10/a;-><init>()V

    invoke-virtual {v1}, Lp10/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v1, Lq10/c;

    invoke-direct {v1}, Lq10/c;-><init>()V

    invoke-virtual {v1}, Lq10/c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    const-string v1, "$PROMPT"

    const-string v2, "[@{ new java.text.SimpleDateFormat(\'hh:mmaa\').format(new java.util.Date(System.currentTimeMillis()))}] mvel2$ "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$OS_NAME"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$OS_VERSION"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    const-string v2, "$JAVA_VERSION"

    invoke-static {}, Lorg/mvel2/util/n;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    new-instance v2, Ljava/io/File;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$CWD"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    const-string v2, "$COMMAND_PASSTRU"

    const-string v3, "false"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    const-string v2, "$PRINTOUTPUT"

    const-string v4, "true"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    const-string v2, "$ECHO"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    const-string v2, "$SHOW_TRACES"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    const-string v2, "$USE_OPTIMIZER_ALWAYS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    const-string v2, ""

    const-string v3, "$PATH"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v0, ".mvelsh.properties"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "No config file found.  Loading default config."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows"

    invoke-static {v0, v1}, Lorg/mvel2/util/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    const-string v1, "/bin:/usr/bin:/sbin:/usr/sbin"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    iget-object v1, p0, Lorg/mvel2/sh/a;->b:Ljava/util/Map;

    new-instance v2, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    iget-object v3, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    iput-object v0, p0, Lorg/mvel2/sh/a;->e:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method static synthetic a(Lorg/mvel2/sh/a;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mvel2/sh/a;->g:Z

    return p0
.end method

.method static synthetic b(Lorg/mvel2/sh/a;)I
    .locals 0

    iget p0, p0, Lorg/mvel2/sh/a;->h:I

    return p0
.end method

.method static synthetic c(Lorg/mvel2/sh/a;I)I
    .locals 0

    iput p1, p0, Lorg/mvel2/sh/a;->h:I

    return p1
.end method

.method static synthetic d(Lorg/mvel2/sh/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mvel2/sh/a;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lorg/mvel2/sh/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/mvel2/sh/a;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lorg/mvel2/sh/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lorg/mvel2/sh/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mvel2/sh/a;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lorg/mvel2/sh/a;)Ljava/io/PrintStream;
    .locals 0

    iget-object p0, p0, Lorg/mvel2/sh/a;->i:Ljava/io/PrintStream;

    return-object p0
.end method

.method static synthetic i(Lorg/mvel2/sh/a;)I
    .locals 0

    iget p0, p0, Lorg/mvel2/sh/a;->f:I

    return p0
.end method


# virtual methods
.method public j(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
