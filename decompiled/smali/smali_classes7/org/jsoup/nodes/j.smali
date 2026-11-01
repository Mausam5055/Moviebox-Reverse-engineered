.class public abstract Lorg/jsoup/nodes/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/j$b;
    }
.end annotation


# instance fields
.field a:Lorg/jsoup/nodes/j;

.field b:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private K(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/j;

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/j;->U(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(ILjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->I()Lorg/jsoup/nodes/j;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->I()Lorg/jsoup/nodes/j;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/jsoup/parser/e;->d(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jsoup/nodes/j;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/jsoup/nodes/j;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/j;->b(I[Lorg/jsoup/nodes/j;)V

    return-void
.end method

.method private u(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->o0()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/j;->u(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public A()Lorg/jsoup/nodes/j;
    .locals 4

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lorg/jsoup/nodes/j;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/j;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public abstract B()Ljava/lang/String;
.end method

.method C()V
    .locals 0

    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/j;->E(Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected E(Ljava/lang/Appendable;)V
    .locals 2

    new-instance v0, Lorg/jsoup/nodes/j$b;

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->v()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/j$b;-><init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/d;->c(Lf10/a;Lorg/jsoup/nodes/j;)V

    return-void
.end method

.method abstract F(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
.end method

.method abstract G(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
.end method

.method public H()Lorg/jsoup/nodes/Document;
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->R()Lorg/jsoup/nodes/j;

    move-result-object v0

    instance-of v1, v0, Lorg/jsoup/nodes/Document;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jsoup/nodes/Document;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public I()Lorg/jsoup/nodes/j;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    return-object v0
.end method

.method public final J()Lorg/jsoup/nodes/j;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    return-object v0
.end method

.method public L()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/j;->N(Lorg/jsoup/nodes/j;)V

    return-void
.end method

.method public M(Ljava/lang/String;)Lorg/jsoup/nodes/j;
    .locals 1

    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->B(Ljava/lang/String;)V

    return-object p0
.end method

.method protected N(Lorg/jsoup/nodes/j;)V
    .locals 2

    iget-object v0, p1, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->d(Z)V

    iget v0, p1, Lorg/jsoup/nodes/j;->b:I

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/j;->K(I)V

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    return-void
.end method

.method protected O(Lorg/jsoup/nodes/j;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/j;->T(Lorg/jsoup/nodes/j;)V

    return-void
.end method

.method protected P(Lorg/jsoup/nodes/j;Lorg/jsoup/nodes/j;)V
    .locals 2

    iget-object v0, p1, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->d(Z)V

    invoke-static {p2}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    iget-object v0, p2, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/j;->N(Lorg/jsoup/nodes/j;)V

    :cond_1
    iget v0, p1, Lorg/jsoup/nodes/j;->b:I

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object p0, p2, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/j;->U(I)V

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    return-void
.end method

.method public Q(Lorg/jsoup/nodes/j;)V
    .locals 1

    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    invoke-virtual {v0, p0, p1}, Lorg/jsoup/nodes/j;->P(Lorg/jsoup/nodes/j;Lorg/jsoup/nodes/j;)V

    return-void
.end method

.method public R()Lorg/jsoup/nodes/j;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public S(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    new-instance v0, Lorg/jsoup/nodes/j$a;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/nodes/j$a;-><init>(Lorg/jsoup/nodes/j;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/j;->X(Lf10/a;)Lorg/jsoup/nodes/j;

    return-void
.end method

.method protected T(Lorg/jsoup/nodes/j;)V
    .locals 1

    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/j;->N(Lorg/jsoup/nodes/j;)V

    :cond_0
    iput-object p1, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    return-void
.end method

.method protected U(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/nodes/j;->b:I

    return-void
.end method

.method public V()I
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/j;->b:I

    return v0
.end method

.method public W()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/j;

    if-eq v2, p0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public X(Lf10/a;)Lorg/jsoup/nodes/j;
    .locals 0

    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lorg/jsoup/select/d;->c(Lf10/a;Lorg/jsoup/nodes/j;)V

    return-object p0
.end method

.method public Y()Lorg/jsoup/nodes/j;
    .locals 4

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/j;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    iget v2, p0, Lorg/jsoup/nodes/j;->b:I

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->p()[Lorg/jsoup/nodes/j;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/nodes/j;->b(I[Lorg/jsoup/nodes/j;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->L()V

    return-object v0
.end method

.method public Z(Ljava/lang/String;)Lorg/jsoup/nodes/j;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->I()Lorg/jsoup/nodes/j;

    move-result-object v2

    instance-of v2, v2, Lorg/jsoup/nodes/Element;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->I()Lorg/jsoup/nodes/j;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lorg/jsoup/parser/e;->d(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/j;

    if-eqz v2, :cond_3

    instance-of v4, v2, Lorg/jsoup/nodes/Element;

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/j;->u(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    iget-object v4, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    invoke-virtual {v4, p0, v2}, Lorg/jsoup/nodes/j;->P(Lorg/jsoup/nodes/j;Lorg/jsoup/nodes/j;)V

    new-array v4, v0, [Lorg/jsoup/nodes/j;

    aput-object p0, v4, v1

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/j;->c([Lorg/jsoup/nodes/j;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/j;

    iget-object v4, v3, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/j;->N(Lorg/jsoup/nodes/j;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    add-int/2addr v1, v0

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_2
    return-object v3
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/j;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jsoup/helper/c;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs b(I[Lorg/jsoup/nodes/j;)V
    .locals 4

    invoke-static {p2}, Lorg/jsoup/helper/d;->f([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/j;->O(Lorg/jsoup/nodes/j;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/j;->K(I)V

    return-void
.end method

.method protected varargs c([Lorg/jsoup/nodes/j;)V
    .locals 5

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/j;->O(Lorg/jsoup/nodes/j;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/j;->U(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->q()Lorg/jsoup/nodes/j;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lorg/jsoup/nodes/j;
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/j;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/j;->d(ILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->x()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/j;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/b;->y(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract i()Lorg/jsoup/nodes/b;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public k(Ljava/lang/String;)Lorg/jsoup/nodes/j;
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/j;->b:I

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/j;->d(ILjava/lang/String;)V

    return-object p0
.end method

.method public l(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/j;
    .locals 4

    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    iget v1, p0, Lorg/jsoup/nodes/j;->b:I

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jsoup/nodes/j;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/j;->b(I[Lorg/jsoup/nodes/j;)V

    return-object p0
.end method

.method public m(I)Lorg/jsoup/nodes/j;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/j;

    return-object p1
.end method

.method public abstract n()I
.end method

.method public o()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected p()[Lorg/jsoup/nodes/j;
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->n()I

    move-result v1

    new-array v1, v1, [Lorg/jsoup/nodes/j;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/j;

    return-object v0
.end method

.method public q()Lorg/jsoup/nodes/j;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/j;->r(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/j;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/j;

    invoke-virtual {v2}, Lorg/jsoup/nodes/j;->n()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/j;

    invoke-virtual {v6, v2}, Lorg/jsoup/nodes/j;->r(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/j;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected r(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/j;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/j;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, v0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/jsoup/nodes/j;->b:I

    :goto_0
    iput p1, v0, Lorg/jsoup/nodes/j;->b:I

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected abstract s(Ljava/lang/String;)V
.end method

.method protected abstract t()Ljava/util/List;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->H()Lorg/jsoup/nodes/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->g1()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/jsoup/nodes/Document;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public w(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/b;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->q(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract x()Z
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected z(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->i()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-static {p2}, Lorg/jsoup/helper/c;->l(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
