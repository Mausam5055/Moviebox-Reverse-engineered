.class public Lvf/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/tinker/entry/ApplicationLike;Luf/c;Luf/d;Lsf/b;Ljava/lang/Class;Ltf/a;)Lvf/a;
    .locals 2

    new-instance v0, Lvf/a$b;

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lvf/a$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getTinkerFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lvf/a$b;->e(I)Lvf/a$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvf/a$b;->c(Luf/c;)Lvf/a$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lvf/a$b;->b(Lsf/b;)Lvf/a$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvf/a$b;->d(Luf/d;)Lvf/a$b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getTinkerLoadVerifyFlag()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvf/a$b;->f(Ljava/lang/Boolean;)Lvf/a$b;

    move-result-object p1

    invoke-virtual {p1}, Lvf/a$b;->a()Lvf/a;

    move-result-object p1

    invoke-static {p1}, Lvf/a;->d(Lvf/a;)V

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getTinkerResultIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0, p4, p5}, Lvf/a;->n(Landroid/content/Intent;Ljava/lang/Class;Ltf/a;)V

    return-object p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object p0

    invoke-virtual {p0}, Lvf/a;->j()Lsf/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lsf/b;->a(Ljava/lang/String;)I

    return-void
.end method
