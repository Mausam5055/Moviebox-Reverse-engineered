.class public abstract Lx8/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILjava/lang/Object;Lx8/a;Lx8/c;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    invoke-interface {p2, p1}, Lx8/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p2, p1}, Lx8/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, p1, v1}, Lx8/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    add-int/lit8 p0, p0, -0x1

    if-ge p0, v0, :cond_0

    :cond_1
    return-object v1
.end method
