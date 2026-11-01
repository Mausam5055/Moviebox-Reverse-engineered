.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/thrid/okhttp/r$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/r;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;

.field private final c:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

.field private final d:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

.field private final e:I

.field private final f:Lcom/mbridge/msdk/thrid/okhttp/w;

.field private final g:Lcom/mbridge/msdk/thrid/okhttp/d;

.field private final h:Lcom/mbridge/msdk/thrid/okhttp/n;

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;ILcom/mbridge/msdk/thrid/okhttp/w;Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/n;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/r;",
            ">;",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;",
            "I",
            "Lcom/mbridge/msdk/thrid/okhttp/w;",
            "Lcom/mbridge/msdk/thrid/okhttp/d;",
            "Lcom/mbridge/msdk/thrid/okhttp/n;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;

    iput-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    iput p5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e:I

    iput-object p6, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->f:Lcom/mbridge/msdk/thrid/okhttp/w;

    iput-object p7, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->g:Lcom/mbridge/msdk/thrid/okhttp/d;

    iput-object p8, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->h:Lcom/mbridge/msdk/thrid/okhttp/n;

    iput p9, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->i:I

    iput p10, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->j:I

    iput p11, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->k:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->i:I

    return v0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->a(Lcom/mbridge/msdk/thrid/okhttp/w;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;)Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/w;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;)Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e:I

    iget-object v2, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget v1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->l:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->l:I

    iget-object v1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/thrid/okhttp/w;->g()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->a(Lcom/mbridge/msdk/thrid/okhttp/q;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->a:Ljava/util/List;

    iget v5, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e:I

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->l:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->a:Ljava/util/List;

    iget v6, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e:I

    sub-int/2addr v6, v2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    new-instance v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;

    iget-object v6, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->a:Ljava/util/List;

    iget v5, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e:I

    add-int/lit8 v10, v5, 0x1

    iget-object v12, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->g:Lcom/mbridge/msdk/thrid/okhttp/d;

    iget-object v13, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->h:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget v14, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->i:I

    iget v15, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->j:I

    iget v11, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->k:I

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v16, v11

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v16}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;-><init>(Ljava/util/List;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;ILcom/mbridge/msdk/thrid/okhttp/w;Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/n;III)V

    iget-object v5, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->a:Ljava/util/List;

    iget v6, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/thrid/okhttp/r;

    invoke-interface {v5, v1}, Lcom/mbridge/msdk/thrid/okhttp/r;->a(Lcom/mbridge/msdk/thrid/okhttp/r$a;)Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object v6

    if-eqz p3, :cond_5

    iget v7, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e:I

    add-int/2addr v7, v2

    iget-object v8, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget v1, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->l:I

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    const-string v1, "interceptor "

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v6

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->j:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->k:I

    return v0
.end method

.method public d()Lcom/mbridge/msdk/thrid/okhttp/w;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->f:Lcom/mbridge/msdk/thrid/okhttp/w;

    return-object v0
.end method

.method public e()Lcom/mbridge/msdk/thrid/okhttp/d;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->g:Lcom/mbridge/msdk/thrid/okhttp/d;

    return-object v0
.end method

.method public f()Lcom/mbridge/msdk/thrid/okhttp/g;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    return-object v0
.end method

.method public g()Lcom/mbridge/msdk/thrid/okhttp/n;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->h:Lcom/mbridge/msdk/thrid/okhttp/n;

    return-object v0
.end method

.method public h()Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    return-object v0
.end method

.method public i()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;

    return-object v0
.end method
