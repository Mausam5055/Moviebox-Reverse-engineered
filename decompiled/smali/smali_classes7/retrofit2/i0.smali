.class final Lretrofit2/i0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/i0$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Lokhttp3/HttpUrl;

.field final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lokhttp3/Headers;

.field private final g:Lokhttp3/MediaType;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:[Lretrofit2/a0;

.field final l:Z


# direct methods
.method constructor <init>(Lretrofit2/i0$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lretrofit2/i0$a;->b:Ljava/lang/Class;

    iput-object v0, p0, Lretrofit2/i0;->a:Ljava/lang/Class;

    iget-object v0, p1, Lretrofit2/i0$a;->c:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lretrofit2/i0;->b:Ljava/lang/reflect/Method;

    iget-object v0, p1, Lretrofit2/i0$a;->a:Lretrofit2/k0;

    iget-object v0, v0, Lretrofit2/k0;->c:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lretrofit2/i0;->c:Lokhttp3/HttpUrl;

    iget-object v0, p1, Lretrofit2/i0$a;->o:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/i0;->d:Ljava/lang/String;

    iget-object v0, p1, Lretrofit2/i0$a;->s:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/i0;->e:Ljava/lang/String;

    iget-object v0, p1, Lretrofit2/i0$a;->t:Lokhttp3/Headers;

    iput-object v0, p0, Lretrofit2/i0;->f:Lokhttp3/Headers;

    iget-object v0, p1, Lretrofit2/i0$a;->u:Lokhttp3/MediaType;

    iput-object v0, p0, Lretrofit2/i0;->g:Lokhttp3/MediaType;

    iget-boolean v0, p1, Lretrofit2/i0$a;->p:Z

    iput-boolean v0, p0, Lretrofit2/i0;->h:Z

    iget-boolean v0, p1, Lretrofit2/i0$a;->q:Z

    iput-boolean v0, p0, Lretrofit2/i0;->i:Z

    iget-boolean v0, p1, Lretrofit2/i0$a;->r:Z

    iput-boolean v0, p0, Lretrofit2/i0;->j:Z

    iget-object v0, p1, Lretrofit2/i0$a;->w:[Lretrofit2/a0;

    iput-object v0, p0, Lretrofit2/i0;->k:[Lretrofit2/a0;

    iget-boolean p1, p1, Lretrofit2/i0$a;->x:Z

    iput-boolean p1, p0, Lretrofit2/i0;->l:Z

    return-void
.end method

.method static b(Lretrofit2/k0;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/i0;
    .locals 1

    new-instance v0, Lretrofit2/i0$a;

    invoke-direct {v0, p0, p1, p2}, Lretrofit2/i0$a;-><init>(Lretrofit2/k0;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Lretrofit2/i0$a;->b()Lretrofit2/i0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/Object;[Ljava/lang/Object;)Lokhttp3/Request;
    .locals 12

    iget-object v0, p0, Lretrofit2/i0;->k:[Lretrofit2/a0;

    array-length v1, p2

    array-length v2, v0

    if-ne v1, v2, :cond_2

    new-instance v2, Lretrofit2/h0;

    iget-object v4, p0, Lretrofit2/i0;->d:Ljava/lang/String;

    iget-object v5, p0, Lretrofit2/i0;->c:Lokhttp3/HttpUrl;

    iget-object v6, p0, Lretrofit2/i0;->e:Ljava/lang/String;

    iget-object v7, p0, Lretrofit2/i0;->f:Lokhttp3/Headers;

    iget-object v8, p0, Lretrofit2/i0;->g:Lokhttp3/MediaType;

    iget-boolean v9, p0, Lretrofit2/i0;->h:Z

    iget-boolean v10, p0, Lretrofit2/i0;->i:Z

    iget-boolean v11, p0, Lretrofit2/i0;->j:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lretrofit2/h0;-><init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V

    iget-boolean v3, p0, Lretrofit2/i0;->l:Z

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p2, v4

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    aget-object v6, p2, v4

    invoke-virtual {v5, v2, v6}, Lretrofit2/a0;->a(Lretrofit2/h0;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lretrofit2/h0;->k()Lokhttp3/Request$Builder;

    move-result-object p2

    new-instance v0, Lretrofit2/v;

    iget-object v1, p0, Lretrofit2/i0;->a:Ljava/lang/Class;

    iget-object v2, p0, Lretrofit2/i0;->b:Ljava/lang/reflect/Method;

    invoke-direct {v0, v1, p1, v2, v3}, Lretrofit2/v;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;)V

    const-class p1, Lretrofit2/v;

    invoke-virtual {p2, p1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument count ("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") doesn\'t match expected count ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
