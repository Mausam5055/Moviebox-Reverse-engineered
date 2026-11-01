.class public final Lkotlinx/serialization/json/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Lf00/c;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->e()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/d;->a:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->f()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/d;->b:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->g()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/d;->c:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->l()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/d;->d:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->b()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/d;->e:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->h()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/d;->f:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/d;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->d()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/d;->h:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->k()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/d;->i:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/d;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->a()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/d;->k:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->j()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/d;->l:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->a()Lf00/c;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/d;->m:Lf00/c;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/json/f;
    .locals 15

    iget-boolean v0, p0, Lkotlinx/serialization/json/d;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlinx/serialization/json/d;->j:Ljava/lang/String;

    const-string v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lkotlinx/serialization/json/d;->f:Z

    const-string v1, "    "

    if-nez v0, :cond_3

    iget-object v0, p0, Lkotlinx/serialization/json/d;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Indent should not be specified when default printing mode is used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lkotlinx/serialization/json/d;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lkotlinx/serialization/json/d;->g:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_5

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    const/16 v3, 0xd

    if-eq v2, v3, :cond_5

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    new-instance v0, Lkotlinx/serialization/json/f;

    iget-boolean v3, p0, Lkotlinx/serialization/json/d;->a:Z

    iget-boolean v4, p0, Lkotlinx/serialization/json/d;->c:Z

    iget-boolean v5, p0, Lkotlinx/serialization/json/d;->d:Z

    iget-boolean v6, p0, Lkotlinx/serialization/json/d;->e:Z

    iget-boolean v7, p0, Lkotlinx/serialization/json/d;->f:Z

    iget-boolean v8, p0, Lkotlinx/serialization/json/d;->b:Z

    iget-object v9, p0, Lkotlinx/serialization/json/d;->g:Ljava/lang/String;

    iget-boolean v10, p0, Lkotlinx/serialization/json/d;->h:Z

    iget-boolean v11, p0, Lkotlinx/serialization/json/d;->i:Z

    iget-object v12, p0, Lkotlinx/serialization/json/d;->j:Ljava/lang/String;

    iget-boolean v13, p0, Lkotlinx/serialization/json/d;->k:Z

    iget-boolean v14, p0, Lkotlinx/serialization/json/d;->l:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lkotlinx/serialization/json/f;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZ)V

    return-object v0
.end method

.method public final b()Lf00/c;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/d;->m:Lf00/c;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/d;->e:Z

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/d;->a:Z

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/d;->b:Z

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/d;->c:Z

    return-void
.end method
