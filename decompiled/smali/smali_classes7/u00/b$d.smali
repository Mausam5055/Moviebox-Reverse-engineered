.class public Lu00/b$d;
.super Lu00/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu00/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu00/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lu00/a;)Lu00/b$a;
    .locals 0

    const-string p3, "target"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "antlib:org.apache.tools.ant"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lu00/b;->h()Lu00/b$a;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lu00/b;->i()Lu00/b$a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lu00/a;)V
    .locals 8

    invoke-virtual {p5}, Lu00/a;->m()Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {p5}, Lu00/a;->j()Lorg/apache/tools/ant/t;

    move-result-object p3

    new-instance v0, Lorg/apache/tools/ant/Location;

    invoke-virtual {p5}, Lu00/a;->k()Lorg/xml/sax/Locator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/Location;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/t;->k(Lorg/apache/tools/ant/Location;)V

    const/4 p3, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    const-string v3, "basedir"

    const/4 v4, 0x1

    const-string v5, ""

    if-ge v0, v2, :cond_7

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p5}, Lu00/a;->n()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2, v6}, Lorg/apache/tools/ant/Project;->H(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v5, "name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v6, :cond_5

    invoke-virtual {p5, v6}, Lu00/a;->r(Ljava/lang/String;)V

    invoke-virtual {p5}, Lu00/a;->n()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2, v6}, Lorg/apache/tools/ant/Project;->I(Ljava/lang/String;)V

    invoke-virtual {p2, v6, p2}, Lorg/apache/tools/ant/Project;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v6, :cond_5

    invoke-virtual {p5}, Lu00/a;->n()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2, v6, p2}, Lorg/apache/tools/ant/Project;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p5}, Lu00/a;->n()Z

    move-result v2

    if-nez v2, :cond_5

    move-object p3, v6

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, Lorg/xml/sax/SAXParseException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Unexpected attribute \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5}, Lu00/a;->k()Lorg/xml/sax/Locator;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "ant.file."

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lu00/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lu00/a;->n()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p5}, Lu00/a;->e()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Duplicated project name in import. Project "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lu00/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " defined first in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " and again in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lu00/a;->e()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v4}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    :cond_8
    invoke-virtual {p5}, Lu00/a;->e()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_9

    if-eqz v1, :cond_9

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lu00/a;->g()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5}, Lu00/a;->e()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Lorg/apache/tools/ant/Project;->M(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p5}, Lu00/a;->n()Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p2, v3}, Lorg/apache/tools/ant/Project;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p2, v3}, Lorg/apache/tools/ant/Project;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->G(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    if-nez p3, :cond_c

    invoke-virtual {p5}, Lu00/a;->f()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->G(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isAbsolute()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p2, p3}, Lorg/apache/tools/ant/Project;->G(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    invoke-static {}, Lu00/b;->f()Lorg/apache/tools/ant/util/d;

    move-result-object p1

    invoke-virtual {p5}, Lu00/a;->f()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Lorg/apache/tools/ant/util/d;->q(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->F(Ljava/io/File;)V

    :goto_2
    invoke-virtual {p5}, Lu00/a;->j()Lorg/apache/tools/ant/t;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lorg/apache/tools/ant/Project;->e(Ljava/lang/String;Lorg/apache/tools/ant/t;)V

    invoke-virtual {p5}, Lu00/a;->j()Lorg/apache/tools/ant/t;

    move-result-object p1

    invoke-virtual {p5, p1}, Lu00/a;->s(Lorg/apache/tools/ant/t;)V

    return-void
.end method
