.class public Lmf/b;
.super Lmf/j;


# instance fields
.field private d:Lcom/tencent/tinker/android/dex/v$a;

.field private e:Lcom/tencent/tinker/android/dex/j$h;


# direct methods
.method public constructor <init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lmf/j;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/b;->d:Lcom/tencent/tinker/android/dex/v$a;

    iput-object p1, p0, Lmf/b;->e:Lcom/tencent/tinker/android/dex/j$h;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/tencent/tinker/android/dex/j;->h()Lcom/tencent/tinker/android/dex/v;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/v;->l:Lcom/tencent/tinker/android/dex/v$a;

    iput-object p1, p0, Lmf/b;->d:Lcom/tencent/tinker/android/dex/v$a;

    invoke-virtual {p3, p1}, Lcom/tencent/tinker/android/dex/j;->m(Lcom/tencent/tinker/android/dex/v$a;)Lcom/tencent/tinker/android/dex/j$h;

    move-result-object p1

    iput-object p1, p0, Lmf/b;->e:Lcom/tencent/tinker/android/dex/j$h;

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lof/a;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    check-cast p2, Lcom/tencent/tinker/android/dex/c;

    invoke-virtual {p0, p1, p2}, Lmf/b;->l(Lof/a;Lcom/tencent/tinker/android/dex/c;)Lcom/tencent/tinker/android/dex/c;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v$a;
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/j;->h()Lcom/tencent/tinker/android/dex/v;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/v;->l:Lcom/tencent/tinker/android/dex/v$a;

    return-object p1
.end method

.method protected f(Lof/c;II)V
    .locals 0

    invoke-virtual {p1, p3}, Lof/c;->d0(I)V

    return-void
.end method

.method protected bridge synthetic g(Lff/a;)Ljava/lang/Comparable;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/b;->m(Lff/a;)Lcom/tencent/tinker/android/dex/c;

    move-result-object p1

    return-object p1
.end method

.method protected j(Lof/c;IIII)V
    .locals 0

    if-eq p3, p5, :cond_0

    invoke-virtual {p1, p3, p5}, Lof/c;->N(II)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic k(Ljava/lang/Comparable;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/c;

    invoke-virtual {p0, p1}, Lmf/b;->n(Lcom/tencent/tinker/android/dex/c;)I

    move-result p1

    return p1
.end method

.method protected l(Lof/a;Lcom/tencent/tinker/android/dex/c;)Lcom/tencent/tinker/android/dex/c;
    .locals 0

    invoke-virtual {p1, p2}, Lof/a;->c(Lcom/tencent/tinker/android/dex/c;)Lcom/tencent/tinker/android/dex/c;

    move-result-object p1

    return-object p1
.end method

.method protected m(Lff/a;)Lcom/tencent/tinker/android/dex/c;
    .locals 0

    invoke-virtual {p1}, Lff/a;->j()Lcom/tencent/tinker/android/dex/c;

    move-result-object p1

    return-object p1
.end method

.method protected n(Lcom/tencent/tinker/android/dex/c;)I
    .locals 2

    iget-object v0, p0, Lmf/b;->d:Lcom/tencent/tinker/android/dex/v$a;

    iget v1, v0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    iget-object v0, p0, Lmf/b;->e:Lcom/tencent/tinker/android/dex/j$h;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dex/j$h;->Q(Lcom/tencent/tinker/android/dex/c;)I

    move-result p1

    return p1
.end method
