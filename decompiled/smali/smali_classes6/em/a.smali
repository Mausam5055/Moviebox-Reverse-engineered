.class public Lem/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/json/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/json/m;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    const/4 p3, 0x1

    const/4 v0, 0x0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/json/m;->d()Lcom/transsion/json/q;

    move-result-object v1

    const-string v2, "values"

    invoke-virtual {v1, v2}, Lcom/transsion/json/q;->a(Ljava/lang/String;)Lcom/transsion/json/q;

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p4

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/json/m;->d()Lcom/transsion/json/q;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/transsion/json/m;->e(Lcom/transsion/json/q;)Ljava/lang/Class;

    move-result-object p4

    :goto_0
    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    move v2, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3, p4}, Lcom/transsion/json/m;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, p3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/json/m;->d()Lcom/transsion/json/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/json/q;->d()Ljava/lang/String;

    return-object v1

    :cond_2
    :try_start_1
    new-instance p2, Lcom/transsion/json/k;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p4, "Missing concrete class for array.  You might require a use() method."

    :try_start_2
    invoke-direct {p2, p4}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    new-instance p4, Lcom/transsion/json/k;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, "%s: Could not find class %s"

    :try_start_4
    invoke-virtual {p1}, Lcom/transsion/json/m;->d()Lcom/transsion/json/q;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v3, v4, p3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3, p2}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    invoke-virtual {p1}, Lcom/transsion/json/m;->d()Lcom/transsion/json/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/json/q;->d()Ljava/lang/String;

    throw p2
.end method
