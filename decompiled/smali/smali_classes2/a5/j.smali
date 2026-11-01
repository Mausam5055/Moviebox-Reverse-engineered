.class public La5/j;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;


# static fields
.field private static volatile a:Ljava/lang/Class;

.field private static volatile b:Z

.field private static volatile c:Ljava/lang/reflect/Method;

.field private static volatile d:Ljava/lang/reflect/Method;

.field public static e:La5/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La5/j;

    invoke-direct {v0}, La5/j;-><init>()V

    sput-object v0, La5/j;->e:La5/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 5

    const/4 p3, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p4

    array-length p5, p4

    const/4 v0, 0x1

    if-ne p5, v0, :cond_6

    aget-object p5, p4, p3

    invoke-virtual {p5}, Ljava/lang/Class;->isAnnotation()Z

    move-result p5

    if-eqz p5, :cond_6

    aget-object p4, p4, p3

    sget-object p5, La5/j;->a:Ljava/lang/Class;

    const-string v1, "not support Type Annotation."

    if-nez p5, :cond_0

    sget-boolean p5, La5/j;->b:Z

    if-nez p5, :cond_0

    :try_start_0
    const-string p5, "sun.reflect.annotation.AnnotationType"

    invoke-static {p5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p5

    sput-object p5, La5/j;->a:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sput-boolean v0, La5/j;->b:Z

    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    sget-object p5, La5/j;->a:Ljava/lang/Class;

    if-eqz p5, :cond_5

    sget-object p5, La5/j;->c:Ljava/lang/reflect/Method;

    if-nez p5, :cond_1

    sget-boolean p5, La5/j;->b:Z

    if-nez p5, :cond_1

    :try_start_1
    sget-object p5, La5/j;->a:Ljava/lang/Class;

    const-string v2, "getInstance"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, p3

    invoke-virtual {p5, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    sput-object p5, La5/j;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    sput-boolean v0, La5/j;->b:Z

    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    sget-object p5, La5/j;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez p5, :cond_2

    sget-boolean p5, La5/j;->b:Z

    if-nez p5, :cond_2

    :try_start_2
    sget-object p5, La5/j;->a:Ljava/lang/Class;

    const-string v3, "members"

    invoke-virtual {p5, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    sput-object p5, La5/j;->d:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    sput-boolean v0, La5/j;->b:Z

    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_2
    sget-object p5, La5/j;->c:Ljava/lang/reflect/Method;

    if-eqz p5, :cond_4

    sget-boolean p5, La5/j;->b:Z

    if-nez p5, :cond_4

    :try_start_3
    sget-object p5, La5/j;->c:Ljava/lang/reflect/Method;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p4, v3, p3

    invoke-virtual {p5, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    sget-object p4, La5/j;->d:Ljava/lang/reflect/Method;

    invoke-virtual {p4, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    new-instance p4, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p5

    invoke-direct {p4, p5}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object p5, v2

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p5}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-virtual {p1, p4}, La5/o0;->A(Ljava/lang/Object;)V

    return-void

    :catchall_3
    move-exception p1

    sput-boolean v0, La5/j;->b:Z

    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_4
    move-exception p1

    sput-boolean v0, La5/j;->b:Z

    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method
