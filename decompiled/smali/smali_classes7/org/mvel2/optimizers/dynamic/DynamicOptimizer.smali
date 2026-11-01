.class public Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;
.super Lorg/mvel2/optimizers/AbstractOptimizer;

# interfaces
.implements Lorg/mvel2/optimizers/a;


# static fields
.field public static final COLLECTION:I = 0x2

.field public static final OBJ_CREATION:I = 0x3

.field public static final REGULAR_ACCESSOR:I = 0x0

.field public static final SET_ACCESSOR:I = 0x1

.field private static volatile classLoader:Ln10/b; = null

.field private static lock:Ljava/util/concurrent/locks/ReadWriteLock; = null

.field public static maximumTenure:I = 0x5dc

.field private static final oLock:Ljava/lang/Object;

.field private static readLock:Ljava/util/concurrent/locks/Lock; = null

.field public static tenuringThreshold:I = 0x32

.field public static timeSpan:J = 0x64L

.field public static totalRecycled:I

.field private static volatile useSafeClassloading:Z

.field private static writeLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private firstStage:Lorg/mvel2/optimizers/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->oLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;-><init>()V

    sget-object v0, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/mvel2/optimizers/b;->b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    return-void
.end method

.method private static _init()V
    .locals 3

    new-instance v0, Ln10/b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget v2, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->maximumTenure:I

    invoke-direct {v0, v1, v2}, Ln10/b;-><init>(Ljava/lang/ClassLoader;I)V

    sput-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Ln10/b;

    invoke-static {v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->setMVELClassLoader(Lorg/mvel2/util/k;)V

    return-void
.end method

.method public static enforceTenureLimit()V
    .locals 2

    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Ln10/b;

    invoke-virtual {v0}, Ln10/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Ln10/b;

    invoke-virtual {v0}, Ln10/b;->b()V

    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Ln10/b;

    invoke-virtual {v0}, Ln10/b;->c()I

    move-result v0

    sput v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->totalRecycled:I

    invoke-static {}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->_init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static isOverloaded()Z
    .locals 1

    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Ln10/b;

    invoke-virtual {v0}, Ln10/b;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getEgressType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    invoke-interface {v0}, Lorg/mvel2/optimizers/a;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getResultOptPass()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    invoke-interface {v0}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    invoke-static {}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->_init()V

    return-void
.end method

.method public isLiteralOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    invoke-interface {v0}, Lorg/mvel2/optimizers/a;->isLiteralOnly()Z

    move-result v0

    return v0
.end method

.method public optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;
    .locals 20

    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/mvel2/ParserContext;->optimizationNotify()V

    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Ln10/b;

    new-instance v8, Ln10/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v9, p0

    :try_start_1
    iget-object v10, v9, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move/from16 v18, p8

    move-object/from16 v19, p9

    invoke-interface/range {v10 .. v19}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    move-result-object v7

    const/4 v6, 0x0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Ln10/d;-><init>(Lorg/mvel2/ParserContext;[CIIILorg/mvel2/compiler/a;)V

    invoke-virtual {v0, v8}, Ln10/b;->e(Ln10/a;)Ln10/a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v9, p0

    :goto_0
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;
    .locals 22

    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Ln10/b;

    new-instance v10, Ln10/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v11, p0

    :try_start_1
    iget-object v12, v11, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    invoke-interface/range {v12 .. v21}, Lorg/mvel2/optimizers/a;->optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    move-result-object v9

    const/4 v8, 0x2

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Ln10/c;-><init>(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIIILorg/mvel2/compiler/a;)V

    invoke-virtual {v0, v10}, Ln10/b;->e(Ln10/a;)Ln10/a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v11, p0

    :goto_0
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public optimizeObjectCreation(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;
    .locals 18

    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Ln10/b;

    new-instance v8, Ln10/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v9, p0

    :try_start_1
    iget-object v10, v9, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    invoke-interface/range {v10 .. v17}, Lorg/mvel2/optimizers/a;->optimizeObjectCreation(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    move-result-object v7

    const/4 v6, 0x3

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Ln10/d;-><init>(Lorg/mvel2/ParserContext;[CIIILorg/mvel2/compiler/a;)V

    invoke-virtual {v0, v8}, Ln10/b;->e(Ln10/a;)Ln10/a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v9, p0

    :goto_0
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public optimizeSetAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/a;
    .locals 14

    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Ln10/b;

    new-instance v1, Ln10/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    :try_start_1
    iget-object v3, v2, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-interface/range {v3 .. v13}, Lorg/mvel2/optimizers/a;->optimizeSetAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/a;

    move-result-object v3

    move-object/from16 p5, v1

    move-object/from16 p6, p1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move-object/from16 p10, v3

    invoke-direct/range {p5 .. p10}, Ln10/e;-><init>(Lorg/mvel2/ParserContext;[CIILorg/mvel2/compiler/a;)V

    invoke-virtual {v0, v1}, Ln10/b;->e(Ln10/a;)Ln10/a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_0
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
