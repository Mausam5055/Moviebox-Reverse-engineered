.class public Lorg/mvel2/ast/Proto$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Lorg/mvel2/ast/Proto;

.field private b:Lorg/mvel2/integration/VariableResolverFactory;

.field private c:Lorg/mvel2/util/q;

.field final synthetic d:Lorg/mvel2/ast/Proto;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/ast/Proto;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 3

    iput-object p1, p0, Lorg/mvel2/ast/Proto$b;->d:Lorg/mvel2/ast/Proto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mvel2/ast/Proto$b;->a:Lorg/mvel2/ast/Proto;

    new-instance v0, Lorg/mvel2/util/q;

    invoke-direct {v0}, Lorg/mvel2/util/q;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-static {p2}, Lorg/mvel2/ast/Proto;->access$100(Lorg/mvel2/ast/Proto;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/ast/Proto$c;

    invoke-virtual {v0, p0, p3, p4, p5}, Lorg/mvel2/ast/Proto$c;->d(Lorg/mvel2/ast/Proto$b;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/ast/Proto$c;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/mvel2/util/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/mvel2/ast/Proto$ProtoContextFactory;

    iget-object p3, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-direct {p2, p1, p3}, Lorg/mvel2/ast/Proto$ProtoContextFactory;-><init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/util/q;)V

    iput-object p2, p0, Lorg/mvel2/ast/Proto$b;->b:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method static synthetic a(Lorg/mvel2/ast/Proto$b;)Lorg/mvel2/integration/VariableResolverFactory;
    .locals 0

    iget-object p0, p0, Lorg/mvel2/ast/Proto$b;->b:Lorg/mvel2/integration/VariableResolverFactory;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-virtual {v0, p1}, Lorg/mvel2/util/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/ast/Proto$c;

    return-object p1
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-virtual {v0, p1}, Lorg/mvel2/util/q;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-virtual {v0, p1}, Lorg/mvel2/util/q;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;Lorg/mvel2/ast/Proto$c;)Lorg/mvel2/ast/Proto$c;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-virtual {v0, p1, p2}, Lorg/mvel2/util/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/ast/Proto$c;

    return-object p1
.end method

.method public e(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-virtual {v0, p1}, Lorg/mvel2/util/q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/ast/Proto$c;

    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-virtual {v0}, Lorg/mvel2/util/q;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mvel2/ast/Proto$b;->c(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-virtual {v0}, Lorg/mvel2/util/q;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-virtual {v0}, Lorg/mvel2/util/q;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/mvel2/ast/Proto$c;

    invoke-virtual {p0, p1, p2}, Lorg/mvel2/ast/Proto$b;->d(Ljava/lang/String;Lorg/mvel2/ast/Proto$c;)Lorg/mvel2/ast/Proto$c;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mvel2/ast/Proto$b;->e(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-virtual {v0}, Lorg/mvel2/util/q;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/Proto$b;->c:Lorg/mvel2/util/q;

    invoke-virtual {v0}, Lorg/mvel2/util/q;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
