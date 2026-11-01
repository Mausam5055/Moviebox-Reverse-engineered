.class public Lxc/c;
.super Ljava/lang/Object;

# interfaces
.implements Lxc/i;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lxc/d;


# direct methods
.method constructor <init>(Ljava/util/Set;Lxc/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lxc/c;->d(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lxc/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lxc/c;->b:Lxc/d;

    return-void
.end method

.method public static synthetic a(Lmb/e;)Lxc/i;
    .locals 0

    invoke-static {p0}, Lxc/c;->c(Lmb/e;)Lxc/i;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lmb/c;
    .locals 2

    const-class v0, Lxc/i;

    invoke-static {v0}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v0

    const-class v1, Lxc/f;

    invoke-static {v1}, Lmb/r;->o(Ljava/lang/Class;)Lmb/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    new-instance v1, Lxc/b;

    invoke-direct {v1}, Lxc/b;-><init>()V

    invoke-virtual {v0, v1}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic c(Lmb/e;)Lxc/i;
    .locals 2

    new-instance v0, Lxc/c;

    const-class v1, Lxc/f;

    invoke-interface {p0, v1}, Lmb/e;->d(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-static {}, Lxc/d;->a()Lxc/d;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lxc/c;-><init>(Ljava/util/Set;Lxc/d;)V

    return-object v0
.end method

.method private static d(Ljava/util/Set;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxc/f;

    invoke-virtual {v1}, Lxc/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lxc/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getUserAgent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lxc/c;->b:Lxc/d;

    invoke-virtual {v0}, Lxc/d;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxc/c;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lxc/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxc/c;->b:Lxc/d;

    invoke-virtual {v1}, Lxc/d;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lxc/c;->d(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
