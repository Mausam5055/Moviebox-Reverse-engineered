.class public final Lcom/tencent/tinker/android/dex/j$h;
.super Lff/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/android/dex/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field private final g:Ljava/lang/String;

.field final synthetic h:Lcom/tencent/tinker/android/dex/j;


# direct methods
.method private constructor <init>(Lcom/tencent/tinker/android/dex/j;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-direct {p0, p3}, Lff/a;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p2, p0, Lcom/tencent/tinker/android/dex/j$h;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tinker/android/dex/j;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/tencent/tinker/android/dex/j$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tinker/android/dex/j$h;-><init>(Lcom/tencent/tinker/android/dex/j;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private p0(Lcom/tencent/tinker/android/dex/v$a;Z)V
    .locals 0

    iget-boolean p1, p1, Lcom/tencent/tinker/android/dex/v$a;->b:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lff/a;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lff/a;->a()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public A()Lcom/tencent/tinker/android/dex/s;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->d:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->A()Lcom/tencent/tinker/android/dex/s;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/tencent/tinker/android/dex/u;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->p:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->E()Lcom/tencent/tinker/android/dex/u;

    move-result-object v0

    return-object v0
.end method

.method public G()Lcom/tencent/tinker/android/dex/w;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->k:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->G()Lcom/tencent/tinker/android/dex/w;

    move-result-object v0

    return-object v0
.end method

.method public O(Lcom/tencent/tinker/android/dex/a;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->r:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->O(Lcom/tencent/tinker/android/dex/a;)I

    move-result p1

    return p1
.end method

.method public P(Lcom/tencent/tinker/android/dex/b;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->m:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->P(Lcom/tencent/tinker/android/dex/b;)I

    move-result p1

    return p1
.end method

.method public Q(Lcom/tencent/tinker/android/dex/c;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->l:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->Q(Lcom/tencent/tinker/android/dex/c;)I

    move-result p1

    return p1
.end method

.method public R(Lcom/tencent/tinker/android/dex/d;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->t:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->R(Lcom/tencent/tinker/android/dex/d;)I

    move-result p1

    return p1
.end method

.method public V(Lcom/tencent/tinker/android/dex/f;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->n:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->V(Lcom/tencent/tinker/android/dex/f;)I

    move-result p1

    return p1
.end method

.method public W(Lcom/tencent/tinker/android/dex/g;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->g:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->W(Lcom/tencent/tinker/android/dex/g;)I

    move-result p1

    return p1
.end method

.method public X(Lcom/tencent/tinker/android/dex/h;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->o:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->X(Lcom/tencent/tinker/android/dex/h;)I

    move-result p1

    return p1
.end method

.method public Y(Lcom/tencent/tinker/android/dex/i;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->q:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->Y(Lcom/tencent/tinker/android/dex/i;)I

    move-result p1

    return p1
.end method

.method public Z(Lcom/tencent/tinker/android/dex/l;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->s:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->Z(Lcom/tencent/tinker/android/dex/l;)I

    move-result p1

    return p1
.end method

.method public a0(Lcom/tencent/tinker/android/dex/o;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->e:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->a0(Lcom/tencent/tinker/android/dex/o;)I

    move-result p1

    return p1
.end method

.method public e0(Lcom/tencent/tinker/android/dex/q;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->f:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->e0(Lcom/tencent/tinker/android/dex/q;)I

    move-result p1

    return p1
.end method

.method public g0(Lcom/tencent/tinker/android/dex/s;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->d:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->g0(Lcom/tencent/tinker/android/dex/s;)I

    move-result p1

    return p1
.end method

.method public h()Lcom/tencent/tinker/android/dex/a;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->r:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->h()Lcom/tencent/tinker/android/dex/a;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/tencent/tinker/android/dex/b;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->m:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->i()Lcom/tencent/tinker/android/dex/b;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/tencent/tinker/android/dex/c;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->l:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->j()Lcom/tencent/tinker/android/dex/c;

    move-result-object v0

    return-object v0
.end method

.method public j0(Lcom/tencent/tinker/android/dex/u;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->p:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->j0(Lcom/tencent/tinker/android/dex/u;)I

    move-result p1

    return p1
.end method

.method public k()Lcom/tencent/tinker/android/dex/d;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->t:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->k()Lcom/tencent/tinker/android/dex/d;

    move-result-object v0

    return-object v0
.end method

.method public l0(Lcom/tencent/tinker/android/dex/w;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->k:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0, p1}, Lff/a;->l0(Lcom/tencent/tinker/android/dex/w;)I

    move-result p1

    return p1
.end method

.method public p()Lcom/tencent/tinker/android/dex/f;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->n:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->p()Lcom/tencent/tinker/android/dex/f;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/tencent/tinker/android/dex/g;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->g:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->q()Lcom/tencent/tinker/android/dex/g;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/tencent/tinker/android/dex/h;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->o:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->r()Lcom/tencent/tinker/android/dex/h;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/tencent/tinker/android/dex/i;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->q:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->s()Lcom/tencent/tinker/android/dex/i;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/tencent/tinker/android/dex/l;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->s:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->t()Lcom/tencent/tinker/android/dex/l;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/tencent/tinker/android/dex/o;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->e:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->u()Lcom/tencent/tinker/android/dex/o;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/tencent/tinker/android/dex/q;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$h;->h:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->f:Lcom/tencent/tinker/android/dex/v$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/j$h;->p0(Lcom/tencent/tinker/android/dex/v$a;Z)V

    invoke-super {p0}, Lff/a;->y()Lcom/tencent/tinker/android/dex/q;

    move-result-object v0

    return-object v0
.end method
