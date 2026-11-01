.class public abstract Landroidx/compose/ui/text/b;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/text/b;->i(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lk0/e1;I)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/b;->j(Lk0/e1;I)I

    move-result p0

    return p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/text/d0;Z)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/b;->k(Landroidx/compose/ui/text/d0;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(I)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/text/b;->l(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic e(I)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/text/b;->m(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic f(I)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/text/b;->n(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic g(I)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/text/b;->o(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic h(I)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/text/b;->p(I)I

    move-result p0

    return p0
.end method

.method private static final i(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/text/Spannable;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    :goto_0
    new-instance v0, Ll0/c;

    invoke-direct {v0}, Ll0/c;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v0, v1, v2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->u(Landroid/text/Spannable;Ljava/lang/Object;II)V

    return-object p0
.end method

.method private static final j(Lk0/e1;I)I
    .locals 4

    invoke-virtual {p0}, Lk0/e1;->l()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lk0/e1;->k(I)F

    move-result v2

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lk0/e1;->l()I

    move-result p0

    return p0
.end method

.method private static final k(Landroidx/compose/ui/text/d0;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->q()J

    move-result-wide v1

    invoke-static {v0}, Lo0/x;->c(I)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lo0/w;->e(JJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->q()J

    move-result-wide v1

    sget-object p1, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {p1}, Lo0/w$a;->a()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lo0/w;->e(JJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->z()I

    move-result p1

    sget-object v1, Landroidx/compose/ui/text/style/h;->b:Landroidx/compose/ui/text/style/h$a;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/h$a;->g()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/ui/text/style/h;->k(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->z()I

    move-result p1

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/h$a;->f()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/ui/text/style/h;->k(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->z()I

    move-result p0

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/h$a;->c()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/h;->k(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final l(I)I
    .locals 3

    sget-object v0, Landroidx/compose/ui/text/style/h;->b:Landroidx/compose/ui/text/style/h$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/h$a;->d()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/h;->k(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/h$a;->e()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/h;->k(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/h$a;->a()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/h;->k(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/h$a;->f()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/h;->k(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    :cond_3
    move p0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/h$a;->b()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/h;->k(II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final m(I)I
    .locals 3

    sget-object v0, Landroidx/compose/ui/text/style/e$b;->a:Landroidx/compose/ui/text/style/e$b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$b$a;->c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/e$b;->e(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$b$a;->b()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/e$b;->e(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$b$a;->a()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/e$b;->e(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x2

    :cond_2
    :goto_0
    return v2
.end method

.method private static final n(I)I
    .locals 2

    sget-object v0, Landroidx/compose/ui/text/style/d;->a:Landroidx/compose/ui/text/style/d$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/d$a;->a()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/d;->e(II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/d$a;->b()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/d;->e(II)Z

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final o(I)I
    .locals 3

    sget-object v0, Landroidx/compose/ui/text/style/e$c;->a:Landroidx/compose/ui/text/style/e$c$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$c$a;->a()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/e$c;->f(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$c$a;->b()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/e$c;->f(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$c$a;->c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/e$c;->f(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$c$a;->d()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/e$c;->f(II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x3

    :cond_3
    :goto_0
    return v2
.end method

.method private static final p(I)I
    .locals 3

    sget-object v0, Landroidx/compose/ui/text/style/e$d;->a:Landroidx/compose/ui/text/style/e$d$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$d$a;->a()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/e$d;->d(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/e$d$a;->b()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/e$d;->d(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method
