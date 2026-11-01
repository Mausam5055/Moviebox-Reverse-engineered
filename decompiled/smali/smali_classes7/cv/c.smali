.class public Lcv/c;
.super Lcom/transsion/transfer/androidasync/http/server/p;

# interfaces
.implements Lcv/a;


# instance fields
.field i:Lcom/transsion/transfer/androidasync/v;

.field j:Lcom/transsion/transfer/androidasync/http/Headers;

.field k:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field l:Lcv/d;

.field m:Ljava/lang/String;

.field n:I

.field o:I

.field private p:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/server/p;-><init>()V

    const-string v0, "multipart/form-data"

    iput-object v0, p0, Lcv/c;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/server/p;-><init>()V

    const-string v0, "multipart/form-data"

    iput-object v0, p0, Lcv/c;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object p1

    const-string v0, "boundary"

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "No boundary found for multipart/form-data"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/server/p;->T(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
    .locals 3

    iget-object p1, p0, Lcv/c;->p:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/transsion/transfer/androidasync/future/Continuation;

    new-instance v0, Lcv/c$b;

    invoke-direct {v0, p0, p3}, Lcv/c$b;-><init>(Lcv/c;Lbv/a;)V

    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/future/Continuation;-><init>(Lbv/a;)V

    iget-object p3, p0, Lcv/c;->p:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcv/d;

    new-instance v1, Lcv/c$e;

    invoke-direct {v1, p0, v0, p2}, Lcv/c$e;-><init>(Lcv/c;Lcv/d;Lcom/transsion/transfer/androidasync/s;)V

    invoke-virtual {p1, v1}, Lcom/transsion/transfer/androidasync/future/Continuation;->add(Lbv/c;)Lcom/transsion/transfer/androidasync/future/Continuation;

    move-result-object v1

    new-instance v2, Lcv/c$d;

    invoke-direct {v2, p0, v0, p2}, Lcv/c$d;-><init>(Lcv/c;Lcv/d;Lcom/transsion/transfer/androidasync/s;)V

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/future/Continuation;->add(Lbv/c;)Lcom/transsion/transfer/androidasync/future/Continuation;

    move-result-object v0

    new-instance v1, Lcv/c$c;

    invoke-direct {v1, p0, p2}, Lcv/c$c;-><init>(Lcv/c;Lcom/transsion/transfer/androidasync/s;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/future/Continuation;->add(Lbv/c;)Lcom/transsion/transfer/androidasync/future/Continuation;

    goto :goto_0

    :cond_1
    new-instance p3, Lcv/c$f;

    invoke-direct {p3, p0, p2}, Lcv/c$f;-><init>(Lcv/c;Lcom/transsion/transfer/androidasync/s;)V

    invoke-virtual {p1, p3}, Lcom/transsion/transfer/androidasync/future/Continuation;->add(Lbv/c;)Lcom/transsion/transfer/androidasync/future/Continuation;

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/future/Continuation;->start()Lcom/transsion/transfer/androidasync/future/Continuation;

    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected R()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->R()V

    invoke-virtual {p0}, Lcv/c;->W()V

    return-void
.end method

.method protected S()V
    .locals 3

    new-instance v0, Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Headers;-><init>()V

    new-instance v1, Lcom/transsion/transfer/androidasync/v;

    invoke-direct {v1}, Lcom/transsion/transfer/androidasync/v;-><init>()V

    iput-object v1, p0, Lcv/c;->i:Lcom/transsion/transfer/androidasync/v;

    new-instance v2, Lcv/c$a;

    invoke-direct {v2, p0, v0}, Lcv/c$a;-><init>(Lcv/c;Lcom/transsion/transfer/androidasync/http/Headers;)V

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/v;->a(Lcom/transsion/transfer/androidasync/v$a;)V

    iget-object v0, p0, Lcv/c;->i:Lcom/transsion/transfer/androidasync/v;

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/q;->t(Lbv/d;)V

    return-void
.end method

.method public U(Lcv/d;)V
    .locals 1

    iget-object v0, p0, Lcv/c;->p:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcv/c;->p:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcv/c;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public V()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcv/c;->p:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcv/c;->p:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method W()V
    .locals 4

    iget-object v0, p0, Lcv/c;->k:Lcom/transsion/transfer/androidasync/ByteBufferList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcv/c;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Headers;-><init>()V

    iput-object v0, p0, Lcv/c;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    :cond_1
    iget-object v0, p0, Lcv/c;->k:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->v()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcv/c;->l:Lcv/d;

    invoke-virtual {v1}, Lcv/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "unnamed"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcv/c;->l:Lcv/d;

    invoke-virtual {v1}, Lcv/d;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Lcv/g;

    invoke-direct {v2, v1, v0}, Lcv/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcv/c;->l:Lcv/d;

    iget-object v3, v3, Lcv/d;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    iput-object v3, v2, Lcv/d;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-virtual {p0, v2}, Lcv/c;->U(Lcv/d;)V

    iget-object v2, p0, Lcv/c;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-virtual {v2, v1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    const/4 v0, 0x0

    iput-object v0, p0, Lcv/c;->l:Lcv/d;

    iput-object v0, p0, Lcv/c;->k:Lcom/transsion/transfer/androidasync/ByteBufferList;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->O()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/server/p;->T(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcv/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->O()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/server/p;->T(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcv/c;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcv/d;

    invoke-virtual {v2}, Lcv/d;->b()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/transfer/androidasync/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcv/d;->c()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    int-to-long v4, v1

    invoke-virtual {v2}, Lcv/d;->c()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v1, v6

    const/4 v3, 0x2

    int-to-long v6, v3

    add-long/2addr v1, v6

    add-long/2addr v4, v1

    long-to-int v1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lcv/c;->o:I

    return v1
.end method

.method public r(Lcom/transsion/transfer/androidasync/p;Lbv/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    invoke-virtual {p0, p2}, Lcom/transsion/transfer/androidasync/q;->s(Lbv/a;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcv/c;->V()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcv/d;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "multipart content is empty"

    return-object v0
.end method
