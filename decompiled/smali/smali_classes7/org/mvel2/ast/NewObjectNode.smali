.class public Lorg/mvel2/ast/NewObjectNode;
.super Lorg/mvel2/ast/ASTNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/ast/NewObjectNode$NewObjectArray;
    }
.end annotation


# static fields
.field private static final EMPTYCLS:[Ljava/lang/Class;

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private name:[C

.field private transient newObjectOptimizer:Lorg/mvel2/compiler/a;

.field private typeDescr:Lorg/mvel2/ast/TypeDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/mvel2/ast/NewObjectNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mvel2/ast/NewObjectNode;->LOG:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/mvel2/ast/NewObjectNode;->EMPTYCLS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ast/TypeDescriptor;ILorg/mvel2/ParserContext;)V
    .locals 8

    invoke-direct {p0, p3}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    iput-object p1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    iput p2, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getExpr()[C

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getStart()I

    move-result v0

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    add-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Lorg/mvel2/util/m;->F0([CII)[C

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    :goto_0
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_8

    const-string v0, "could not resolve class: "

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/mvel2/ParserContext;->hasImport(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3, v1}, Lorg/mvel2/ParserContext;->setAllowBootstrapBypass(Z)V

    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/mvel2/ParserContext;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v3, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    if-eqz v3, :cond_3

    invoke-direct {p0, p2}, Lorg/mvel2/ast/NewObjectNode;->rewriteClassReferenceToFQCN(I)V

    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result p2

    if-eqz p2, :cond_3

    :try_start_1
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p2}, Lorg/mvel2/util/p;->j(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getArrayLength()I

    move-result v3

    const/16 v4, 0x5b

    invoke-static {v4, v3}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "L"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-static {v3, p2, p3}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    sget-object v3, Lorg/mvel2/ast/NewObjectNode;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, ""

    invoke-virtual {v3, v4, v5, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    if-eqz p3, :cond_8

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    if-nez p2, :cond_4

    new-instance p2, Lorg/mvel2/c;

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, v3, v2, p1}, Lorg/mvel2/c;-><init>([CIZLjava/lang/String;)V

    invoke-virtual {p3, p2}, Lorg/mvel2/ParserContext;->addError(Lorg/mvel2/c;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {p2, v0, v3}, Lorg/mvel2/util/m;->g([CII)[Ljava/lang/String;

    move-result-object p2

    aget-object v0, p2, v1

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/util/m;->w0([C)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/Class;

    :goto_5
    if-ge v1, v3, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    invoke-static {v5, p3}, Lorg/mvel2/d;->c([CLorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {v4, v0, v2}, Lorg/mvel2/util/m;->M([Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p3}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/mvel2/c;

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-virtual {p3}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not resolve constructor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v3, v5, p1}, Lorg/mvel2/c;-><init>([CIZLjava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/mvel2/ParserContext;->addError(Lorg/mvel2/c;)V

    :cond_6
    array-length p1, p2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    aget-object p1, p2, v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_7

    return-void

    :cond_7
    new-instance p2, Lorg/mvel2/compiler/PropertyVerifier;

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-direct {p2, p1, p3, v0}, Lorg/mvel2/compiler/PropertyVerifier;-><init>(Ljava/lang/String;Lorg/mvel2/ParserContext;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    goto :goto_6

    :catch_1
    invoke-virtual {p3}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Lorg/mvel2/c;

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, v3, v2, p1}, Lorg/mvel2/c;-><init>([CIZLjava/lang/String;)V

    invoke-virtual {p3, p2}, Lorg/mvel2/ParserContext;->addError(Lorg/mvel2/c;)V

    :cond_8
    :goto_6
    return-void
.end method

.method private createPrototypalObject(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mvel2/ParserContext;->getFunction(Ljava/lang/String;)Lorg/mvel2/ast/Function;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/Function;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private isPrototypeFunction()Z
    .locals 2

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getFunctions()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private rewriteClassReferenceToFQCN(I)V
    .locals 9

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    array-length v3, v1

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v1}, Lorg/mvel2/util/b;->a(CII[C)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    if-ne v1, v2, :cond_0

    array-length v1, v0

    new-array v2, v1, [C

    iput-object v2, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    aget-char v4, v0, v2

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v0

    iget-object v3, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    array-length v3, v3

    sub-int/2addr v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [C

    move v3, v5

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-char v4, v0, v3

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    array-length v3, v3

    sub-int/2addr v3, v1

    array-length v0, v0

    move v4, v5

    :goto_2
    if-ge v4, v3, :cond_2

    add-int v6, v4, v0

    iget-object v7, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    add-int v8, v4, v1

    aget-char v7, v7, v8

    aput-char v7, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iput-object v2, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    :cond_3
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2, p1}, Lorg/mvel2/ast/TypeDescriptor;->updateClassName([CIII)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getNewObjectOptimizer()Lorg/mvel2/compiler/a;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->newObjectOptimizer:Lorg/mvel2/compiler/a;

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 9

    :try_start_0
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {p2}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {p3, p2, v0}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->getArrayLength()I

    move-result v0

    new-array v2, v0, [I

    iget-object v3, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v3}, Lorg/mvel2/ast/TypeDescriptor;->getArraySize()[Lorg/mvel2/ast/ArraySize;

    move-result-object v3

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v4, v3, v1

    iget-object v4, v4, Lorg/mvel2/ast/ArraySize;->value:[C

    invoke-static {v4, p1, p3}, Lorg/mvel2/d;->s([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    invoke-static {v4, v5}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :catch_2
    move-exception p1

    goto/16 :goto_5

    :catch_3
    move-exception p1

    goto/16 :goto_6

    :cond_0
    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lorg/mvel2/util/m;->g([CII)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/mvel2/util/m;->w0([C)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    array-length v6, v5

    const/16 v7, 0x28

    invoke-static {v7, v1, v6, v5}, Lorg/mvel2/util/b;->a(CII[C)I

    move-result v6

    invoke-static {v5, v1, v6}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {p3, v4, v5}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [Ljava/lang/Object;

    move v7, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [C

    invoke-static {v8, p1, p3}, Lorg/mvel2/d;->s([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v6, v4, v1}, Lorg/mvel2/util/m;->N([Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object p1

    if-eqz p1, :cond_5

    :goto_2
    if-ge v1, v5, :cond_3

    aget-object v2, v6, v1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v2, v4}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    array-length v1, v0

    if-le v1, v3, :cond_4

    aget-object v0, v0, v3

    invoke-virtual {p1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v0, p1, p3, p2, v1}, Lorg/mvel2/g;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unable to find constructor for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    :cond_6
    iget-object p1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v1}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mvel2/ParserConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    sget-object v1, Lorg/mvel2/ast/NewObjectNode;->EMPTYCLS:[Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    array-length v1, v0

    const/4 v2, 0x0

    if-le v1, v3, :cond_7

    aget-object v0, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v0, p1, p3, p2, v1}, Lorg/mvel2/g;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_3
    new-instance p2, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p2, p3, v0, v1, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2

    :goto_4
    new-instance p2, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot resolve constructor: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p2, p3, v0, v1, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2

    :goto_5
    new-instance p2, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to resolve class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p2, p3, v0, v1, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2

    :goto_6
    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->newObjectOptimizer:Lorg/mvel2/compiler/a;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/mvel2/ast/NewObjectNode;->rewriteClassReferenceToFQCN(I)V

    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v1}, Lorg/mvel2/ast/TypeDescriptor;->getArrayLength()I

    move-result v1

    const/16 v2, 0x5b

    invoke-static {v2, v1}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {p3, v0, v1}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot construct object: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a class reference"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p2, p3, v0, v1, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2

    :catch_1
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/mvel2/ast/NewObjectNode$NewObjectArray;

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    invoke-virtual {v2}, Lorg/mvel2/ast/TypeDescriptor;->getCompiledArraySize()[Lorg/mvel2/compiler/ExecutableStatement;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/mvel2/ast/NewObjectNode$NewObjectArray;-><init>(Ljava/lang/Class;[Lorg/mvel2/compiler/ExecutableStatement;)V

    iput-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->newObjectOptimizer:Lorg/mvel2/compiler/a;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :try_start_2
    invoke-static {}, Lorg/mvel2/optimizers/b;->d()Lorg/mvel2/optimizers/a;

    move-result-object v8

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    if-nez v0, :cond_2

    new-instance v0, Lorg/mvel2/ParserContext;

    invoke-direct {v0}, Lorg/mvel2/ParserContext;-><init>()V

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v1

    invoke-static {p3}, Lorg/mvel2/util/e;->e(Lorg/mvel2/integration/VariableResolverFactory;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mvel2/ParserConfiguration;->setAllImports(Ljava/util/Map;)V

    :cond_2
    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_1
    iget-object v2, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    array-length v4, v2

    const/4 v3, 0x0

    move-object v0, v8

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v0 .. v7}, Lorg/mvel2/optimizers/a;->optimizeObjectCreation(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->newObjectOptimizer:Lorg/mvel2/compiler/a;

    invoke-interface {v8}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Lorg/mvel2/optimizers/a;->getEgressType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-interface {v8}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Lorg/mvel2/CompileException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    return-object p1

    :cond_3
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    goto :goto_4

    :goto_2
    :try_start_3
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget p3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-static {p1, p2, p3}, Lorg/mvel2/util/f;->a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    throw p1

    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->newObjectOptimizer:Lorg/mvel2/compiler/a;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTypeDescr()Lorg/mvel2/ast/TypeDescriptor;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    return-object v0
.end method
