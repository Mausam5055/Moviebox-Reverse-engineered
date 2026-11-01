.class public Lcom/transsion/json/b/p;
.super Ljava/util/concurrent/ConcurrentHashMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/json/b/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/Class;",
        "Lcom/transsion/json/b/n;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/transsion/json/b/p;

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/json/b/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/json/b/p;->a:Lcom/transsion/json/b/p;

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Lcom/transsion/json/b/p$a;)Lcom/transsion/json/b/n;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eq p1, p2, :cond_1

    invoke-virtual {p3, v1}, Lcom/transsion/json/b/p$a;->a(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/json/b/n;

    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3, v1}, Lcom/transsion/json/b/p$a;->a(Z)V

    const-class p1, Ljava/util/Arrays;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/json/b/n;

    return-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    invoke-direct {p0, v3, p2, p3}, Lcom/transsion/json/b/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/transsion/json/b/p$a;)Lcom/transsion/json/b/n;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/json/b/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/transsion/json/b/p$a;)Lcom/transsion/json/b/n;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/transsion/json/b/n;)Lcom/transsion/json/b/n;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/json/b/p;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public a(Ljava/lang/Object;)Lcom/transsion/json/b/n;
    .locals 4

    new-instance v0, Lcom/transsion/json/b/p$a;

    invoke-direct {v0, p0}, Lcom/transsion/json/b/p$a;-><init>(Lcom/transsion/json/b/p;)V

    if-nez p1, :cond_0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1, v1, v0}, Lcom/transsion/json/b/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/transsion/json/b/p$a;)Lcom/transsion/json/b/n;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/transsion/json/b/p;->a:Lcom/transsion/json/b/p;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Lcom/transsion/json/b/p;->a(Ljava/lang/Object;)Lcom/transsion/json/b/n;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/transsion/json/b/p;->a(Ljava/lang/Class;Lcom/transsion/json/b/n;)Lcom/transsion/json/b/n;

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/json/b/p$a;->b()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/transsion/json/b/p;->a(Ljava/lang/Class;Lcom/transsion/json/b/n;)Lcom/transsion/json/b/n;

    :cond_3
    return-object v2
.end method
