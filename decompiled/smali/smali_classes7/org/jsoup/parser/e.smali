.class public Lorg/jsoup/parser/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/jsoup/parser/i;

.field private b:I

.field private c:Lorg/jsoup/parser/ParseErrorList;

.field private d:Lorg/jsoup/parser/d;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/e;->b:I

    iput-object p1, p0, Lorg/jsoup/parser/e;->a:Lorg/jsoup/parser/i;

    invoke-virtual {p1}, Lorg/jsoup/parser/i;->b()Lorg/jsoup/parser/d;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/e;->d:Lorg/jsoup/parser/d;

    return-void
.end method

.method public static a()Lorg/jsoup/parser/e;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/e;

    new-instance v1, Lorg/jsoup/parser/b;

    invoke-direct {v1}, Lorg/jsoup/parser/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(Lorg/jsoup/parser/i;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 3

    new-instance v0, Lorg/jsoup/parser/b;

    invoke-direct {v0}, Lorg/jsoup/parser/b;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p0

    invoke-virtual {v0}, Lorg/jsoup/parser/i;->b()Lorg/jsoup/parser/d;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p0, v2}, Lorg/jsoup/parser/i;->d(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    new-instance v0, Lorg/jsoup/parser/b;

    invoke-direct {v0}, Lorg/jsoup/parser/b;-><init>()V

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/parser/b;->b()Lorg/jsoup/parser/d;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/jsoup/parser/b;->i0(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static g()Lorg/jsoup/parser/e;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/e;

    new-instance v1, Lorg/jsoup/parser/j;

    invoke-direct {v1}, Lorg/jsoup/parser/j;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(Lorg/jsoup/parser/i;)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/e;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 3

    invoke-virtual {p0}, Lorg/jsoup/parser/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/parser/e;->b:I

    invoke-static {v0}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/jsoup/parser/e;->c:Lorg/jsoup/parser/ParseErrorList;

    iget-object v1, p0, Lorg/jsoup/parser/e;->a:Lorg/jsoup/parser/i;

    iget-object v2, p0, Lorg/jsoup/parser/e;->d:Lorg/jsoup/parser/d;

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/jsoup/parser/i;->d(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 3

    invoke-virtual {p0}, Lorg/jsoup/parser/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/parser/e;->b:I

    invoke-static {v0}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/jsoup/parser/e;->c:Lorg/jsoup/parser/ParseErrorList;

    iget-object v0, p0, Lorg/jsoup/parser/e;->a:Lorg/jsoup/parser/i;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jsoup/parser/e;->c:Lorg/jsoup/parser/ParseErrorList;

    iget-object v2, p0, Lorg/jsoup/parser/e;->d:Lorg/jsoup/parser/d;

    invoke-virtual {v0, v1, p2, p1, v2}, Lorg/jsoup/parser/i;->d(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method
