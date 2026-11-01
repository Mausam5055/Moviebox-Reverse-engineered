.class public Lq4/d;
.super Lq4/p;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lq4/p;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ln4/a;
    .locals 2

    new-instance v0, Ln4/f;

    iget-object v1, p0, Lq4/p;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ln4/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic b()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lq4/p;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    invoke-super {p0}, Lq4/p;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lq4/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
