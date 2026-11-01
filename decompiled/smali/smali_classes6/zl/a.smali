.class public Lzl/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/transsion/core/pool/b;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/core/pool/a;->b()Lcom/transsion/core/pool/a;

    move-result-object v0

    iput-object v0, p0, Lzl/a;->a:Lcom/transsion/core/pool/b;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzl/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lwl/b;Lcom/transsion/http/impl/r;)V
    .locals 1

    new-instance v0, Lcom/transsion/http/c;

    invoke-direct {v0, p1, p2}, Lcom/transsion/http/c;-><init>(Lwl/b;Lcom/transsion/http/impl/r;)V

    invoke-virtual {p1}, Lwl/b;->c()Lam/e;

    move-result-object p1

    invoke-virtual {p1}, Lam/e;->m()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzl/a;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lzl/a;->a:Lcom/transsion/core/pool/b;

    invoke-interface {p1, v0}, Lcom/transsion/core/pool/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
