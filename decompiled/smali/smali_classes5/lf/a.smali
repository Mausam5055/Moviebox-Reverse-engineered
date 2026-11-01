.class public Llf/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/tencent/tinker/android/dex/j;

.field private final b:Lcom/tencent/tinker/android/dex/j;

.field private final c:Lnf/a;

.field private final d:Lof/c;

.field private e:Lmf/j;

.field private f:Lmf/j;

.field private g:Lmf/j;

.field private h:Lmf/j;

.field private i:Lmf/j;

.field private j:Lmf/j;

.field private k:Lmf/j;

.field private l:Lmf/j;

.field private m:Lmf/j;

.field private n:Lmf/j;

.field private o:Lmf/j;

.field private p:Lmf/j;

.field private q:Lmf/j;

.field private r:Lmf/j;

.field private s:Lmf/j;

.field private t:Lmf/j;

.field private u:Lmf/j;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/android/dex/j;Lnf/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iput-object p2, p0, Llf/a;->c:Lnf/a;

    new-instance p1, Lcom/tencent/tinker/android/dex/j;

    invoke-virtual {p2}, Lnf/a;->n()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/tencent/tinker/android/dex/j;-><init>(I)V

    iput-object p1, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    new-instance p1, Lof/c;

    invoke-direct {p1}, Lof/c;-><init>()V

    iput-object p1, p0, Llf/a;->d:Lof/c;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Lcom/tencent/tinker/android/dex/j;

    invoke-direct {v0, p1}, Lcom/tencent/tinker/android/dex/j;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lnf/a;

    invoke-direct {p1, p2}, Lnf/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p1}, Llf/a;-><init>(Lcom/tencent/tinker/android/dex/j;Lnf/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v1}, Llf/a;->b(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lpf/b;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lpf/b;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Llf/a;->c:Lnf/a;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lnf/a;->y()S

    move-result v3

    if-le v3, v2, :cond_1

    iget-object v3, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    invoke-virtual {v3}, Lcom/tencent/tinker/android/dex/j;->h()Lcom/tencent/tinker/android/dex/v;

    move-result-object v3

    iget v3, v3, Lcom/tencent/tinker/android/dex/v;->v:I

    iget-object v4, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v4}, Lnf/a;->b()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "old dex version mismatch! expetced: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v3, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    invoke-virtual {v3, v1}, Lcom/tencent/tinker/android/dex/j;->f(Z)[B

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v4, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v4}, Lnf/a;->c()[B

    move-result-object v4

    invoke-static {v3, v4}, Lgf/c;->d([B[B)I

    move-result v5

    if-nez v5, :cond_6

    iget-object v3, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    invoke-virtual {v3}, Lcom/tencent/tinker/android/dex/j;->h()Lcom/tencent/tinker/android/dex/v;

    move-result-object v3

    iget-object v4, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v4}, Lnf/a;->m()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/android/dex/v;->v:I

    iget-object v4, v3, Lcom/tencent/tinker/android/dex/v;->a:Lcom/tencent/tinker/android/dex/v$a;

    iput v1, v4, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iput v0, v4, Lcom/tencent/tinker/android/dex/v$a;->c:I

    iget-object v1, v3, Lcom/tencent/tinker/android/dex/v;->j:Lcom/tencent/tinker/android/dex/v$a;

    iput v0, v1, Lcom/tencent/tinker/android/dex/v$a;->c:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->b:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->v()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->c:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->w()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->k:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->x()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->d:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->t()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->e:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->p()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->f:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->s()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v0}, Lnf/a;->y()S

    move-result v0

    if-le v0, v2, :cond_2

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->h:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->h()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->i:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->r()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    :cond_2
    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->g:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->j()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->j:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->q()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->p:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->u()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->r:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->d()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->m:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->f()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->l:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->e()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->t:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->g()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->s:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->o()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->q:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->l()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->o:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->k()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->n:Lcom/tencent/tinker/android/dex/v$a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v1}, Lnf/a;->i()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget-object v0, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v0}, Lnf/a;->n()I

    move-result v0

    iput v0, v3, Lcom/tencent/tinker/android/dex/v;->y:I

    iget-object v0, v3, Lcom/tencent/tinker/android/dex/v;->u:[Lcom/tencent/tinker/android/dex/v$a;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/tencent/tinker/android/dex/v;->a()V

    new-instance v0, Lmf/p;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/p;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->e:Lmf/j;

    new-instance v0, Lmf/q;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/q;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->f:Lmf/j;

    new-instance v0, Lmf/n;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/n;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->g:Lmf/j;

    new-instance v0, Lmf/k;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/k;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->h:Lmf/j;

    new-instance v0, Lmf/m;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/m;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->i:Lmf/j;

    iget-object v0, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v0}, Lnf/a;->y()S

    move-result v0

    if-le v0, v2, :cond_3

    new-instance v0, Lmf/e;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/e;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->j:Lmf/j;

    new-instance v0, Lmf/l;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/l;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->k:Lmf/j;

    :cond_3
    new-instance v0, Lmf/g;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/g;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->l:Lmf/j;

    new-instance v0, Lmf/r;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/r;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->m:Lmf/j;

    new-instance v0, Lmf/b;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/b;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->n:Lmf/j;

    new-instance v0, Lmf/c;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/c;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->o:Lmf/j;

    new-instance v0, Lmf/f;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/f;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->p:Lmf/j;

    new-instance v0, Lmf/h;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/h;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->q:Lmf/j;

    new-instance v0, Lmf/i;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/i;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->r:Lmf/j;

    new-instance v0, Lmf/a;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/a;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->s:Lmf/j;

    new-instance v0, Lmf/o;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/o;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->t:Lmf/j;

    new-instance v0, Lmf/d;

    iget-object v1, p0, Llf/a;->c:Lnf/a;

    iget-object v4, p0, Llf/a;->a:Lcom/tencent/tinker/android/dex/j;

    iget-object v5, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v6, p0, Llf/a;->d:Lof/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lmf/d;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    iput-object v0, p0, Llf/a;->u:Lmf/j;

    iget-object v0, p0, Llf/a;->e:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->f:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->m:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->g:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->h:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->i:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v0}, Lnf/a;->y()S

    move-result v0

    if-le v0, v2, :cond_4

    iget-object v0, p0, Llf/a;->k:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    :cond_4
    iget-object v0, p0, Llf/a;->s:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->o:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->n:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->u:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->r:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->q:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->p:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->t:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->c:Lnf/a;

    invoke-virtual {v0}, Lnf/a;->y()S

    move-result v0

    if-le v0, v2, :cond_5

    iget-object v0, p0, Llf/a;->j:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    :cond_5
    iget-object v0, p0, Llf/a;->l:Lmf/j;

    invoke-virtual {v0}, Lmf/j;->c()V

    iget-object v0, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v1, v3, Lcom/tencent/tinker/android/dex/v;->a:Lcom/tencent/tinker/android/dex/v$a;

    iget v1, v1, Lcom/tencent/tinker/android/dex/v$a;->d:I

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/j;->l(I)Lcom/tencent/tinker/android/dex/j$h;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/tinker/android/dex/v;->f(Lcom/tencent/tinker/android/dex/j$h;)V

    iget-object v0, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    iget-object v1, v3, Lcom/tencent/tinker/android/dex/v;->j:Lcom/tencent/tinker/android/dex/v$a;

    iget v1, v1, Lcom/tencent/tinker/android/dex/v$a;->d:I

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/j;->l(I)Lcom/tencent/tinker/android/dex/j$h;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/tinker/android/dex/v;->g(Lcom/tencent/tinker/android/dex/j$h;)V

    iget-object v0, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/j;->n()V

    iget-object v0, p0, Llf/a;->b:Lcom/tencent/tinker/android/dex/j;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dex/j;->o(Ljava/io/OutputStream;)V

    return-void

    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    aput-object v4, v2, v0

    const-string v0, "old dex signature mismatch! expected: %s, actual: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "failed to compute old dex\'s signature."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "patch file is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
