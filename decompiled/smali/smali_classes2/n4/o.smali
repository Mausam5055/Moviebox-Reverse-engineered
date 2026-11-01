.class public Ln4/o;
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

    invoke-virtual {p0, p1, p2}, Ln4/o;->q(Lw4/a;F)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object p1

    return-object p1
.end method

.method q(Lw4/a;F)Lcom/airbnb/lottie/model/DocumentData;
    .locals 8

    iget-object v0, p0, Ln4/a;->e:Lw4/c;

    if-eqz v0, :cond_2

    iget v1, p1, Lw4/a;->g:F

    iget-object v2, p1, Lw4/a;->h:Ljava/lang/Float;

    if-nez v2, :cond_0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_0
    iget-object v3, p1, Lw4/a;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/airbnb/lottie/model/DocumentData;

    iget-object p1, p1, Lw4/a;->c:Ljava/lang/Object;

    if-nez p1, :cond_1

    check-cast v3, Lcom/airbnb/lottie/model/DocumentData;

    move-object p1, v3

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    :goto_1
    invoke-virtual {p0}, Ln4/a;->d()F

    move-result v6

    invoke-virtual {p0}, Ln4/a;->f()F

    move-result v7

    move-object v3, v4

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lw4/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    return-object p1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_4

    iget-object p2, p1, Lw4/a;->c:Ljava/lang/Object;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lcom/airbnb/lottie/model/DocumentData;

    return-object p2

    :cond_4
    :goto_2
    iget-object p1, p1, Lw4/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    return-object p1
.end method

.method public r(Lw4/c;)V
    .locals 3

    new-instance v0, Lw4/b;

    invoke-direct {v0}, Lw4/b;-><init>()V

    new-instance v1, Lcom/airbnb/lottie/model/DocumentData;

    invoke-direct {v1}, Lcom/airbnb/lottie/model/DocumentData;-><init>()V

    new-instance v2, Ln4/o$a;

    invoke-direct {v2, p0, v0, p1, v1}, Ln4/o$a;-><init>(Ln4/o;Lw4/b;Lw4/c;Lcom/airbnb/lottie/model/DocumentData;)V

    invoke-super {p0, v2}, Ln4/a;->o(Lw4/c;)V

    return-void
.end method
