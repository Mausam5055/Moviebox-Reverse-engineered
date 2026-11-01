.class public Lorg/jsoup/nodes/m;
.super Lorg/jsoup/nodes/i;


# instance fields
.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/nodes/i;-><init>()V

    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/jsoup/nodes/i;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/jsoup/nodes/m;->e:Z

    return-void
.end method

.method private c0(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 4

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/a;

    invoke-virtual {v1}, Lorg/jsoup/nodes/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x20

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    invoke-virtual {v1, p1, p2}, Lorg/jsoup/nodes/a;->f(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    const-string v0, "#declaration"

    return-object v0
.end method

.method F(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 3

    const-string p2, "<"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    iget-boolean v0, p0, Lorg/jsoup/nodes/m;->e:Z

    const-string v1, "?"

    const-string v2, "!"

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-direct {p0, p1, p3}, Lorg/jsoup/nodes/m;->c0(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    iget-boolean p2, p0, Lorg/jsoup/nodes/m;->e:Z

    if-eqz p2, :cond_1

    move-object v1, v2

    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, ">"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method G(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->a0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/i;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()I
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/i;->n()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/i;->w(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
