.class public Landroidx/lifecycle/z;
.super Landroidx/lifecycle/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/z$a;
    }
.end annotation


# instance fields
.field private l:Lk/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/b0;-><init>()V

    new-instance v0, Lk/b;

    invoke-direct {v0}, Lk/b;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/z;->l:Lk/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lk/b;

    invoke-direct {p1}, Lk/b;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/z;->l:Lk/b;

    return-void
.end method


# virtual methods
.method protected l()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/z;->l:Lk/b;

    invoke-virtual {v0}, Lk/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/z$a;

    invoke-virtual {v1}, Landroidx/lifecycle/z$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected m()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/z;->l:Lk/b;

    invoke-virtual {v0}, Lk/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/z$a;

    invoke-virtual {v1}, Landroidx/lifecycle/z$a;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/c0;)V
    .locals 2

    if-eqz p1, :cond_4

    new-instance v0, Landroidx/lifecycle/z$a;

    invoke-direct {v0, p1, p2}, Landroidx/lifecycle/z$a;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/c0;)V

    iget-object v1, p0, Landroidx/lifecycle/z;->l:Lk/b;

    invoke-virtual {v1, p1, v0}, Lk/b;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/z$a;

    if-eqz p1, :cond_1

    iget-object v1, p1, Landroidx/lifecycle/z$a;->b:Landroidx/lifecycle/c0;

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This source was already added with the different observer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroidx/lifecycle/z$a;->a()V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "source cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
