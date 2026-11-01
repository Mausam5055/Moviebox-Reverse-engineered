.class final Lcom/google/android/material/carousel/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/f$c;,
        Lcom/google/android/material/carousel/f$b;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:I


# direct methods
.method private constructor <init>(FLjava/util/List;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/carousel/f;->a:F

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    iput p3, p0, Lcom/google/android/material/carousel/f;->c:I

    iput p4, p0, Lcom/google/android/material/carousel/f;->d:I

    return-void
.end method

.method synthetic constructor <init>(FLjava/util/List;IILcom/google/android/material/carousel/f$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/carousel/f;-><init>(FLjava/util/List;II)V

    return-void
.end method

.method static m(Lcom/google/android/material/carousel/f;Lcom/google/android/material/carousel/f;F)Lcom/google/android/material/carousel/f;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->f()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/f;->f()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/f;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/f$c;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/f$c;

    invoke-static {v4, v5, p2}, Lcom/google/android/material/carousel/f$c;->a(Lcom/google/android/material/carousel/f$c;Lcom/google/android/material/carousel/f$c;F)Lcom/google/android/material/carousel/f$c;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/f;->b()I

    move-result v1

    invoke-static {v0, v1, p2}, Loa/a;->c(IIF)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/carousel/f;->i()I

    move-result p1

    invoke-static {v1, p1, p2}, Loa/a;->c(IIF)I

    move-result p1

    new-instance p2, Lcom/google/android/material/carousel/f;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->f()F

    move-result p0

    invoke-direct {p2, p0, v2, v0, p1}, Lcom/google/android/material/carousel/f;-><init>(FLjava/util/List;II)V

    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines being linearly interpolated must have the same number of keylines."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines being linearly interpolated must have the same item size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static n(Lcom/google/android/material/carousel/f;F)Lcom/google/android/material/carousel/f;
    .locals 11

    new-instance v6, Lcom/google/android/material/carousel/f$b;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->f()F

    move-result v0

    invoke-direct {v6, v0, p1}, Lcom/google/android/material/carousel/f$b;-><init>(FF)V

    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->j()Lcom/google/android/material/carousel/f$c;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/f$c;->b:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->j()Lcom/google/android/material/carousel/f$c;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/f$c;->d:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    :goto_0
    if-ltz v9, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/material/carousel/f$c;

    iget v0, v10, Lcom/google/android/material/carousel/f$c;->d:F

    div-float/2addr v0, v7

    add-float v1, p1, v0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->b()I

    move-result v0

    if-lt v9, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/f;->i()I

    move-result v0

    if-gt v9, v0, :cond_0

    move v4, v8

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    iget v2, v10, Lcom/google/android/material/carousel/f$c;->c:F

    iget v3, v10, Lcom/google/android/material/carousel/f$c;->d:F

    iget-boolean v5, v10, Lcom/google/android/material/carousel/f$c;->e:Z

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/f$b;->d(FFFZZ)Lcom/google/android/material/carousel/f$b;

    iget v0, v10, Lcom/google/android/material/carousel/f$c;->d:F

    add-float/2addr p1, v0

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/google/android/material/carousel/f$b;->i()Lcom/google/android/material/carousel/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a()Lcom/google/android/material/carousel/f$c;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    iget v1, p0, Lcom/google/android/material/carousel/f;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/f$c;

    return-object v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/f;->c:I

    return v0
.end method

.method c()Lcom/google/android/material/carousel/f$c;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/f$c;

    return-object v0
.end method

.method d()Lcom/google/android/material/carousel/f$c;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/f$c;

    iget-boolean v2, v1, Lcom/google/android/material/carousel/f$c;->e:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method e()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    iget v1, p0, Lcom/google/android/material/carousel/f;->c:I

    iget v2, p0, Lcom/google/android/material/carousel/f;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method f()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/f;->a:F

    return v0
.end method

.method g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    return-object v0
.end method

.method h()Lcom/google/android/material/carousel/f$c;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    iget v1, p0, Lcom/google/android/material/carousel/f;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/f$c;

    return-object v0
.end method

.method i()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/f;->d:I

    return v0
.end method

.method j()Lcom/google/android/material/carousel/f$c;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/f$c;

    return-object v0
.end method

.method k()Lcom/google/android/material/carousel/f$c;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/f$c;

    iget-boolean v2, v1, Lcom/google/android/material/carousel/f$c;->e:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method l()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/f$c;

    iget-boolean v2, v2, Lcom/google/android/material/carousel/f$c;->e:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/carousel/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    return v0
.end method
