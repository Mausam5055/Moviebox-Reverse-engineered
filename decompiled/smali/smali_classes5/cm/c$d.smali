.class final Lcm/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Lcm/c$a;

.field private final b:Lcm/c$c;

.field private final c:Lcm/f;


# direct methods
.method constructor <init>(Lcm/f;Lcm/c$a;Lcm/c$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/c$d;->c:Lcm/f;

    iput-object p2, p0, Lcm/c$d;->a:Lcm/c$a;

    iput-object p3, p0, Lcm/c$d;->b:Lcm/c$c;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcm/c$d;->c:Lcm/f;

    invoke-interface {v0}, Lcm/f;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcm/c$d;->a:Lcm/c$a;

    invoke-interface {v0}, Lcm/c$a;->create()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "FactoryPools"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created new "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v1, v0, Lcm/c$b;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcm/c$b;

    invoke-interface {v1}, Lcm/c$b;->getVerifier()Lxl/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lxl/k;->a(Z)V

    :cond_1
    return-object v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcm/c$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcm/c$b;

    invoke-interface {v0}, Lcm/c$b;->getVerifier()Lxl/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lxl/k;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcm/c$d;->b:Lcm/c$c;

    invoke-interface {v0, p1}, Lcm/c$c;->reset(Ljava/lang/Object;)V

    iget-object v0, p0, Lcm/c$d;->c:Lcm/f;

    invoke-interface {v0, p1}, Lcm/f;->release(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
