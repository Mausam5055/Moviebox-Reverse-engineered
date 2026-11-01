.class public Lq4/i;
.super Ljava/lang/Object;

# interfaces
.implements Lq4/o;


# instance fields
.field private final a:Lq4/b;

.field private final b:Lq4/b;


# direct methods
.method public constructor <init>(Lq4/b;Lq4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq4/i;->a:Lq4/b;

    iput-object p2, p0, Lq4/i;->b:Lq4/b;

    return-void
.end method


# virtual methods
.method public a()Ln4/a;
    .locals 3

    new-instance v0, Ln4/n;

    iget-object v1, p0, Lq4/i;->a:Lq4/b;

    invoke-virtual {v1}, Lq4/b;->d()Ln4/d;

    move-result-object v1

    iget-object v2, p0, Lq4/i;->b:Lq4/b;

    invoke-virtual {v2}, Lq4/b;->d()Ln4/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln4/n;-><init>(Ln4/a;Ln4/a;)V

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lq4/i;->a:Lq4/b;

    invoke-virtual {v0}, Lq4/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq4/i;->b:Lq4/b;

    invoke-virtual {v0}, Lq4/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
