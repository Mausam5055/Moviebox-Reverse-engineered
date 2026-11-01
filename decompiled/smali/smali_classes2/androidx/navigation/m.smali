.class public final Landroidx/navigation/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/navigation/l$a;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/navigation/l$a;

    invoke-direct {v0}, Landroidx/navigation/l$a;-><init>()V

    iput-object v0, p0, Landroidx/navigation/m;->a:Landroidx/navigation/l$a;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/navigation/m;->d:I

    return-void
.end method

.method private final j(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/navigation/m;->e:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/navigation/m;->f:Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pop up to an empty route"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "animBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/navigation/a;

    invoke-direct {v0}, Landroidx/navigation/a;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/navigation/m;->a:Landroidx/navigation/l$a;

    invoke-virtual {v0}, Landroidx/navigation/a;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/navigation/l$a;->b(I)Landroidx/navigation/l$a;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/navigation/a;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/navigation/l$a;->c(I)Landroidx/navigation/l$a;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/navigation/a;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/navigation/l$a;->e(I)Landroidx/navigation/l$a;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/navigation/a;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/navigation/l$a;->f(I)Landroidx/navigation/l$a;

    return-void
.end method

.method public final b()Landroidx/navigation/l;
    .locals 4

    iget-object v0, p0, Landroidx/navigation/m;->a:Landroidx/navigation/l$a;

    invoke-virtual {p0}, Landroidx/navigation/m;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/navigation/l$a;->d(Z)Landroidx/navigation/l$a;

    invoke-virtual {p0}, Landroidx/navigation/m;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/navigation/l$a;->j(Z)Landroidx/navigation/l$a;

    invoke-virtual {p0}, Landroidx/navigation/m;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/m;->e()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/navigation/m;->f:Z

    iget-boolean v3, p0, Landroidx/navigation/m;->g:Z

    invoke-virtual {v0, v1, v2, v3}, Landroidx/navigation/l$a;->h(Ljava/lang/String;ZZ)Landroidx/navigation/l$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/m;->d()I

    move-result v1

    iget-boolean v2, p0, Landroidx/navigation/m;->f:Z

    iget-boolean v3, p0, Landroidx/navigation/m;->g:Z

    invoke-virtual {v0, v1, v2, v3}, Landroidx/navigation/l$a;->g(IZZ)Landroidx/navigation/l$a;

    :goto_0
    invoke-virtual {v0}, Landroidx/navigation/l$a;->a()Landroidx/navigation/l;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/navigation/m;->b:Z

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroidx/navigation/m;->d:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/navigation/m;->c:Z

    return v0
.end method

.method public final g(ILkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "popUpToBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/navigation/m;->i(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/navigation/m;->j(Ljava/lang/String;)V

    new-instance p1, Landroidx/navigation/s;

    invoke-direct {p1}, Landroidx/navigation/s;-><init>()V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/navigation/s;->a()Z

    move-result p2

    iput-boolean p2, p0, Landroidx/navigation/m;->f:Z

    invoke-virtual {p1}, Landroidx/navigation/s;->b()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/navigation/m;->g:Z

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/navigation/m;->b:Z

    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Landroidx/navigation/m;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/navigation/m;->f:Z

    return-void
.end method
