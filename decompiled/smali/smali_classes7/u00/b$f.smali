.class public Lu00/b$f;
.super Lu00/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu00/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu00/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;Lu00/a;)V
    .locals 0

    invoke-virtual {p3}, Lu00/a;->j()Lorg/apache/tools/ant/t;

    move-result-object p1

    invoke-virtual {p3, p1}, Lu00/a;->s(Lorg/apache/tools/ant/t;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lu00/a;)Lu00/b$a;
    .locals 0

    invoke-static {}, Lu00/b;->i()Lu00/b$a;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lu00/a;)V
    .locals 8

    invoke-virtual {p5}, Lu00/a;->m()Lorg/apache/tools/ant/Project;

    move-result-object p2

    new-instance p3, Lorg/apache/tools/ant/t;

    invoke-direct {p3}, Lorg/apache/tools/ant/t;-><init>()V

    invoke-virtual {p3, p2}, Lorg/apache/tools/ant/t;->m(Lorg/apache/tools/ant/Project;)V

    new-instance v0, Lorg/apache/tools/ant/Location;

    invoke-virtual {p5}, Lu00/a;->k()Lorg/xml/sax/Locator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/Location;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/t;->k(Lorg/apache/tools/ant/Location;)V

    invoke-virtual {p5, p3}, Lu00/a;->a(Lorg/apache/tools/ant/t;)V

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_9

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v6

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "name attribute must not be empty"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v7, "depends"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v4, v6

    goto :goto_1

    :cond_3
    const-string v7, "if"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p3, v6}, Lorg/apache/tools/ant/t;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v7, "unless"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p3, v6}, Lorg/apache/tools/ant/t;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v7, "id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v6, :cond_7

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p5}, Lu00/a;->m()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v5, v6, p3}, Lorg/apache/tools/ant/Project;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const-string v7, "description"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p3, v6}, Lorg/apache/tools/ant/t;->i(Ljava/lang/String;)V

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance p1, Lorg/xml/sax/SAXParseException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Unexpected attribute \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5}, Lu00/a;->k()Lorg/xml/sax/Locator;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1

    :cond_9
    if-eqz v0, :cond_f

    invoke-virtual {p5}, Lu00/a;->i()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    invoke-virtual {p2}, Lorg/apache/tools/ant/Project;->u()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Already defined in main or a previous import, ignore "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x3

    invoke-virtual {p2, p1, p4}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/t;->l(Ljava/lang/String;)V

    invoke-virtual {p5}, Lu00/a;->i()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Lorg/apache/tools/ant/Project;->c(Ljava/lang/String;Lorg/apache/tools/ant/t;)V

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_b

    invoke-virtual {p3, v4}, Lorg/apache/tools/ant/t;->h(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p5}, Lu00/a;->n()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p5}, Lu00/a;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p5}, Lu00/a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p5}, Lu00/a;->g()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, "."

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_c

    new-instance p4, Lorg/apache/tools/ant/t;

    invoke-direct {p4, p3}, Lorg/apache/tools/ant/t;-><init>(Lorg/apache/tools/ant/t;)V

    move-object p3, p4

    :cond_c
    invoke-virtual {p3, p1}, Lorg/apache/tools/ant/t;->l(Ljava/lang/String;)V

    invoke-virtual {p5}, Lu00/a;->i()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Lorg/apache/tools/ant/Project;->c(Ljava/lang/String;Lorg/apache/tools/ant/t;)V

    :cond_d
    return-void

    :cond_e
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Duplicate target \'"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, "\'"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lorg/apache/tools/ant/t;->c()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    :cond_f
    new-instance p1, Lorg/xml/sax/SAXParseException;

    const-string p2, "target element appears without a name attribute"

    invoke-virtual {p5}, Lu00/a;->k()Lorg/xml/sax/Locator;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1
.end method
