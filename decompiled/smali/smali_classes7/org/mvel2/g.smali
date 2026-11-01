.class public Lorg/mvel2/g;
.super Ljava/lang/Object;


# static fields
.field private static final o:[Ljava/lang/Object;

.field private static final p:Ljava/util/Map;

.field private static final q:Ljava/util/Map;

.field private static final r:Ljava/util/Map;

.field private static final s:Ljava/util/Map;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[C

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Class;

.field private k:Z

.field private l:Z

.field private m:Lorg/mvel2/integration/VariableResolverFactory;

.field private n:Lorg/mvel2/ParserContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/mvel2/g;->o:[Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/mvel2/g;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/mvel2/g;->q:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/mvel2/g;->r:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/mvel2/g;->s:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mvel2/g;->a:I

    iput v0, p0, Lorg/mvel2/g;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mvel2/g;->k:Z

    iput-boolean v0, p0, Lorg/mvel2/g;->l:Z

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/g;->d:[C

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/g;->f:I

    iput p1, p0, Lorg/mvel2/g;->e:I

    iput-object p2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    new-instance p1, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;

    invoke-direct {p1}, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;-><init>()V

    iput-object p1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method public constructor <init>([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mvel2/g;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/g;->l:Z

    iput-object p1, p0, Lorg/mvel2/g;->d:[C

    iput p2, p0, Lorg/mvel2/g;->a:I

    iput p2, p0, Lorg/mvel2/g;->c:I

    iput p2, p0, Lorg/mvel2/g;->b:I

    iput p3, p0, Lorg/mvel2/g;->e:I

    add-int/2addr p2, p3

    iput p2, p0, Lorg/mvel2/g;->f:I

    iput-object p4, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iput-object p5, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    iput-object p6, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    iput-object p7, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mvel2/g;->a:I

    iput v0, p0, Lorg/mvel2/g;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mvel2/g;->k:Z

    iput-boolean v0, p0, Lorg/mvel2/g;->l:Z

    iput-object p1, p0, Lorg/mvel2/g;->d:[C

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/g;->f:I

    iput p1, p0, Lorg/mvel2/g;->e:I

    iput-object p2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    iput-object p4, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    iput-object p5, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public static A(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V
    .locals 7

    new-instance v6, Lorg/mvel2/g;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/g;-><init>([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-direct {v6, p3}, Lorg/mvel2/g;->y(Ljava/lang/Object;)V

    return-void
.end method

.method private D()V
    .locals 2

    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->f:I

    if-ge v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->b:I

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mvel2/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->f:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V
    .locals 5

    sget-object v0, Lorg/mvel2/g;->r:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object v2, v3, p2

    invoke-direct {p0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Member;)V
    .locals 2

    sget-object v0, Lorg/mvel2/g;->p:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static c(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Member;)V
    .locals 2

    sget-object v0, Lorg/mvel2/g;->q:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->c:I

    iget v3, p0, Lorg/mvel2/g;->b:I

    invoke-virtual {p0, v3}, Lorg/mvel2/g;->B(I)I

    move-result v3

    iget v4, p0, Lorg/mvel2/g;->c:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private static e(Ljava/lang/Class;Ljava/lang/Integer;)[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/mvel2/g;->r:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 3

    sget-object v0, Lorg/mvel2/g;->s:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_1
    return-object v1
.end method

.method private static g(Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/reflect/Member;
    .locals 1

    sget-object v0, Lorg/mvel2/g;->p:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/WeakHashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Member;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static h(Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/reflect/Member;
    .locals 1

    sget-object v0, Lorg/mvel2/g;->q:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Member;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private j()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    :try_start_0
    sget-boolean v0, Lorg/mvel2/d;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/mvel2/g;->u()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v5, v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v5, v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object v5, v0

    goto/16 :goto_5

    :cond_0
    invoke-direct {p0}, Lorg/mvel2/g;->n()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown exception in expression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->b:I

    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null pointer exception in property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->b:I

    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v0

    :goto_2
    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->c:I

    invoke-static {v0, v1, v2}, Lorg/mvel2/util/f;->a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    move-result-object v0

    throw v0

    :goto_3
    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->e:I

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mvel2/g;->b:I

    :cond_1
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array or collections index out of bounds in property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->b:I

    iget v6, p0, Lorg/mvel2/g;->e:I

    invoke-direct {v2, v3, v4, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->b:I

    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v0

    :goto_4
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->b:I

    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    const-string v2, "could not access property"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v0

    :goto_5
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->b:I

    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    const-string v2, "could not access property"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/mvel2/g;

    invoke-direct {v0, p0, p1}, Lorg/mvel2/g;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0}, Lorg/mvel2/g;->j()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lorg/mvel2/g;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/g;-><init>([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-direct {v6}, Lorg/mvel2/g;->j()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;
    .locals 9

    new-instance v8, Lorg/mvel2/g;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/mvel2/g;-><init>([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-direct {v8}, Lorg/mvel2/g;->j()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private n()Ljava/lang/Object;
    .locals 4

    :goto_0
    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->f:I

    if-ge v0, v1, :cond_b

    invoke-direct {p0}, Lorg/mvel2/g;->w()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/mvel2/g;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/mvel2/g;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/mvel2/g;->t(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    if-nez v0, :cond_6

    invoke-static {}, Lk10/d;->d()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lk10/d;->a()Lk10/c;

    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    throw v1

    :cond_4
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/mvel2/g;->p(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    if-nez v0, :cond_6

    invoke-static {}, Lk10/d;->e()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lk10/d;->b()Lk10/c;

    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    throw v1

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lorg/mvel2/g;->l:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    iput-boolean v2, p0, Lorg/mvel2/g;->l:Z

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    if-nez v0, :cond_a

    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v3, p0, Lorg/mvel2/g;->f:I

    if-lt v0, v3, :cond_9

    goto :goto_2

    :cond_9
    throw v1

    :cond_a
    :goto_2
    iput-boolean v2, p0, Lorg/mvel2/g;->k:Z

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    iget-boolean v0, p0, Lorg/mvel2/g;->k:Z

    if-eqz v0, :cond_2

    const-string v0, "this"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    return-object p1

    :cond_0
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_4

    sget-boolean v2, Lorg/mvel2/d;->j:Z

    if-eqz v2, :cond_3

    const-string v2, "class"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p1

    :cond_3
    move-object v2, p1

    check-cast v2, Ljava/lang/Class;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mvel2/g;->g(Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/reflect/Member;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, p2}, Lorg/mvel2/util/n;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Member;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/mvel2/g;->b(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Member;)V

    move-object v3, v4

    :cond_5
    nop

    instance-of v4, v3, Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/Method;

    sget-object v1, Lorg/mvel2/g;->o:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-instance v1, Lorg/mvel2/CompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name collision between innerclass: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; and bean accessor: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->c:I

    invoke-direct {v1, p1, p2, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_6
    throw v0

    :catch_2
    monitor-enter v3

    :try_start_2
    move-object p2, v3

    check-cast p2, Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object p2, v3

    check-cast p2, Ljava/lang/reflect/Method;

    sget-object v0, Lorg/mvel2/g;->o:[Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object p2, v3

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    monitor-exit v3

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v3

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    throw p1

    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_7
    if-eqz v3, :cond_8

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lorg/mvel2/util/p;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_b

    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lorg/mvel2/g;->l:Z

    if-eqz v4, :cond_b

    :cond_9
    instance-of v1, p1, Lorg/mvel2/ast/Proto$b;

    if-eqz v1, :cond_a

    check-cast p1, Lorg/mvel2/ast/Proto$b;

    invoke-virtual {p1, p2}, Lorg/mvel2/ast/Proto$b;->c(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    sget-object v2, Lorg/mvel2/util/m;->a:[Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, v1, v2}, Lorg/mvel2/ast/Proto$c;->c(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const-string v3, "length"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_c
    if-eqz v1, :cond_11

    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_2
    if-ge v5, v3, :cond_10

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object p2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-virtual {p2}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mvel2/ParserConfiguration;->isAllowNakedMethCall()Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_3

    :cond_d
    sget-boolean p2, Lorg/mvel2/d;->g:Z

    if-eqz p2, :cond_e

    :goto_3
    sget-object p2, Lorg/mvel2/util/m;->a:[Ljava/lang/Object;

    invoke-virtual {v4, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    return-object v4

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_10
    :try_start_4
    iget-object v2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-static {v2, v1, v3}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    return-object p1

    :cond_11
    invoke-static {v2}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_12

    instance-of v1, p1, Lorg/mvel2/ast/b;

    if-eqz v1, :cond_13

    check-cast p1, Lorg/mvel2/ast/d;

    invoke-virtual {p1}, Lorg/mvel2/ast/d;->c()Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    invoke-static {v2}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;

    throw v0

    :catch_3
    :cond_13
    invoke-virtual {p0}, Lorg/mvel2/g;->C()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    instance-of p1, v1, Ljava/lang/Class;

    if-nez p1, :cond_15

    instance-of p1, v1, Ljava/lang/reflect/Method;

    if-eqz p1, :cond_14

    goto :goto_4

    :cond_14
    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    :goto_4
    return-object v1

    :cond_16
    iget-object v0, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->isAllowNakedMethCall()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_5

    :cond_17
    sget-boolean v0, Lorg/mvel2/d;->g:Z

    if-eqz v0, :cond_18

    :goto_5
    invoke-direct {p0, p1, p2}, Lorg/mvel2/g;->t(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_18
    if-nez p1, :cond_19

    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unresolvable property or identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->c:I

    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    :cond_19
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; in class: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->c:I

    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw v0
.end method

.method private p(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {p1, p2, v0}, Lk10/a;->c(Ljava/lang/Object;Ljava/lang/String;Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-direct {p0, p1, p2}, Lorg/mvel2/g;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private q()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private r(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/mvel2/g;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null pointer on indexed access for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    iget p2, p0, Lorg/mvel2/g;->b:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/mvel2/g;->b:I

    invoke-direct {p0}, Lorg/mvel2/g;->D()V

    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->f:I

    if-eq v0, v1, :cond_9

    const/16 v0, 0x5d

    invoke-direct {p0, v0}, Lorg/mvel2/g;->x(C)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mvel2/g;->b:I

    sub-int/2addr v2, p2

    invoke-direct {v0, v1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    iget-object v1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v0, p1, v1}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iget-object v1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v0, p1, v1}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of p2, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v0, p1, p2}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt p2, v0, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    if-ge v1, p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] out of bounds on collections"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->b:I

    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v0, p1, p2}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of p2, p1, Ljava/lang/CharSequence;

    if-eqz p2, :cond_8

    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v0, p1, v1}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :cond_8
    :try_start_0
    iget-object p2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    new-instance v2, Lorg/mvel2/ast/TypeDescriptor;

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->a:I

    iget v5, p0, Lorg/mvel2/g;->e:I

    invoke-direct {v2, v3, v4, v5, v1}, Lorg/mvel2/ast/TypeDescriptor;-><init>([CIII)V

    invoke-static {p2, v0, v2}, Lorg/mvel2/ast/TypeDescriptor;->getClassReference(Lorg/mvel2/ParserContext;Ljava/lang/Class;Lorg/mvel2/ast/TypeDescriptor;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    move-object v4, p2

    new-instance p2, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal use of []: unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    iget v3, p0, Lorg/mvel2/g;->c:I

    iget-object v5, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p2

    :cond_9
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    iget-object p2, p0, Lorg/mvel2/g;->d:[C

    iget v0, p0, Lorg/mvel2/g;->b:I

    iget-object v1, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    const-string v2, "unterminated \'[\'"

    invoke-direct {p1, v2, p2, v0, v1}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1
.end method

.method private s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/mvel2/g;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    iget v0, p0, Lorg/mvel2/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mvel2/g;->b:I

    invoke-direct {p0}, Lorg/mvel2/g;->D()V

    iget v1, p0, Lorg/mvel2/g;->b:I

    iget v2, p0, Lorg/mvel2/g;->f:I

    if-eq v1, v2, :cond_e

    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lorg/mvel2/g;->x(C)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    iget v3, p0, Lorg/mvel2/g;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mvel2/g;->b:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    const-class v0, Ljava/util/Map;

    invoke-static {v0}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, p1, v0}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v0}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;

    throw p2

    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    const-class v0, Ljava/util/List;

    invoke-static {v0}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, p1, v0}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {v0}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;

    throw p2

    :cond_5
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    const-class v0, Ljava/util/Collection;

    invoke-static {v0}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object p2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, p1, p2}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt p2, v0, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    if-ge v2, p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] out of bounds on collections"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->b:I

    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    :cond_8
    invoke-static {v0}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;

    throw p2

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Ljava/lang/reflect/Array;

    invoke-static {v0}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object p2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, p1, p2}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-static {v0}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;

    throw p2

    :cond_b
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    const-class v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, p1, v0}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-static {v0}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;

    throw p2

    :cond_d
    :try_start_0
    iget-object p2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    new-instance v1, Lorg/mvel2/ast/TypeDescriptor;

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->a:I

    iget v5, p0, Lorg/mvel2/g;->f:I

    sub-int/2addr v5, v4

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/mvel2/ast/TypeDescriptor;-><init>([CIII)V

    invoke-static {p2, v0, v1}, Lorg/mvel2/ast/TypeDescriptor;->getClassReference(Lorg/mvel2/ParserContext;Ljava/lang/Class;Lorg/mvel2/ast/TypeDescriptor;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p2, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal use of []: unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->c:I

    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p2, p1, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p2

    :cond_e
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    iget-object p2, p0, Lorg/mvel2/g;->d:[C

    iget v0, p0, Lorg/mvel2/g;->b:I

    iget-object v1, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    const-string v2, "unterminated \'[\'"

    invoke-direct {p1, v2, p2, v0, v1}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1
.end method

.method private t(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    const-string v0, "unable to invoke method: "

    iget v1, p0, Lorg/mvel2/g;->b:I

    iget v2, p0, Lorg/mvel2/g;->f:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    aget-char v4, v2, v1

    const/16 v5, 0x28

    if-ne v4, v5, :cond_0

    invoke-static {v2, v1, v5}, Lorg/mvel2/util/m;->c([CIC)I

    move-result v2

    iput v2, p0, Lorg/mvel2/g;->b:I

    sub-int v4, v2, v1

    if-le v4, v3, :cond_0

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/mvel2/g;->d:[C

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v4, v5, v6, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    iget v1, p0, Lorg/mvel2/g;->b:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/mvel2/g;->b:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lorg/mvel2/util/m;->a:[Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v5, -0x1

    invoke-static {v1, v2, v5}, Lorg/mvel2/util/m;->y0([CII)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    move v6, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    iget-object v8, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    iget-object v9, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v7, v8, v9}, Lorg/mvel2/d;->s([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v5

    :goto_2
    iget-boolean v5, p0, Lorg/mvel2/g;->k:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    if-eqz v5, :cond_7

    invoke-interface {v5, p2}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v5, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v5

    invoke-interface {v5}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Ljava/lang/reflect/Method;

    if-eqz v7, :cond_3

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    instance-of v7, v5, Lorg/mvel2/util/MethodStub;

    if-eqz v7, :cond_4

    check-cast v5, Lorg/mvel2/util/MethodStub;

    invoke-virtual {v5}, Lorg/mvel2/util/MethodStub;->getClassReference()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v5}, Lorg/mvel2/util/MethodStub;->getMethodName()Ljava/lang/String;

    move-result-object p2

    :goto_3
    iput-boolean v2, p0, Lorg/mvel2/g;->k:Z

    goto :goto_4

    :cond_4
    instance-of v0, v5, Lorg/mvel2/ast/b;

    if-eqz v0, :cond_5

    check-cast v5, Lorg/mvel2/ast/b;

    invoke-virtual {v5}, Lorg/mvel2/ast/b;->b()Lorg/mvel2/ast/Function;

    move-result-object p1

    array-length p2, v1

    invoke-virtual {p1, p2}, Lorg/mvel2/ast/Function;->checkArgumentCount(I)V

    iget-object p1, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    iget-object p2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-virtual {v5, v6, p1, p2, v1}, Lorg/mvel2/ast/b;->a(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance v0, Lorg/mvel2/OptimizationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to optimize a method call for a reference that does not point to a method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (reference is type: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    if-eqz p1, :cond_16

    iget-object v5, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    instance-of v5, p1, Ljava/lang/Class;

    if-eqz v5, :cond_9

    move-object v5, p1

    check-cast v5, Ljava/lang/Class;

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    :goto_5
    iput-object v6, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    const-class v7, Lorg/mvel2/ast/Proto$b;

    if-ne v5, v7, :cond_a

    check-cast p1, Lorg/mvel2/ast/Proto$b;

    invoke-virtual {p1, p2}, Lorg/mvel2/ast/Proto$b;->c(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-virtual {p1, v6, p2, v0, v1}, Lorg/mvel2/ast/Proto$c;->c(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-static {p2, v4}, Lorg/mvel2/g;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/mvel2/g;->e(Ljava/lang/Class;Ljava/lang/Integer;)[Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    aget-object v8, v7, v2

    check-cast v8, Ljava/lang/reflect/Method;

    aget-object v7, v7, v3

    check-cast v7, [Ljava/lang/Class;

    goto :goto_6

    :cond_b
    move-object v7, v6

    move-object v8, v7

    :goto_6
    if-nez v8, :cond_d

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static {v1, p2, v5, v8, v2}, Lorg/mvel2/util/m;->L([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-static {p2, v4}, Lorg/mvel2/g;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lorg/mvel2/g;->a(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    :cond_c
    if-nez v8, :cond_d

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static {v1, p2, v5, v8, v2}, Lorg/mvel2/util/m;->L([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-static {p2, v4}, Lorg/mvel2/g;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lorg/mvel2/g;->a(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    :cond_d
    if-nez v8, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v5, v9, :cond_e

    instance-of v9, p1, Ljava/lang/Class;

    if-nez v9, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static {v1, p2, v5, v8, v2}, Lorg/mvel2/util/m;->L([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-static {p2, v4}, Lorg/mvel2/g;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lorg/mvel2/g;->a(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    :cond_e
    instance-of v9, p1, Lorg/mvel2/ast/d;

    if-eqz v9, :cond_f

    move-object v9, p1

    check-cast v9, Lorg/mvel2/ast/d;

    invoke-virtual {v9}, Lorg/mvel2/ast/d;->c()Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object v9

    invoke-interface {v9, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v10

    invoke-interface {v10}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lorg/mvel2/ast/d;

    if-eqz v11, :cond_f

    check-cast v10, Lorg/mvel2/ast/d;

    iget-object p2, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    new-instance v0, Lorg/mvel2/ast/InvokationContextFactory;

    iget-object v2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-direct {v0, v2, v9}, Lorg/mvel2/ast/InvokationContextFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-virtual {v10, p1, p2, v0, v1}, Lorg/mvel2/ast/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    if-nez v8, :cond_14

    new-instance v0, Lorg/mvel2/util/s;

    invoke-direct {v0}, Lorg/mvel2/util/s;-><init>()V

    :goto_7
    array-length v4, v1

    if-ge v2, v4, :cond_12

    aget-object v4, v1, v2

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_10
    move-object v4, v6

    :goto_8
    invoke-virtual {v0, v4}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    array-length v4, v1

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_11

    const-string v4, ", "

    invoke-virtual {v0, v4}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    const-string v2, "size"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    array-length v2, v1

    if-nez v2, :cond_13

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_13
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to resolve method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") [arglength="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->c:I

    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    :cond_14
    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_15

    aget-object v3, v1, v2

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v6

    invoke-static {v7, v2, v6}, Lorg/mvel2/util/t;->b([Ljava/lang/Class;IZ)Ljava/lang/Class;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/mvel2/util/p;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v2

    invoke-static {v7, v1, v2}, Lorg/mvel2/util/t;->a([Ljava/lang/Class;[Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_a

    :catch_1
    move-exception p1

    goto :goto_b

    :goto_a
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->b:I

    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p1

    :goto_b
    throw p1

    :catch_2
    :try_start_1
    invoke-static {p2, v4}, Lorg/mvel2/g;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Lorg/mvel2/util/m;->V(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lorg/mvel2/g;->a(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V

    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    move-object v5, p1

    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->b:I

    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p1

    :cond_16
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such method or function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->b:I

    invoke-direct {p1, p2, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
.end method

.method private u()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->f:I

    if-ge v0, v1, :cond_6

    invoke-direct {p0}, Lorg/mvel2/g;->w()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/mvel2/g;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mvel2/g;->r(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mvel2/g;->t(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mvel2/g;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    :goto_1
    iget-boolean v0, p0, Lorg/mvel2/g;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iput-boolean v1, p0, Lorg/mvel2/g;->l:Z

    :cond_5
    iput-boolean v1, p0, Lorg/mvel2/g;->k:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lorg/mvel2/g;->a:I

    iget v1, p0, Lorg/mvel2/g;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    iget v0, p0, Lorg/mvel2/g;->b:I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/mvel2/g;->f:I

    const/16 v5, 0x7b

    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-static {v2, v0, v4, v5, v6}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    move-result v0

    iput v0, p0, Lorg/mvel2/g;->b:I

    sub-int v4, v0, v3

    iget-object v6, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lorg/mvel2/util/m;->z0(Ljava/lang/String;[CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    iget v0, p0, Lorg/mvel2/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mvel2/g;->b:I

    return-object p1
.end method

.method private w()I
    .locals 10

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->b:I

    iput v1, p0, Lorg/mvel2/g;->c:I

    aget-char v2, v0, v1

    const/4 v3, 0x3

    const/16 v4, 0x7b

    const/16 v5, 0x5b

    const/16 v6, 0x3f

    const/4 v7, 0x2

    const/16 v8, 0x2e

    const/4 v9, 0x1

    if-eq v2, v8, :cond_2

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    goto :goto_2

    :cond_0
    sub-int/2addr v1, v9

    aget-char v0, v0, v1

    if-ne v0, v8, :cond_7

    return v3

    :cond_1
    return v7

    :cond_2
    :goto_0
    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->f:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    aget-char v0, v1, v0

    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/mvel2/g;->b:I

    add-int/2addr v0, v9

    iput v0, p0, Lorg/mvel2/g;->b:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/mvel2/g;->c:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/mvel2/g;->f:I

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mvel2/g;->c:I

    iput v2, p0, Lorg/mvel2/g;->b:I

    aget-char v1, v1, v2

    if-eq v1, v6, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    add-int/2addr v0, v7

    iput v0, p0, Lorg/mvel2/g;->c:I

    iput v0, p0, Lorg/mvel2/g;->b:I

    iput-boolean v9, p0, Lorg/mvel2/g;->l:Z

    :cond_6
    :goto_1
    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->a:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lorg/mvel2/g;->c:I

    add-int/2addr v0, v9

    iput v0, p0, Lorg/mvel2/g;->c:I

    iput v0, p0, Lorg/mvel2/g;->b:I

    iput-boolean v9, p0, Lorg/mvel2/g;->l:Z

    :cond_7
    :goto_2
    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->f:I

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    aget-char v0, v1, v0

    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/mvel2/g;->b:I

    add-int/2addr v0, v9

    iput v0, p0, Lorg/mvel2/g;->b:I

    goto :goto_2

    :cond_8
    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->f:I

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    aget-char v1, v1, v0

    if-ne v1, v8, :cond_9

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mvel2/g;->b:I

    goto :goto_2

    :cond_9
    iput v0, p0, Lorg/mvel2/g;->c:I

    :goto_3
    iget v0, p0, Lorg/mvel2/g;->b:I

    add-int/2addr v0, v9

    iput v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->f:I

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    aget-char v0, v1, v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->f:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_e

    :goto_4
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->b:I

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/mvel2/g;->b:I

    add-int/2addr v0, v9

    iput v0, p0, Lorg/mvel2/g;->b:I

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->b:I

    aget-char v0, v0, v1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_d

    if-eq v0, v5, :cond_c

    return v2

    :cond_c
    return v7

    :cond_d
    return v9

    :cond_e
    return v2
.end method

.method private x(C)Z
    .locals 5

    :goto_0
    iget v0, p0, Lorg/mvel2/g;->b:I

    iget v1, p0, Lorg/mvel2/g;->f:I

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    aget-char v3, v2, v0

    const/16 v4, 0x22

    if-eq v3, v4, :cond_0

    const/16 v4, 0x27

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3, v2, v0, v1}, Lorg/mvel2/util/m;->h(C[CII)I

    move-result v0

    iput v0, p0, Lorg/mvel2/g;->b:I

    :goto_1
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->b:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mvel2/g;->b:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private y(Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-class v2, Ljava/lang/reflect/Array;

    const-class v3, Ljava/util/List;

    const-class v4, Ljava/util/Map;

    iget-object v5, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iput-object v5, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    :try_start_0
    iget v5, p0, Lorg/mvel2/g;->f:I

    iget-object v6, p0, Lorg/mvel2/g;->d:[C

    invoke-static {v6}, Lorg/mvel2/util/m;->C([C)I

    move-result v6

    iput v6, p0, Lorg/mvel2/g;->f:I

    invoke-direct {p0}, Lorg/mvel2/g;->j()Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    if-eqz v6, :cond_1d

    iput v5, p0, Lorg/mvel2/g;->f:I

    invoke-direct {p0}, Lorg/mvel2/g;->w()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_d

    iget v0, p0, Lorg/mvel2/g;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mvel2/g;->b:I

    invoke-direct {p0}, Lorg/mvel2/g;->D()V

    iget v1, p0, Lorg/mvel2/g;->b:I

    iget v5, p0, Lorg/mvel2/g;->e:I

    if-eq v1, v5, :cond_c

    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lorg/mvel2/g;->x(C)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/mvel2/g;->d:[C

    iget v6, p0, Lorg/mvel2/g;->b:I

    sub-int/2addr v6, v0

    invoke-direct {v1, v5, v0, v6}, Ljava/lang/String;-><init>([CII)V

    sget-boolean v0, Lorg/mvel2/d;->h:Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ": not a recognized collection type: "

    const-string v6, "cannot bind to collection property: "

    const-class v8, Ljava/lang/Integer;

    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v4, p1

    goto/16 :goto_8

    :catch_1
    move-exception p1

    move-object v4, p1

    goto/16 :goto_9

    :cond_0
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3, v8}, Lorg/mvel2/d;->o(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3, v8}, Lorg/mvel2/d;->o(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    :cond_3
    iget-object p1, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    throw v7

    :cond_4
    :try_start_2
    iget-object v0, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v9, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v0, v1, v9, p1}, Lk10/a;->d(Ljava/lang/Object;Ljava/lang/String;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    instance-of v9, v0, Ljava/util/Map;

    if-eqz v9, :cond_6

    invoke-static {v4}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    throw v7

    :cond_6
    :try_start_3
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_8

    invoke-static {v3}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3, v8}, Lorg/mvel2/d;->o(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-static {v3}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0

    throw v7

    :cond_8
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v2}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3, v8}, Lorg/mvel2/d;->o(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_1
    return-void

    :cond_9
    invoke-static {v2}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0

    throw v7

    :cond_a
    :try_start_5
    iget-object p1, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0

    throw v7

    :cond_b
    :try_start_6
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    :cond_c
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    const-string v0, "unterminated \'[\'"

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    :cond_d
    sget-boolean v2, Lorg/mvel2/d;->h:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lk10/d;->f(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_2

    :cond_e
    iget-object p1, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lk10/d;->c(Ljava/lang/Class;)Lk10/c;

    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_0

    throw v7

    :cond_f
    :goto_2
    :try_start_7
    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v2, :cond_10

    move v4, v0

    goto :goto_3

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/mvel2/g;->h(Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/reflect/Member;

    move-result-object v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_4

    :cond_11
    const/4 v4, -0x1

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz p1, :cond_12

    iget-object v5, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lorg/mvel2/util/n;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    goto :goto_5

    :cond_12
    iget-object v5, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/mvel2/util/n;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Member;

    move-result-object v5

    :goto_5
    invoke-static {v3, v4, v5}, Lorg/mvel2/g;->c(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Member;)V

    move-object v3, v5

    :cond_13
    instance-of v4, v3, Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v5, ": to "

    const-string v6, "cannot convert type: "

    if-eqz v4, :cond_16

    :try_start_8
    check-cast v3, Ljava/lang/reflect/Method;

    invoke-static {v3}, Lorg/mvel2/g;->f(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v2

    if-eqz p1, :cond_15

    aget-object v4, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_15

    aget-object v4, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_14
    new-instance v1, Lorg/mvel2/CompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    invoke-direct {v1, p1, v0, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v1

    :cond_15
    iget-object v2, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_16
    if-eqz v3, :cond_19

    check-cast v3, Ljava/lang/reflect/Field;

    if-eqz p1, :cond_18

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_17
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    invoke-direct {v0, p1, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_18
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v3, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_19
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1a

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v2, v1, v3}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_1a
    instance-of v1, v0, Lorg/mvel2/ast/b;

    if-eqz v1, :cond_1b

    check-cast v0, Lorg/mvel2/ast/d;

    invoke-virtual {v0}, Lorg/mvel2/ast/d;->c()Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    :goto_6
    return-void

    :cond_1b
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not access/write property ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    if-nez v1, :cond_1c

    const-string v1, "Unknown"

    goto :goto_7

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    :cond_1d
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot bind to null context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    iget v3, p0, Lorg/mvel2/g;->b:I

    iget v4, p0, Lorg/mvel2/g;->e:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1
    :try_end_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    iget v3, p0, Lorg/mvel2/g;->c:I

    iget-object v5, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    const-string v1, "could not access property"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p1

    :goto_9
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    iget v3, p0, Lorg/mvel2/g;->c:I

    iget-object v5, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    const-string v1, "could not access property"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p1
.end method

.method public static z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lorg/mvel2/g;

    invoke-direct {v0, p1, p0}, Lorg/mvel2/g;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, p2}, Lorg/mvel2/g;->y(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected B(I)I
    .locals 2

    :goto_0
    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    add-int/lit8 v1, p1, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method protected C()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lorg/mvel2/g;->b:I

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lorg/mvel2/g;->f:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p0, Lorg/mvel2/g;->a:I

    if-le v3, v6, :cond_13

    iget-object v7, p0, Lorg/mvel2/g;->d:[C

    aget-char v8, v7, v3

    const/16 v9, 0x5c

    const/16 v10, 0x22

    if-eq v8, v10, :cond_10

    const/16 v11, 0x27

    if-eq v8, v11, :cond_d

    const/16 v12, 0x29

    const/4 v13, 0x1

    if-eq v8, v12, :cond_9

    const/16 v12, 0x2e

    if-eq v8, v12, :cond_4

    const/16 v6, 0x7d

    if-eq v8, v6, :cond_0

    goto/16 :goto_a

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_12

    if-eqz v13, :cond_12

    iget-object v7, p0, Lorg/mvel2/g;->d:[C

    aget-char v7, v7, v3

    if-eq v7, v10, :cond_3

    if-eq v7, v11, :cond_3

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_2

    if-eq v7, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-lez v3, :cond_0

    iget-object v8, p0, Lorg/mvel2/g;->d:[C

    aget-char v12, v8, v3

    if-eq v12, v7, :cond_0

    add-int/lit8 v12, v3, -0x1

    aget-char v8, v8, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eq v8, v9, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    if-nez v5, :cond_8

    :try_start_1
    new-instance v5, Ljava/lang/String;

    iput v2, p0, Lorg/mvel2/g;->b:I

    sub-int/2addr v2, v6

    invoke-direct {v5, v7, v6, v2}, Ljava/lang/String;-><init>([CII)V

    sget-boolean v2, Lorg/mvel2/d;->j:Z

    if-eqz v2, :cond_5

    const-string v2, ".class"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-direct {p0}, Lorg/mvel2/g;->q()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_0
    :try_start_2
    invoke-direct {p0}, Lorg/mvel2/g;->q()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/mvel2/g;->d:[C

    iget v7, p0, Lorg/mvel2/g;->a:I

    sub-int v8, v3, v7

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/mvel2/g;->d:[C

    add-int/lit8 v7, v3, 0x1

    iget v8, p0, Lorg/mvel2/g;->f:I

    sub-int/2addr v8, v3

    sub-int/2addr v8, v13

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_1
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_3
    if-ge v4, v3, :cond_7

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    return-object v6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-object v1

    :cond_8
    move v2, v3

    move v5, v4

    goto/16 :goto_a

    :cond_9
    add-int/lit8 v3, v3, -0x1

    move v2, v13

    :goto_4
    if-lez v3, :cond_c

    if-eqz v2, :cond_c

    iget-object v5, p0, Lorg/mvel2/g;->d:[C

    aget-char v5, v5, v3

    if-eq v5, v10, :cond_a

    packed-switch v5, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :pswitch_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_a
    :goto_5
    :pswitch_2
    if-lez v3, :cond_b

    iget-object v6, p0, Lorg/mvel2/g;->d:[C

    aget-char v7, v6, v3

    if-eq v7, v5, :cond_b

    add-int/lit8 v7, v3, -0x1

    aget-char v6, v6, v7

    if-eq v6, v9, :cond_b

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_b
    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v2, v3, 0x1

    move v5, v13

    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_a

    :cond_d
    :goto_7
    add-int/lit8 v6, v3, -0x1

    if-lez v6, :cond_f

    iget-object v7, p0, Lorg/mvel2/g;->d:[C

    aget-char v8, v7, v6

    if-ne v8, v11, :cond_e

    add-int/lit8 v3, v3, -0x2

    aget-char v3, v7, v3

    if-eq v3, v9, :cond_e

    goto :goto_8

    :cond_e
    move v3, v6

    goto :goto_7

    :cond_f
    :goto_8
    move v3, v6

    goto :goto_a

    :cond_10
    :goto_9
    add-int/lit8 v6, v3, -0x1

    if-lez v6, :cond_f

    iget-object v7, p0, Lorg/mvel2/g;->d:[C

    aget-char v8, v7, v6

    if-ne v8, v10, :cond_11

    add-int/lit8 v3, v3, -0x2

    aget-char v3, v7, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eq v3, v9, :cond_11

    goto :goto_8

    :cond_11
    move v3, v6

    goto :goto_9

    :cond_12
    :goto_a
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :catch_2
    iput v0, p0, Lorg/mvel2/g;->b:I

    :cond_13
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
