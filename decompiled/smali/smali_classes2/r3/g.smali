.class public final Lr3/g;
.super Ljava/lang/Object;

# interfaces
.implements Li3/s;


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private final b:Lr3/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/j0;

    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object v0, p0, Lr3/g;->a:Landroidx/media3/common/util/j0;

    new-instance v0, Lr3/b;

    invoke-direct {v0}, Lr3/b;-><init>()V

    iput-object v0, p0, Lr3/g;->b:Lr3/b;

    return-void
.end method

.method private static d(Landroidx/media3/common/util/j0;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    if-ne v2, v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->s()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/j0;->W(I)V

    return v2
.end method

.method private static e(Landroidx/media3/common/util/j0;)V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a([BIILi3/s$b;Landroidx/media3/common/util/m;)V
    .locals 1

    iget-object v0, p0, Lr3/g;->a:Landroidx/media3/common/util/j0;

    add-int/2addr p3, p2

    invoke-virtual {v0, p1, p3}, Landroidx/media3/common/util/j0;->U([BI)V

    iget-object p1, p0, Lr3/g;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->W(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p2, p0, Lr3/g;->a:Landroidx/media3/common/util/j0;

    invoke-static {p2}, Lr3/h;->e(Landroidx/media3/common/util/j0;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object p2, p0, Lr3/g;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->s()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    iget-object p3, p0, Lr3/g;->a:Landroidx/media3/common/util/j0;

    invoke-static {p3}, Lr3/g;->d(Landroidx/media3/common/util/j0;)I

    move-result p3

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lr3/g;->a:Landroidx/media3/common/util/j0;

    invoke-static {p3}, Lr3/g;->e(Landroidx/media3/common/util/j0;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lr3/g;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p3}, Landroidx/media3/common/util/j0;->s()Ljava/lang/String;

    iget-object p3, p0, Lr3/g;->b:Lr3/b;

    iget-object v0, p0, Lr3/g;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p3, v0}, Lr3/b;->d(Landroidx/media3/common/util/j0;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A style block was found after the first cue."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lr3/g;->a:Landroidx/media3/common/util/j0;

    invoke-static {p3, p1}, Lr3/e;->n(Landroidx/media3/common/util/j0;Ljava/util/List;)Lr3/d;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance p1, Lr3/j;

    invoke-direct {p1, p2}, Lr3/j;-><init>(Ljava/util/List;)V

    invoke-static {p1, p4, p5}, Li3/i;->c(Li3/k;Li3/s$b;Landroidx/media3/common/util/m;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic b([BII)Li3/k;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Li3/r;->a(Li3/s;[BII)Li3/k;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic reset()V
    .locals 0

    invoke-static {p0}, Li3/r;->b(Li3/s;)V

    return-void
.end method
