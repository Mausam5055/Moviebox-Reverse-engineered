.class public Lcom/transsion/json/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:Lcom/transsion/json/c;

.field private d:Ljava/lang/Class;

.field protected final e:Ljava/lang/reflect/Field;

.field protected f:Ljava/lang/reflect/Method;

.field protected g:Ljava/lang/reflect/Method;

.field protected final h:Ljava/util/Map;

.field protected i:Lcom/transsion/json/g;

.field protected j:Lcom/transsion/json/g;

.field protected k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/json/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/d;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/json/d;->i:Lcom/transsion/json/g;

    iput-object v0, p0, Lcom/transsion/json/d;->j:Lcom/transsion/json/g;

    iput-object v0, p0, Lcom/transsion/json/d;->k:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/transsion/json/d;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    invoke-virtual {p2, p1}, Lcom/transsion/json/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_0

    const-class p2, Lfm/a;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lfm/a;

    invoke-direct {p0, p1}, Lcom/transsion/json/d;->c(Lfm/a;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Lcom/transsion/json/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/d;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/json/d;->i:Lcom/transsion/json/g;

    iput-object v0, p0, Lcom/transsion/json/d;->j:Lcom/transsion/json/g;

    iput-object v0, p0, Lcom/transsion/json/d;->k:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/json/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    iput-object p1, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    const-class p2, Lfm/a;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lfm/a;

    invoke-direct {p0, p1}, Lcom/transsion/json/d;->c(Lfm/a;)V

    :cond_0
    return-void
.end method

.method private c(Lfm/a;)V
    .locals 3

    invoke-interface {p1}, Lfm/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Lfm/a;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/transsion/json/d;->b:Ljava/lang/String;

    invoke-interface {p1}, Lfm/a;->transformer()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/json/b/n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/transsion/json/g;

    invoke-interface {p1}, Lfm/a;->transformer()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/json/g;-><init>(Ljava/lang/Class;)V

    :goto_1
    iput-object v0, p0, Lcom/transsion/json/d;->i:Lcom/transsion/json/g;

    invoke-interface {p1}, Lfm/a;->objectFactory()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/json/o;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/transsion/json/g;

    invoke-interface {p1}, Lfm/a;->objectFactory()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/transsion/json/g;-><init>(Ljava/lang/Class;)V

    :goto_2
    iput-object v2, p0, Lcom/transsion/json/d;->j:Lcom/transsion/json/g;

    invoke-interface {p1}, Lfm/a;->include()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/json/d;->k:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/json/d;->i()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v1

    :goto_0
    new-instance v0, Lcom/transsion/json/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while reading property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/reflect/Method;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    :cond_0
    iget-object v1, p0, Lcom/transsion/json/d;->h:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/reflect/Method;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    iput-object p1, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2

    const-class v0, Lfm/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lfm/a;

    invoke-direct {p0, p1}, Lcom/transsion/json/d;->c(Lfm/a;)V

    :cond_2
    return-void
.end method

.method public g()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public h()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public i()Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/json/c;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/json/c;->f(Ljava/lang/String;)Lcom/transsion/json/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/json/d;->i()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public j()Lcom/transsion/json/b/n;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/d;->i:Lcom/transsion/json/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/json/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/json/b/n;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k()Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, Lcom/transsion/json/d;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/d;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/transsion/json/d;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/json/c;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/json/c;->f(Ljava/lang/String;)Lcom/transsion/json/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/json/d;->k()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/json/d;->g:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public l()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/d;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected m()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/json/d;->i()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/json/d;->k()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/json/d;->i()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/json/d;->k()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
