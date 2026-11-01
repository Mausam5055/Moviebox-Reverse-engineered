.class abstract Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Ym;


# static fields
.field private static final Fmk:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected volatile Dq:Ljava/lang/String;

.field protected final EjP:Ljava/util/concurrent/atomic/AtomicLong;

.field protected HiB:Lg6/a;

.field protected volatile Jcg:Ljava/lang/String;

.field protected volatile Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

.field protected volatile TEQ:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;

.field protected final TKC:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected volatile Ym:Z

.field private Zq:I

.field public final aa:J

.field protected final sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

.field private final sef:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected volatile uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

.field protected volatile vS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Fmk:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TKC:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Ym:Z

    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Fmk:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->aa:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sef:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, -0x1

    iput p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Zq:I

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    return-void
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;)I
    .locals 0

    iget p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Zq:I

    return p0
.end method


# virtual methods
.method public EjP()Z
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sef:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected HiB()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;-><init>()V

    throw v0
.end method

.method protected Jcg()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->vS()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;IILjava/lang/String;)Lh6/c;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lh6/d;->a()Lh6/d;

    move-result-object v0

    invoke-virtual {v0}, Lh6/d;->b()Lh6/e;

    move-result-object v0

    new-instance v1, Lh6/b;

    invoke-direct {v1}, Lh6/b;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;->a:Ljava/lang/String;

    iput-object p1, v1, Lh6/b;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, v1, Lh6/b;->a:I

    const-string v3, "HEAD"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x4

    iput p4, v1, Lh6/b;->a:I

    :cond_0
    iget-object p4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->vS:Ljava/util/List;

    const-string v3, "Range"

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;

    iget-object v5, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Connection"

    iget-object v6, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Proxy-Connection"

    iget-object v6, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Host"

    iget-object v6, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;->b:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p2, p3}, Lf6/a;->e(II)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-boolean p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->e:Z

    if-eqz p2, :cond_4

    const-string p2, "Cache-Control"

    const-string p3, "no-cache"

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->j()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    move-result-object p2

    invoke-static {}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->j()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    move-result-object p3

    iget-object p4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    if-nez p4, :cond_5

    const/4 p4, 0x1

    goto :goto_1

    :cond_5
    move p4, p1

    :goto_1
    if-eqz p4, :cond_6

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->c()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/c;

    goto :goto_2

    :cond_6
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->p()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/c;

    :goto_2
    if-eqz p4, :cond_7

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->l()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/c;

    goto :goto_3

    :cond_7
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->n()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/c;

    :goto_3
    iput-object v2, v1, Lh6/b;->e:Ljava/util/Map;

    iget-boolean p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Ym:Z

    if-eqz p2, :cond_8

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Ym:Z

    const/4 p1, 0x0

    return-object p1

    :cond_8
    invoke-interface {v0, v1}, Lh6/e;->a(Lh6/b;)Lh6/c;

    move-result-object p1

    return-object p1
.end method

.method public Sj()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sef:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method

.method protected Sj(II)V
    .locals 4

    if-lez p1, :cond_5

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->f:I

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->vS()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    if-ne v1, v2, :cond_4

    :cond_1
    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    const/16 p2, 0x64

    if-le p1, p2, :cond_2

    move p1, p2

    :cond_2
    monitor-enter p0

    :try_start_0
    iget p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Zq:I

    if-gt p1, p2, :cond_3

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Zq:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj$1;

    invoke-direct {p1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj$1;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;)V

    invoke-static {p1}, Lf6/a;->o(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :goto_0
    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method protected TKC()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sef:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method

.method public sP()Z
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sef:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected vS()I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
