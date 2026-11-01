.class public abstract Lxc/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc/h$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/String;Lxc/h$a;Lmb/e;)Lxc/f;
    .locals 0

    invoke-static {p0, p1, p2}, Lxc/h;->d(Ljava/lang/String;Lxc/h$a;Lmb/e;)Lxc/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lmb/c;
    .locals 0

    invoke-static {p0, p1}, Lxc/f;->a(Ljava/lang/String;Ljava/lang/String;)Lxc/f;

    move-result-object p0

    const-class p1, Lxc/f;

    invoke-static {p0, p1}, Lmb/c;->l(Ljava/lang/Object;Ljava/lang/Class;)Lmb/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Lxc/h$a;)Lmb/c;
    .locals 2

    const-class v0, Lxc/f;

    invoke-static {v0}, Lmb/c;->m(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    new-instance v1, Lxc/g;

    invoke-direct {v1, p0, p1}, Lxc/g;-><init>(Ljava/lang/String;Lxc/h$a;)V

    invoke-virtual {v0, v1}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lmb/c$b;->d()Lmb/c;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Ljava/lang/String;Lxc/h$a;Lmb/e;)Lxc/f;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p2, v0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-interface {p1, p2}, Lxc/h$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lxc/f;->a(Ljava/lang/String;Ljava/lang/String;)Lxc/f;

    move-result-object p0

    return-object p0
.end method
