.class public final Lcom/bykv/vk/openvk/preload/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/a/d$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/bykv/vk/openvk/preload/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "*>;",
            "Lcom/bykv/vk/openvk/preload/a/d$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "*>;",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/bykv/vk/openvk/preload/a/b/b;

.field private final e:Lcom/bykv/vk/openvk/preload/a/b/a/d;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/openvk/preload/a/d;->a:Lcom/bykv/vk/openvk/preload/a/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/b/c;->a:Lcom/bykv/vk/openvk/preload/a/b/c;

    sget-object v2, Lcom/bykv/vk/openvk/preload/a/b;->a:Lcom/bykv/vk/openvk/preload/a/b;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/q;->a:Lcom/bykv/vk/openvk/preload/a/q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bykv/vk/openvk/preload/a/d;-><init>(Lcom/bykv/vk/openvk/preload/a/b/c;Lcom/bykv/vk/openvk/preload/a/c;Ljava/util/Map;ZLcom/bykv/vk/openvk/preload/a/q;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/c;Lcom/bykv/vk/openvk/preload/a/c;Ljava/util/Map;ZLcom/bykv/vk/openvk/preload/a/q;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/b/c;",
            "Lcom/bykv/vk/openvk/preload/a/c;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/a/f<",
            "*>;>;Z",
            "Lcom/bykv/vk/openvk/preload/a/q;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/a/s;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d;->c:Ljava/util/Map;

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/b;

    invoke-direct {v0, p3}, Lcom/bykv/vk/openvk/preload/a/b/b;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d;->d:Lcom/bykv/vk/openvk/preload/a/b/b;

    iput-boolean p4, p0, Lcom/bykv/vk/openvk/preload/a/d;->g:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->B:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/g;->a:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->p:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->g:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->d:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->e:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->f:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/q;->a:Lcom/bykv/vk/openvk/preload/a/q;

    if-ne p5, p4, :cond_0

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->k:Lcom/bykv/vk/openvk/preload/a/r;

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/bykv/vk/openvk/preload/a/d$3;

    invoke-direct {p4}, Lcom/bykv/vk/openvk/preload/a/d$3;-><init>()V

    :goto_0
    sget-object p5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Long;

    invoke-static {p5, p6, p4}, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance p6, Lcom/bykv/vk/openvk/preload/a/d$1;

    invoke-direct {p6}, Lcom/bykv/vk/openvk/preload/a/d$1;-><init>()V

    const-class v1, Ljava/lang/Double;

    invoke-static {p5, v1, p6}, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance p6, Lcom/bykv/vk/openvk/preload/a/d$2;

    invoke-direct {p6}, Lcom/bykv/vk/openvk/preload/a/d$2;-><init>()V

    const-class v1, Ljava/lang/Float;

    invoke-static {p5, v1, p6}, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/bykv/vk/openvk/preload/a/b/a/m;->l:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/bykv/vk/openvk/preload/a/b/a/m;->h:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/bykv/vk/openvk/preload/a/b/a/m;->i:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/bykv/vk/openvk/preload/a/d$4;

    invoke-direct {p5, p4}, Lcom/bykv/vk/openvk/preload/a/d$4;-><init>(Lcom/bykv/vk/openvk/preload/a/r;)V

    invoke-virtual {p5}, Lcom/bykv/vk/openvk/preload/a/r;->a()Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object p5

    const-class p6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p6, p5}, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/bykv/vk/openvk/preload/a/d$5;

    invoke-direct {p5, p4}, Lcom/bykv/vk/openvk/preload/a/d$5;-><init>(Lcom/bykv/vk/openvk/preload/a/r;)V

    invoke-virtual {p5}, Lcom/bykv/vk/openvk/preload/a/r;->a()Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object p4

    const-class p5, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p5, p4}, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->j:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->m:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->q:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->r:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigDecimal;

    sget-object p5, Lcom/bykv/vk/openvk/preload/a/b/a/m;->n:Lcom/bykv/vk/openvk/preload/a/r;

    invoke-static {p4, p5}, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigInteger;

    sget-object p5, Lcom/bykv/vk/openvk/preload/a/b/a/m;->o:Lcom/bykv/vk/openvk/preload/a/r;

    invoke-static {p4, p5}, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->s:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->t:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->v:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->w:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->z:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->u:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->b:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/c;->a:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->y:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/j;->a:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/i;->a:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->x:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/a;->a:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/bykv/vk/openvk/preload/a/b/a/b;

    invoke-direct {p4, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/b;-><init>(Lcom/bykv/vk/openvk/preload/a/b/b;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/bykv/vk/openvk/preload/a/b/a/f;

    invoke-direct {p4, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/f;-><init>(Lcom/bykv/vk/openvk/preload/a/b/b;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/bykv/vk/openvk/preload/a/b/a/d;

    invoke-direct {p4, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/d;-><init>(Lcom/bykv/vk/openvk/preload/a/b/b;)V

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/a/d;->e:Lcom/bykv/vk/openvk/preload/a/b/a/d;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/a/b/a/m;->C:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/bykv/vk/openvk/preload/a/b/a/h;

    invoke-direct {p4, v0, p2, p1}, Lcom/bykv/vk/openvk/preload/a/b/a/h;-><init>(Lcom/bykv/vk/openvk/preload/a/b/b;Lcom/bykv/vk/openvk/preload/a/c;Lcom/bykv/vk/openvk/preload/a/b/c;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/d;->f:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/io/Writer;)Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/d/c;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/a/d/c;-><init>(Ljava/io/Writer;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->c(Z)V

    return-object v0
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/a/j;,
            Lcom/bykv/vk/openvk/preload/a/p;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->p()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/preload/a/d/a;->a(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bykv/vk/openvk/preload/a/d;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/preload/a/d/a;->a(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :catch_2
    move-exception p2

    goto :goto_2

    :catch_3
    move-exception p2

    goto :goto_3

    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AssertionError (GSON pangle-v3200): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :goto_1
    new-instance v1, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-direct {v1, p2}, Lcom/bykv/vk/openvk/preload/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    new-instance v1, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-direct {v1, p2}, Lcom/bykv/vk/openvk/preload/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/preload/a/d/a;->a(Z)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_2
    new-instance v1, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-direct {v1, p2}, Lcom/bykv/vk/openvk/preload/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/preload/a/d/a;->a(Z)V

    throw p2
.end method

.method static a(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d;->c:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/d;->a:Lcom/bykv/vk/openvk/preload/a/c/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/r;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/a/d$a;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    :try_start_0
    new-instance v2, Lcom/bykv/vk/openvk/preload/a/d$a;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/a/d$a;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/a/d;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {v4, p0, p1}, Lcom/bykv/vk/openvk/preload/a/s;->a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Lcom/bykv/vk/openvk/preload/a/d$a;->a(Lcom/bykv/vk/openvk/preload/a/r;)V

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/d;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "GSON (pangle-v3200) cannot handle "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v2
.end method

.method public final a(Lcom/bykv/vk/openvk/preload/a/s;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/a/s;",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/d;->e:Lcom/bykv/vk/openvk/preload/a/b/a/d;

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/a/s;

    if-nez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/bykv/vk/openvk/preload/a/s;->a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "GSON cannot serialize "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/a/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/preload/a/d;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/a/j;,
            Lcom/bykv/vk/openvk/preload/a/p;
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/d/a;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/a/d/a;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->a(Z)V

    invoke-direct {p0, v0, p2}, Lcom/bykv/vk/openvk/preload/a/d;->a(Lcom/bykv/vk/openvk/preload/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/a/d/a;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object p2

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->j:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-ne p2, v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Lcom/bykv/vk/openvk/preload/a/j;

    const-string p2, "JSON document was not fully consumed."

    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/preload/a/j;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/bykv/vk/openvk/preload/a/d/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lcom/bykv/vk/openvk/preload/a/j;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/preload/a/j;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/preload/a/p;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_2
    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    const-string v0, "AssertionError (GSON pangle-v3200): "

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    sget-object p1, Lcom/bykv/vk/openvk/preload/a/k;->a:Lcom/bykv/vk/openvk/preload/a/k;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/a/d;->a(Ljava/io/Writer;)Lcom/bykv/vk/openvk/preload/a/d/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/a/d/c;->a()Z

    move-result v5

    invoke-virtual {v4, v2}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(Z)V

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/a/d/c;->b()Z

    move-result v2

    iget-boolean v6, p0, Lcom/bykv/vk/openvk/preload/a/d;->g:Z

    invoke-virtual {v4, v6}, Lcom/bykv/vk/openvk/preload/a/d/c;->b(Z)V

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/a/d/c;->c()Z

    move-result v6

    invoke-virtual {v4, v1}, Lcom/bykv/vk/openvk/preload/a/d/c;->c(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, v4}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/a/i;Lcom/bykv/vk/openvk/preload/a/d/c;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(Z)V

    invoke-virtual {v4, v2}, Lcom/bykv/vk/openvk/preload/a/d/c;->b(Z)V

    invoke-virtual {v4, v6}, Lcom/bykv/vk/openvk/preload/a/d/c;->c(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_3
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_2
    move-exception p1

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/j;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(Z)V

    invoke-virtual {v4, v2}, Lcom/bykv/vk/openvk/preload/a/d/c;->b(Z)V

    invoke-virtual {v4, v6}, Lcom/bykv/vk/openvk/preload/a/d/c;->c(Z)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/j;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    :try_start_5
    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/a/d;->a(Ljava/io/Writer;)Lcom/bykv/vk/openvk/preload/a/d/c;

    move-result-object v5

    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bykv/vk/openvk/preload/a/d;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v3

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/preload/a/d/c;->a()Z

    move-result v6

    invoke-virtual {v5, v2}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(Z)V

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/preload/a/d/c;->b()Z

    move-result v2

    iget-boolean v7, p0, Lcom/bykv/vk/openvk/preload/a/d;->g:Z

    invoke-virtual {v5, v7}, Lcom/bykv/vk/openvk/preload/a/d/c;->b(Z)V

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/preload/a/d/c;->c()Z

    move-result v7

    invoke-virtual {v5, v1}, Lcom/bykv/vk/openvk/preload/a/d/c;->c(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    invoke-virtual {v3, v5, p1}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(Z)V

    invoke-virtual {v5, v2}, Lcom/bykv/vk/openvk/preload/a/d/c;->b(Z)V

    invoke-virtual {v5, v7}, Lcom/bykv/vk/openvk/preload/a/d/c;->c(Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    :try_start_8
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_5
    move-exception p1

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/j;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    :try_start_9
    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(Z)V

    invoke-virtual {v5, v2}, Lcom/bykv/vk/openvk/preload/a/d/c;->b(Z)V

    invoke-virtual {v5, v7}, Lcom/bykv/vk/openvk/preload/a/d/c;->c(Z)V

    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :goto_3
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/j;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:false,factories:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/d;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/d;->d:Lcom/bykv/vk/openvk/preload/a/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
