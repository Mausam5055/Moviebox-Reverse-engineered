.class public Lm4/u;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/c;
.implements Ln4/a$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/List;

.field private final d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field private final e:Ln4/a;

.field private final f:Ln4/a;

.field private final g:Ln4/a;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/ShapeTrimPath;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm4/u;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm4/u;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->g()Z

    move-result v0

    iput-boolean v0, p0, Lm4/u;->b:Z

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->f()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v0

    iput-object v0, p0, Lm4/u;->d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->e()Lq4/b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/b;->d()Ln4/d;

    move-result-object v0

    iput-object v0, p0, Lm4/u;->e:Ln4/a;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->b()Lq4/b;

    move-result-object v1

    invoke-virtual {v1}, Lq4/b;->d()Ln4/d;

    move-result-object v1

    iput-object v1, p0, Lm4/u;->f:Ln4/a;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->d()Lq4/b;

    move-result-object p2

    invoke-virtual {p2}, Lq4/b;->d()Ln4/d;

    move-result-object p2

    iput-object p2, p0, Lm4/u;->g:Ln4/a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {v0, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {v1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lm4/u;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lm4/u;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/a$b;

    invoke-interface {v1}, Ln4/a$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Ln4/a$b;)V
    .locals 1

    iget-object v0, p0, Lm4/u;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public d()Ln4/a;
    .locals 1

    iget-object v0, p0, Lm4/u;->f:Ln4/a;

    return-object v0
.end method

.method public g()Ln4/a;
    .locals 1

    iget-object v0, p0, Lm4/u;->g:Ln4/a;

    return-object v0
.end method

.method public i()Ln4/a;
    .locals 1

    iget-object v0, p0, Lm4/u;->e:Ln4/a;

    return-object v0
.end method

.method j()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    iget-object v0, p0, Lm4/u;->d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lm4/u;->b:Z

    return v0
.end method
