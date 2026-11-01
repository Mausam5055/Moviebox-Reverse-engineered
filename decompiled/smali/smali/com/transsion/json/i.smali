.class public Lcom/transsion/json/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/i;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/i;->b:Ljava/util/Map;

    return-void
.end method

.method private a()Lcom/transsion/json/m;
    .locals 4

    new-instance v0, Lcom/transsion/json/m;

    invoke-direct {v0}, Lcom/transsion/json/m;-><init>()V

    iget-object v1, p0, Lcom/transsion/json/i;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iget-object v3, p0, Lcom/transsion/json/i;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/json/o;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/json/m;->b(Ljava/lang/Class;Lcom/transsion/json/o;)Lcom/transsion/json/m;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/json/i;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/json/q;

    iget-object v3, p0, Lcom/transsion/json/i;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/json/o;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/json/m;->a(Lcom/transsion/json/q;Lcom/transsion/json/o;)Lcom/transsion/json/m;

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lcom/transsion/json/i;->a()Lcom/transsion/json/m;

    move-result-object v0

    new-instance v1, Lcom/transsion/json/l;

    invoke-direct {v1, p1}, Lcom/transsion/json/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/json/l;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/transsion/json/m;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
