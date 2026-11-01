.class public Lorg/jsoup/nodes/l;
.super Lorg/jsoup/nodes/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/nodes/i;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/i;->c:Ljava/lang/Object;

    return-void
.end method

.method static e0(Ljava/lang/StringBuilder;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method F(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 6

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->V()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    instance-of v1, v0, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->T0()Lorg/jsoup/parser/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/l;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->W()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/l;->d0()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/j;->z(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->l()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->I()Lorg/jsoup/nodes/j;

    move-result-object p2

    instance-of p2, p2, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->I()Lorg/jsoup/nodes/j;

    move-result-object p2

    invoke-static {p2}, Lorg/jsoup/nodes/Element;->O0(Lorg/jsoup/nodes/j;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    :goto_0
    move v4, p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->a0()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lorg/jsoup/nodes/Entities;->e(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

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

.method public c0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->a0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d0()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/c;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
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
