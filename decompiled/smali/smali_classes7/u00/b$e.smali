.class public Lu00/b$e;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu00/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/util/Stack;

.field private b:Lu00/b$a;

.field private c:Lu00/a;


# direct methods
.method public constructor <init>(Lu00/a;Lu00/b$a;)V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lu00/b$e;->a:Ljava/util/Stack;

    iput-object p2, p0, Lu00/b$e;->b:Lu00/b$a;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lu00/b$e;->c:Lu00/a;

    return-void
.end method

.method static synthetic a(Lu00/b$e;)Lu00/a;
    .locals 0

    iget-object p0, p0, Lu00/b$e;->c:Lu00/a;

    return-object p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    iget-object v0, p0, Lu00/b$e;->b:Lu00/b$a;

    iget-object v1, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {v0, p1, p2, p3, v1}, Lu00/b$a;->a([CIILu00/a;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lu00/b$e;->b:Lu00/b$a;

    iget-object v1, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {v0, p1, p2, v1}, Lu00/b$a;->c(Ljava/lang/String;Ljava/lang/String;Lu00/a;)V

    iget-object v0, p0, Lu00/b$e;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu00/b$a;

    iput-object v0, p0, Lu00/b$e;->b:Lu00/b$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {v0, p1, p2, p3, v1}, Lu00/b$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu00/a;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {v0, p1}, Lu00/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 6

    iget-object p1, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {p1}, Lu00/a;->m()Lorg/apache/tools/ant/Project;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "resolving systemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    const-string p1, "file:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    invoke-static {}, Lu00/b;->f()Lorg/apache/tools/ant/util/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/util/d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {}, Lu00/b;->f()Lorg/apache/tools/ant/util/d;

    move-result-object v1

    iget-object v2, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {v2}, Lu00/a;->f()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/apache/tools/ant/util/d;->q(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {v2}, Lu00/a;->m()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Warning: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\' in "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {p2}, Lu00/a;->e()Ljava/io/File;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, " should be expressed simply as \'"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0x5c

    const/16 v5, 0x2f

    invoke-virtual {p1, p2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\' for compliance with other XML tools"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v3}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {p1}, Lu00/a;->m()Lorg/apache/tools/ant/Project;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "file="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    :try_start_0
    new-instance p1, Lorg/xml/sax/InputSource;

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Lu00/b;->f()Lorg/apache/tools/ant/util/d;

    move-result-object p2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/tools/ant/util/d;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object p1, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {p1}, Lu00/a;->m()Lorg/apache/tools/ant/Project;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " could not be found"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    :cond_1
    iget-object p1, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {p1}, Lu00/a;->m()Lorg/apache/tools/ant/Project;

    move-result-object p1

    const-string p2, "could not resolve systemId"

    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget-object v0, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {v0, p1}, Lu00/a;->u(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lu00/b$e;->b:Lu00/b$a;

    iget-object v6, v0, Lu00/b$e;->c:Lu00/a;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lu00/b$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lu00/a;)Lu00/b$a;

    move-result-object v7

    iget-object v1, v0, Lu00/b$e;->a:Ljava/util/Stack;

    iget-object v2, v0, Lu00/b$e;->b:Lu00/b$a;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v7, v0, Lu00/b$e;->b:Lu00/b$a;

    iget-object v12, v0, Lu00/b$e;->c:Lu00/a;

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Lu00/b$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lu00/a;)V

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lu00/b$e;->c:Lu00/a;

    invoke-virtual {v0, p1, p2}, Lu00/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
