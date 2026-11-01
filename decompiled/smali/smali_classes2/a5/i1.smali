.class public abstract La5/i1;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/List;

.field protected b:Ljava/util/List;

.field protected c:Ljava/util/List;

.field protected d:Ljava/util/List;

.field protected e:Ljava/util/List;

.field protected f:Ljava/util/List;

.field protected g:Ljava/util/List;

.field protected h:Ljava/util/List;

.field protected i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La5/i1;->a:Ljava/util/List;

    iput-object v0, p0, La5/i1;->b:Ljava/util/List;

    iput-object v0, p0, La5/i1;->c:Ljava/util/List;

    iput-object v0, p0, La5/i1;->d:Ljava/util/List;

    iput-object v0, p0, La5/i1;->e:Ljava/util/List;

    iput-object v0, p0, La5/i1;->f:Ljava/util/List;

    iput-object v0, p0, La5/i1;->g:Ljava/util/List;

    iput-object v0, p0, La5/i1;->h:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, La5/i1;->i:Z

    return-void
.end method


# virtual methods
.method public b(La5/h1;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, La5/q;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La5/i1;->g()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, La5/q;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v0, p1, La5/i;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, La5/i1;->f()Ljava/util/List;

    move-result-object v0

    check-cast p1, La5/i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public c(La5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    iget-object p1, p1, La5/i1;->c:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p2

    :cond_1
    :goto_0
    iget-object p1, p0, La5/i1;->c:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public e(La5/o0;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p1, La5/i1;->f:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p2

    :cond_1
    :goto_0
    iget-object p1, p0, La5/i1;->f:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, La5/i1;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La5/i1;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, La5/i1;->i:Z

    :cond_0
    iget-object v0, p0, La5/i1;->b:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, La5/i1;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La5/i1;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, La5/i1;->i:Z

    :cond_0
    iget-object v0, p0, La5/i1;->a:Ljava/util/List;

    return-object v0
.end method

.method protected h(La5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p1, p1, La5/i1;->e:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p2

    :cond_1
    :goto_0
    iget-object p1, p0, La5/i1;->e:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p2

    :cond_3
    :goto_1
    return-object p3
.end method

.method protected i(La5/o0;La5/p;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    const/4 p3, 0x0

    if-eqz p5, :cond_5

    iget-object p4, p1, La5/o0;->k:La5/j1;

    iget p4, p4, La5/j1;->c:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p4, p6, v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p4

    if-nez p4, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, La5/p;->a()I

    move-result p4

    iget p6, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p4, p6

    if-eqz p4, :cond_1

    :cond_0
    instance-of p4, p5, Ljava/lang/Number;

    if-nez p4, :cond_2

    instance-of p6, p5, Ljava/lang/Boolean;

    if-eqz p6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, La5/p;->c()Z

    move-result p2

    if-eqz p2, :cond_5

    check-cast p5, Ljava/lang/String;

    invoke-static {p5}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, La5/p;->b()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, p3

    :goto_1
    if-eqz p2, :cond_4

    new-instance p4, Ljava/text/DecimalFormat;

    invoke-direct {p4, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    move-object p5, p2

    goto :goto_3

    :cond_4
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    :goto_3
    iget-object p2, p1, La5/i1;->d:Ljava/util/List;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p3

    :cond_7
    :goto_4
    iget-object p2, p0, La5/i1;->d:Ljava/util/List;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p3

    :cond_9
    :goto_5
    iget-object p1, p1, La5/i1;->h:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_6

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p3

    :cond_b
    :goto_6
    iget-object p1, p0, La5/i1;->h:Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_7

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p3

    :cond_d
    :goto_7
    return-object p5
.end method
