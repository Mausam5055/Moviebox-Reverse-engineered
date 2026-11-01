.class public abstract Ls/g$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public static a(Ls/g;)Ls/g;
    .locals 0

    return-object p0
.end method

.method public static final b(Ls/g;)Ls/d;
    .locals 0

    invoke-static {p0}, Ls/g;->h(Ls/g;)Ls/d;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ls/g;II)V
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    invoke-static {p0}, Ls/g;->f(Ls/g;)I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already pushed argument "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ls/g$c;->b(Ls/g;)Ls/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Ls/d;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Ls/g;->f(Ls/g;)I

    move-result v0

    or-int/2addr v0, v1

    invoke-static {p0, v0}, Ls/g;->i(Ls/g;I)V

    invoke-static {p0}, Ls/g;->b(Ls/g;)[I

    move-result-object v0

    invoke-static {p0, p1}, Ls/g;->k(Ls/g;I)I

    move-result p0

    aput p2, v0, p0

    return-void
.end method

.method public static final d(Ls/g;ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    invoke-static {p0}, Ls/g;->g(Ls/g;)I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already pushed argument "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ls/g$c;->b(Ls/g;)Ls/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Ls/d;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Ls/g;->g(Ls/g;)I

    move-result v0

    or-int/2addr v0, v1

    invoke-static {p0, v0}, Ls/g;->j(Ls/g;I)V

    invoke-static {p0}, Ls/g;->c(Ls/g;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1}, Ls/g;->l(Ls/g;I)I

    move-result p0

    aput-object p2, v0, p0

    return-void
.end method
