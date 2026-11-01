.class public Ln10/d;
.super Ljava/lang/Object;

# interfaces
.implements Ln10/a;


# instance fields
.field private a:[C

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lorg/mvel2/ParserContext;

.field private i:Lorg/mvel2/compiler/a;

.field private j:Lorg/mvel2/compiler/a;


# direct methods
.method public constructor <init>(Lorg/mvel2/ParserContext;[CIIILorg/mvel2/compiler/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln10/d;->g:Z

    iput-object p6, p0, Ln10/d;->j:Lorg/mvel2/compiler/a;

    iput-object p6, p0, Ln10/d;->i:Lorg/mvel2/compiler/a;

    iput p5, p0, Ln10/d;->e:I

    iput-object p2, p0, Ln10/d;->a:[C

    iput p3, p0, Ln10/d;->b:I

    iput p4, p0, Ln10/d;->c:I

    iput-object p1, p0, Ln10/d;->h:Lorg/mvel2/ParserContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ln10/d;->d:J

    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->isOverloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->enforceTenureLimit()V

    :cond_0
    const-string v0, "ASM"

    invoke-static {v0}, Lorg/mvel2/optimizers/b;->b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;

    move-result-object v0

    iget v1, p0, Ln10/d;->e:I

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v2, p0, Ln10/d;->h:Lorg/mvel2/ParserContext;

    iget-object v3, p0, Ln10/d;->a:[C

    iget v4, p0, Ln10/d;->b:I

    iget v5, p0, Ln10/d;->c:I

    move-object v1, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v1 .. v8}, Lorg/mvel2/optimizers/a;->optimizeObjectCreation(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    move-result-object v0

    iput-object v0, p0, Ln10/d;->j:Lorg/mvel2/compiler/a;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Ln10/d;->h:Lorg/mvel2/ParserContext;

    iget-object v5, p0, Ln10/d;->a:[C

    iget v6, p0, Ln10/d;->b:I

    iget v7, p0, Ln10/d;->c:I

    const/4 v4, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    move-result-object v0

    iput-object v0, p0, Ln10/d;->j:Lorg/mvel2/compiler/a;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v2, p0, Ln10/d;->h:Lorg/mvel2/ParserContext;

    iget-object v3, p0, Ln10/d;->a:[C

    iget v4, p0, Ln10/d;->b:I

    iget v5, p0, Ln10/d;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    move-result-object p1

    iput-object p1, p0, Ln10/d;->j:Lorg/mvel2/compiler/a;

    invoke-interface {v0}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ln10/d;->i:Lorg/mvel2/compiler/a;

    iput-object v0, p0, Ln10/d;->j:Lorg/mvel2/compiler/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln10/d;->g:Z

    iput v0, p0, Ln10/d;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ln10/d;->d:J

    return-void
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Ln10/d;->i:Lorg/mvel2/compiler/a;

    invoke-interface {v0}, Lorg/mvel2/compiler/a;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 6

    iget-boolean v0, p0, Ln10/d;->g:Z

    if-nez v0, :cond_1

    iget v0, p0, Ln10/d;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ln10/d;->f:I

    sget v2, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->tenuringThreshold:I

    if-le v0, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ln10/d;->d:J

    sub-long/2addr v2, v4

    sget-wide v4, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->timeSpan:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iput-boolean v1, p0, Ln10/d;->g:Z

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Ln10/d;->b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/mvel2/optimizers/OptimizationNotSupported; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ln10/d;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ln10/d;->d:J

    :catch_0
    :cond_1
    iget-object v0, p0, Ln10/d;->j:Lorg/mvel2/compiler/a;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ln10/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln10/d;->f:I

    iget-object v0, p0, Ln10/d;->j:Lorg/mvel2/compiler/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
