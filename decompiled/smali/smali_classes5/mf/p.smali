.class public Lmf/p;
.super Lmf/j;


# instance fields
.field private d:Lcom/tencent/tinker/android/dex/v$a;

.field private e:Lcom/tencent/tinker/android/dex/v$a;

.field private f:Lcom/tencent/tinker/android/dex/j$h;

.field private g:Lcom/tencent/tinker/android/dex/j$h;


# direct methods
.method public constructor <init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lmf/j;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/p;->d:Lcom/tencent/tinker/android/dex/v$a;

    iput-object p1, p0, Lmf/p;->e:Lcom/tencent/tinker/android/dex/v$a;

    iput-object p1, p0, Lmf/p;->f:Lcom/tencent/tinker/android/dex/j$h;

    iput-object p1, p0, Lmf/p;->g:Lcom/tencent/tinker/android/dex/j$h;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/tencent/tinker/android/dex/j;->h()Lcom/tencent/tinker/android/dex/v;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/v;->p:Lcom/tencent/tinker/android/dex/v$a;

    iput-object p1, p0, Lmf/p;->d:Lcom/tencent/tinker/android/dex/v$a;

    invoke-virtual {p3}, Lcom/tencent/tinker/android/dex/j;->h()Lcom/tencent/tinker/android/dex/v;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/v;->b:Lcom/tencent/tinker/android/dex/v$a;

    iput-object p1, p0, Lmf/p;->e:Lcom/tencent/tinker/android/dex/v$a;

    iget-object p1, p0, Lmf/p;->d:Lcom/tencent/tinker/android/dex/v$a;

    invoke-virtual {p3, p1}, Lcom/tencent/tinker/android/dex/j;->m(Lcom/tencent/tinker/android/dex/v$a;)Lcom/tencent/tinker/android/dex/j$h;

    move-result-object p1

    iput-object p1, p0, Lmf/p;->f:Lcom/tencent/tinker/android/dex/j$h;

    iget-object p1, p0, Lmf/p;->e:Lcom/tencent/tinker/android/dex/v$a;

    invoke-virtual {p3, p1}, Lcom/tencent/tinker/android/dex/j;->m(Lcom/tencent/tinker/android/dex/v$a;)Lcom/tencent/tinker/android/dex/j$h;

    move-result-object p1

    iput-object p1, p0, Lmf/p;->g:Lcom/tencent/tinker/android/dex/j$h;

    :cond_0
    return-void
.end method


# virtual methods
.method protected e(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v$a;
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/j;->h()Lcom/tencent/tinker/android/dex/v;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/v;->p:Lcom/tencent/tinker/android/dex/v$a;

    return-object p1
.end method

.method protected f(Lof/c;II)V
    .locals 0

    invoke-virtual {p1, p2}, Lof/c;->o0(I)V

    return-void
.end method

.method protected bridge synthetic g(Lff/a;)Ljava/lang/Comparable;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/p;->l(Lff/a;)Lcom/tencent/tinker/android/dex/u;

    move-result-object p1

    return-object p1
.end method

.method protected j(Lof/c;IIII)V
    .locals 0

    if-eq p2, p4, :cond_0

    invoke-virtual {p1, p2, p4}, Lof/c;->Y(II)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic k(Ljava/lang/Comparable;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/u;

    invoke-virtual {p0, p1}, Lmf/p;->m(Lcom/tencent/tinker/android/dex/u;)I

    move-result p1

    return p1
.end method

.method protected l(Lff/a;)Lcom/tencent/tinker/android/dex/u;
    .locals 0

    invoke-virtual {p1}, Lff/a;->E()Lcom/tencent/tinker/android/dex/u;

    move-result-object p1

    return-object p1
.end method

.method protected m(Lcom/tencent/tinker/android/dex/u;)I
    .locals 2

    iget-object v0, p0, Lmf/p;->f:Lcom/tencent/tinker/android/dex/j$h;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dex/j$h;->j0(Lcom/tencent/tinker/android/dex/u;)I

    move-result p1

    iget-object v0, p0, Lmf/p;->g:Lcom/tencent/tinker/android/dex/j$h;

    invoke-virtual {v0, p1}, Lff/a;->c0(I)V

    iget-object v0, p0, Lmf/p;->d:Lcom/tencent/tinker/android/dex/v$a;

    iget v1, v0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    iget-object v0, p0, Lmf/p;->e:Lcom/tencent/tinker/android/dex/v$a;

    iget v1, v0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    return p1
.end method
