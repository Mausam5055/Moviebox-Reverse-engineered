.class public La10/b;
.super Ljava/lang/Object;


# static fields
.field static synthetic a:Ljava/lang/Class;

.field static synthetic b:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static e(Ljava/lang/Throwable;Lorg/apache/tools/ant/BuildException;Z)Ljava/lang/Throwable;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p2, :cond_1

    instance-of p1, p0, Ljava/lang/ClassNotFoundException;

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method


# virtual methods
.method protected b(Ljava/lang/String;)La10/a;
    .locals 2

    sget-object v0, La10/b;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.tools.ant.util.regexp.RegexpMatcherFactory"

    invoke-static {v0}, La10/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, La10/b;->a:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, La10/b;->b:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.tools.ant.util.regexp.RegexpMatcher"

    invoke-static {v1}, La10/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, La10/b;->b:Ljava/lang/Class;

    :cond_1
    invoke-static {p1, v0, v1}, Lorg/apache/tools/ant/util/a;->f(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()La10/a;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La10/b;->d(Lorg/apache/tools/ant/Project;)La10/a;

    return-object v0
.end method

.method public d(Lorg/apache/tools/ant/Project;)La10/a;
    .locals 4

    const-string v0, "ant.regexp.regexpimpl"

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, La10/b;->b(Ljava/lang/String;)La10/a;

    return-object v0

    :cond_1
    :try_start_0
    const-string p1, "java.util.regex.Matcher"

    invoke-virtual {p0, p1}, La10/b;->f(Ljava/lang/String;)V

    const-string p1, "org.apache.tools.ant.util.regexp.Jdk14RegexpMatcher"

    invoke-virtual {p0, p1}, La10/b;->b(Ljava/lang/String;)La10/a;
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-static {}, Lorg/apache/tools/ant/util/f;->f()I

    move-result v1

    const/16 v2, 0xe

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, p1, v1}, La10/b;->e(Ljava/lang/Throwable;Lorg/apache/tools/ant/BuildException;Z)Ljava/lang/Throwable;

    move-result-object p1

    :try_start_1
    const-string v1, "org.apache.oro.text.regex.Pattern"

    invoke-virtual {p0, v1}, La10/b;->f(Ljava/lang/String;)V

    const-string v1, "org.apache.tools.ant.util.regexp.JakartaOroMatcher"

    invoke-virtual {p0, v1}, La10/b;->b(Ljava/lang/String;)La10/a;
    :try_end_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v1

    invoke-static {p1, v1, v3}, La10/b;->e(Ljava/lang/Throwable;Lorg/apache/tools/ant/BuildException;Z)Ljava/lang/Throwable;

    move-result-object p1

    :try_start_2
    const-string v1, "org.apache.regexp.RE"

    invoke-virtual {p0, v1}, La10/b;->f(Ljava/lang/String;)V

    const-string v1, "org.apache.tools.ant.util.regexp.JakartaRegexpMatcher"

    invoke-virtual {p0, v1}, La10/b;->b(Ljava/lang/String;)La10/a;
    :try_end_2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    invoke-static {p1, v0, v3}, La10/b;->e(Ljava/lang/Throwable;Lorg/apache/tools/ant/BuildException;Z)Ljava/lang/Throwable;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No supported regular expression matcher found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
