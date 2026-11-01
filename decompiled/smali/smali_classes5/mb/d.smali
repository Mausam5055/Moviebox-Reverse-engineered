.class public abstract synthetic Lmb/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lmb/e;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lmb/b0;->b(Ljava/lang/Class;)Lmb/b0;

    move-result-object p1

    invoke-interface {p0, p1}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lmb/e;Lmb/b0;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lmb/e;->g(Lmb/b0;)Lic/b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lmb/e;Ljava/lang/Class;)Lic/a;
    .locals 0

    invoke-static {p1}, Lmb/b0;->b(Ljava/lang/Class;)Lmb/b0;

    move-result-object p1

    invoke-interface {p0, p1}, Lmb/e;->h(Lmb/b0;)Lic/a;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lmb/e;Ljava/lang/Class;)Lic/b;
    .locals 0

    invoke-static {p1}, Lmb/b0;->b(Ljava/lang/Class;)Lmb/b0;

    move-result-object p1

    invoke-interface {p0, p1}, Lmb/e;->g(Lmb/b0;)Lic/b;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lmb/e;Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    invoke-static {p1}, Lmb/b0;->b(Ljava/lang/Class;)Lmb/b0;

    move-result-object p1

    invoke-interface {p0, p1}, Lmb/e;->e(Lmb/b0;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lmb/e;Lmb/b0;)Ljava/util/Set;
    .locals 0

    invoke-interface {p0, p1}, Lmb/e;->b(Lmb/b0;)Lic/b;

    move-result-object p0

    invoke-interface {p0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
