.class abstract Lorg/jsoup/parser/i;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/jsoup/parser/a;

.field b:Lorg/jsoup/parser/h;

.field protected c:Lorg/jsoup/nodes/Document;

.field protected d:Ljava/util/ArrayList;

.field protected e:Ljava/lang/String;

.field protected f:Lorg/jsoup/parser/Token;

.field protected g:Lorg/jsoup/parser/ParseErrorList;

.field protected h:Lorg/jsoup/parser/d;

.field private i:Lorg/jsoup/parser/Token$h;

.field private j:Lorg/jsoup/parser/Token$g;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$h;

    new-instance v0, Lorg/jsoup/parser/Token$g;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$g;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/i;->j:Lorg/jsoup/parser/Token$g;

    return-void
.end method


# virtual methods
.method protected a()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method abstract b()Lorg/jsoup/parser/d;
.end method

.method protected c(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)V
    .locals 1

    const-string v0, "String input must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BaseURI must not be null"

    invoke-static {p2, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    iput-object p4, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    new-instance p4, Lorg/jsoup/parser/a;

    invoke-direct {p4, p1}, Lorg/jsoup/parser/a;-><init>(Ljava/io/Reader;)V

    iput-object p4, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    iput-object p3, p0, Lorg/jsoup/parser/i;->g:Lorg/jsoup/parser/ParseErrorList;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    new-instance p1, Lorg/jsoup/parser/h;

    iget-object p4, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-direct {p1, p4, p3}, Lorg/jsoup/parser/h;-><init>(Lorg/jsoup/parser/a;Lorg/jsoup/parser/ParseErrorList;)V

    iput-object p1, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/jsoup/parser/i;->e:Ljava/lang/String;

    return-void
.end method

.method d(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)Lorg/jsoup/nodes/Document;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jsoup/parser/i;->c(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/i;->i()V

    iget-object p1, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    return-object p1
.end method

.method protected abstract e(Lorg/jsoup/parser/Token;)Z
.end method

.method protected f(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/i;->j:Lorg/jsoup/parser/Token$g;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$g;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$g;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->B(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$i;->E()Lorg/jsoup/parser/Token$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->B(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method protected g(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$h;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->B(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$h;->E()Lorg/jsoup/parser/Token$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->B(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$h;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$h;->G(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/parser/Token$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$h;->E()Lorg/jsoup/parser/Token$i;

    iget-object v0, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$h;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$h;->G(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/parser/Token$h;

    iget-object p1, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$h;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method protected i()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    invoke-virtual {v0}, Lorg/jsoup/parser/h;->t()Lorg/jsoup/parser/Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->m()Lorg/jsoup/parser/Token;

    iget-object v0, v0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    return-void
.end method
