.class abstract Lcom/blankj/utilcode/util/e0;
.super Ljava/lang/Object;


# direct methods
.method static A(Landroid/content/Intent;)Z
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/p;->c(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static B()Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/g0;->a()Z

    move-result v0

    return v0
.end method

.method static C()Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/v;->j()Z

    move-result v0

    return v0
.end method

.method static D(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/b0;->f(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static E(Landroid/view/View;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/j;->b(Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method static F(I)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/g0;->b(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static G()V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->f()Ljava/lang/Runnable;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/e0;->H([Ljava/lang/Runnable;)V

    return-void
.end method

.method private static varargs H([Ljava/lang/Runnable;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static I(Lcom/blankj/utilcode/util/Utils$a;)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->u(Lcom/blankj/utilcode/util/Utils$a;)V

    return-void
.end method

.method static J(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method static K(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ThreadUtils;->l(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static L(Landroid/app/Application;)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->y(Landroid/app/Application;)V

    return-void
.end method

.method static M(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->h(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/blankj/utilcode/util/Utils$a;)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->e(Lcom/blankj/utilcode/util/Utils$a;)V

    return-void
.end method

.method static b([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/i;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/n;->c(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static d(F)I
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p0

    return p0
.end method

.method static e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/b0;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static f(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static varargs g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/b0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static h()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static i()I
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    move-result v0

    return v0
.end method

.method static j()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->n()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static k()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/t;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static l(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/n;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static m(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/n;->j(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static n(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/n;->k(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static o(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/p;->b(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static p()I
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    move-result v0

    return v0
.end method

.method static q(Lcom/blankj/utilcode/util/s$a;Lcom/blankj/utilcode/util/Utils$b;)Landroid/app/Notification;
    .locals 0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/s;->a(Lcom/blankj/utilcode/util/s$a;Lcom/blankj/utilcode/util/Utils$b;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static r()Lcom/blankj/utilcode/util/x;
    .locals 1

    const-string v0, "Utils"

    invoke-static {v0}, Lcom/blankj/utilcode/util/x;->a(Ljava/lang/String;)Lcom/blankj/utilcode/util/x;

    move-result-object v0

    return-object v0
.end method

.method static s()I
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v0

    return v0
.end method

.method static t(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/b0;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static u()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->o()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static v(Landroid/app/Application;)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->p(Landroid/app/Application;)V

    return-void
.end method

.method static w(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/a;->c(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static x()Z
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->g:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->q()Z

    move-result v0

    return v0
.end method

.method static y(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/n;->m(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static z()Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->t()Z

    move-result v0

    return v0
.end method
