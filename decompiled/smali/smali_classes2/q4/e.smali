.class public Lq4/e;
.super Ljava/lang/Object;

# interfaces
.implements Lq4/o;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq4/e;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ln4/a;
    .locals 2

    iget-object v0, p0, Lq4/e;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw4/a;

    invoke-virtual {v0}, Lw4/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ln4/k;

    iget-object v1, p0, Lq4/e;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ln4/k;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Ln4/j;

    iget-object v1, p0, Lq4/e;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ln4/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lq4/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Lq4/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lq4/e;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw4/a;

    invoke-virtual {v0}, Lw4/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method
