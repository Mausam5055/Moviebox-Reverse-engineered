.class public Ln4/b;
.super Ln4/g;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ln4/g;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method bridge synthetic i(Lw4/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln4/b;->s(Lw4/a;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public q()I
    .locals 2

    invoke-virtual {p0}, Ln4/a;->b()Lw4/a;

    move-result-object v0

    invoke-virtual {p0}, Ln4/a;->d()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Ln4/b;->r(Lw4/a;F)I

    move-result v0

    return v0
.end method

.method public r(Lw4/a;F)I
    .locals 9

    iget-object v0, p1, Lw4/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lw4/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ln4/a;->e:Lw4/c;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lw4/a;->h:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget v2, p1, Lw4/a;->g:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v0, p1, Lw4/a;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    iget-object v0, p1, Lw4/a;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {p0}, Ln4/a;->e()F

    move-result v7

    invoke-virtual {p0}, Ln4/a;->f()F

    move-result v8

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lw4/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1}, Lv4/k;->b(FFF)F

    move-result p2

    iget-object v0, p1, Lw4/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lw4/a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, v0, p1}, Lv4/d;->c(FII)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method s(Lw4/a;F)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln4/b;->r(Lw4/a;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
