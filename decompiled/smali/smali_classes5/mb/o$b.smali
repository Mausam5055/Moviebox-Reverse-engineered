.class public final Lmb/o$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private d:Lmb/j;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmb/o$b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmb/o$b;->c:Ljava/util/List;

    sget-object v0, Lmb/j;->a:Lmb/j;

    iput-object v0, p0, Lmb/o$b;->d:Lmb/j;

    iput-object p1, p0, Lmb/o$b;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .locals 0

    invoke-static {p0}, Lmb/o$b;->f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public b(Lmb/c;)Lmb/o$b;
    .locals 1

    iget-object v0, p0, Lmb/o$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Lcom/google/firebase/components/ComponentRegistrar;)Lmb/o$b;
    .locals 2

    iget-object v0, p0, Lmb/o$b;->b:Ljava/util/List;

    new-instance v1, Lmb/p;

    invoke-direct {v1, p1}, Lmb/p;-><init>(Lcom/google/firebase/components/ComponentRegistrar;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lmb/o$b;
    .locals 1

    iget-object v0, p0, Lmb/o$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public e()Lmb/o;
    .locals 7

    new-instance v6, Lmb/o;

    iget-object v1, p0, Lmb/o$b;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lmb/o$b;->b:Ljava/util/List;

    iget-object v3, p0, Lmb/o$b;->c:Ljava/util/List;

    iget-object v4, p0, Lmb/o$b;->d:Lmb/j;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmb/o;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lmb/j;Lmb/o$a;)V

    return-object v6
.end method

.method public g(Lmb/j;)Lmb/o$b;
    .locals 0

    iput-object p1, p0, Lmb/o$b;->d:Lmb/j;

    return-object p0
.end method
