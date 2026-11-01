.class public Lorg/mvel2/optimizers/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = "dynamic"

.field public static b:Ljava/lang/String; = "reflective"

.field private static final c:Ljava/util/logging/Logger;

.field private static d:Ljava/lang/String;

.field private static final e:Ljava/util/Map;

.field private static f:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lorg/mvel2/optimizers/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lorg/mvel2/optimizers/b;->c:Ljava/util/logging/Logger;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/mvel2/optimizers/b;->e:Ljava/util/Map;

    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    sget-object v2, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    new-instance v3, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;

    invoke-direct {v3}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/mvel2/optimizers/b;->a:Ljava/lang/String;

    new-instance v3, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;

    invoke-direct {v3}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "org.mvel2.asm.ClassWriter"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    :goto_0
    const-string v0, "ASM"

    new-instance v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;

    invoke-direct {v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lorg/mvel2/optimizers/b;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "[MVEL] Notice: Possible incorrect version of ASM present (3.0 required).  Disabling JIT compiler.  Reflective Optimizer will be used."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    sput-object v0, Lorg/mvel2/optimizers/b;->d:Ljava/lang/String;

    goto :goto_2

    :catch_0
    sget-object v0, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    sput-object v0, Lorg/mvel2/optimizers/b;->d:Ljava/lang/String;

    :goto_2
    const-string v0, "mvel2.disable.jit"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/mvel2/optimizers/b;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    sget-object v0, Lorg/mvel2/optimizers/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lorg/mvel2/optimizers/b;->e(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/b;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mvel2/optimizers/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mvel2/optimizers/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to instantiate accessor compiler"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c()Lorg/mvel2/optimizers/a;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/b;->e:Ljava/util/Map;

    sget-object v1, Lorg/mvel2/optimizers/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/optimizers/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/optimizers/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to instantiate accessor compiler"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static d()Lorg/mvel2/optimizers/a;
    .locals 3

    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    invoke-static {}, Lorg/mvel2/optimizers/b;->c()Lorg/mvel2/optimizers/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/optimizers/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to instantiate accessor compiler"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/b;->e:Ljava/util/Map;

    sput-object p0, Lorg/mvel2/optimizers/b;->d:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mvel2/optimizers/a;

    invoke-interface {p0}, Lorg/mvel2/optimizers/a;->init()V

    sget-object p0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to instantiate accessor compiler"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static f(Ljava/lang/Class;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "null optimizer"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
