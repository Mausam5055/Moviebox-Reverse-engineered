.class public Lorg/mvel2/ParserContext;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private blockSymbols:Z

.field private compiled:Z

.field private transient compiledExpressionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mvel2/compiler/CompiledExpression;",
            ">;"
        }
    .end annotation
.end field

.field private debugSymbols:Z

.field private transient errorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;"
        }
    .end annotation
.end field

.field private evaluationContext:Ljava/lang/Object;

.field private executableCodeReached:Z

.field private fatalError:Z

.field private functionContext:Z

.field private globalFunctions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/mvel2/ast/Function;",
            ">;"
        }
    .end annotation
.end field

.field private indexAllocation:Z

.field private indexedInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private indexedLocals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private lastLineLabel:Lorg/mvel2/ast/LineLabel;

.field private transient lastTypeParameters:[Ljava/lang/reflect/Type;

.field private lineCount:I

.field private lineOffset:I

.field private optimizationMode:Z

.field private parent:Lorg/mvel2/ParserContext;

.field private parserConfiguration:Lorg/mvel2/ParserConfiguration;

.field private retainParserState:Z

.field private transient returnTypeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private transient rootParser:Lorg/mvel2/compiler/b;

.field private sourceFile:Ljava/lang/String;

.field private transient sourceLineLookups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mvel2/util/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private strictTypeEnforcement:Z

.field private strongTyping:Z

.field private transient typeParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field private variableVisibility:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected variablesEscape:Z

.field private transient visitedLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->functionContext:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->compiled:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->optimizationMode:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->variablesEscape:Z

    new-instance v0, Lorg/mvel2/ParserConfiguration;

    invoke-direct {v0}, Lorg/mvel2/ParserConfiguration;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lk10/b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->functionContext:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->compiled:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->optimizationMode:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->variablesEscape:Z

    iput-object p3, p0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    new-instance p3, Lorg/mvel2/ParserConfiguration;

    invoke-direct {p3, p1, p2}, Lorg/mvel2/ParserConfiguration;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object p3, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ParserConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->functionContext:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->compiled:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->optimizationMode:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->variablesEscape:Z

    iput-object p1, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ParserConfiguration;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mvel2/ParserContext;-><init>(Lorg/mvel2/ParserConfiguration;)V

    iput-object p2, p0, Lorg/mvel2/ParserContext;->evaluationContext:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ParserConfiguration;Lorg/mvel2/ParserContext;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mvel2/ParserContext;-><init>(Lorg/mvel2/ParserConfiguration;)V

    iput-object p2, p0, Lorg/mvel2/ParserContext;->parent:Lorg/mvel2/ParserContext;

    iput-boolean p3, p0, Lorg/mvel2/ParserContext;->functionContext:Z

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/compiler/b;)V
    .locals 0

    invoke-direct {p0}, Lorg/mvel2/ParserContext;-><init>()V

    iput-object p1, p0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/mvel2/ParserContext;-><init>()V

    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    return-void
.end method

.method static synthetic access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;
    .locals 0

    iget-object p0, p0, Lorg/mvel2/ParserContext;->parent:Lorg/mvel2/ParserContext;

    return-object p0
.end method

.method static synthetic access$100(Lorg/mvel2/ParserContext;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lorg/mvel2/ParserContext;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    return-object p0
.end method

.method public static create()Lorg/mvel2/ParserContext;
    .locals 1

    new-instance v0, Lorg/mvel2/ParserContext;

    invoke-direct {v0}, Lorg/mvel2/ParserContext;-><init>()V

    return-object v0
.end method

.method private initIndexedVariables()V
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method private initVariableVisibility()V
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public addError(Lorg/mvel2/c;)V
    .locals 4

    iget-object v0, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mvel2/c;

    invoke-virtual {v1}, Lorg/mvel2/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mvel2/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/mvel2/c;->b()I

    move-result v2

    invoke-virtual {p1}, Lorg/mvel2/c;->b()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lorg/mvel2/c;->e()I

    move-result v1

    invoke-virtual {p1}, Lorg/mvel2/c;->e()I

    move-result v2

    if-ne v1, v2, :cond_1

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/mvel2/c;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    :cond_3
    iget-object v0, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addImport(Ljava/lang/Class;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImport(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p1, p2}, Lorg/mvel2/ParserConfiguration;->addImport(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImport(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 1

    new-instance v0, Lorg/mvel2/util/MethodStub;

    invoke-direct {v0, p2}, Lorg/mvel2/util/MethodStub;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p0, p1, v0}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/String;Lorg/mvel2/util/MethodStub;)V

    return-void
.end method

.method public addImport(Ljava/lang/String;Lorg/mvel2/util/MethodStub;)V
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p1, p2}, Lorg/mvel2/ParserConfiguration;->addImport(Ljava/lang/String;Lorg/mvel2/util/MethodStub;)V

    return-void
.end method

.method public addImport(Lorg/mvel2/ast/Proto;)V
    .locals 2

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {p1}, Lorg/mvel2/ast/Proto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mvel2/ParserConfiguration;->addImport(Ljava/lang/String;Lorg/mvel2/ast/Proto;)V

    return-void
.end method

.method public addIndexedInput(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addIndexedInput([Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addIndexedInputs(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addIndexedLocals(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addIndexedLocals([Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    iget-object p1, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addInput(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-class p2, Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public addInput(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 3

    if-nez p2, :cond_0

    const-class p2, Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    array-length v0, p3

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    aget-object v1, p2, v0

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p3, v0

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong number of type parameters for: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addInputs(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addPackageImport(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->addPackageImport(Ljava/lang/String;)V

    return-void
.end method

.method public addTypeParameters(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->initializeTables()V

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-class p2, Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->makeVisible(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->initializeTables()V

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "statically-typed variable already defined in scope: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const-class p2, Ljava/lang/Object;

    :cond_2
    iget-object p3, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->makeVisible(Ljava/lang/String;)V

    return-void
.end method

.method public addVariables(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->initializeTables()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, Lorg/mvel2/ParserContext;->addVariable(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public createColoringSubcontext()Lorg/mvel2/ParserContext;
    .locals 2

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parent:Lorg/mvel2/ParserContext;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mvel2/ParserContext$1;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-direct {v0, p0, v1}, Lorg/mvel2/ParserContext$1;-><init>(Lorg/mvel2/ParserContext;Lorg/mvel2/ParserConfiguration;)V

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->initializeTables()V

    iget-object v1, p0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    iget v1, p0, Lorg/mvel2/ParserContext;->lineCount:I

    iput v1, v0, Lorg/mvel2/ParserContext;->lineCount:I

    iget v1, p0, Lorg/mvel2/ParserContext;->lineOffset:I

    iput v1, v0, Lorg/mvel2/ParserContext;->lineOffset:I

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->compiled:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->compiled:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->strongTyping:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->fatalError:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->retainParserState:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "create a subContext first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSubcontext()Lorg/mvel2/ParserContext;
    .locals 2

    new-instance v0, Lorg/mvel2/ParserContext;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-direct {v0, v1}, Lorg/mvel2/ParserContext;-><init>(Lorg/mvel2/ParserConfiguration;)V

    iget-object v1, p0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    iput-object p0, v0, Lorg/mvel2/ParserContext;->parent:Lorg/mvel2/ParserContext;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/mvel2/ParserContext;->addInputs(Ljava/util/Map;)V

    iget-object v1, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lorg/mvel2/ParserContext;->addVariables(Ljava/util/Map;)V

    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/mvel2/ParserContext;->addIndexedInputs(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lorg/mvel2/ParserContext;->addTypeParameters(Ljava/util/Map;)V

    iget-object v1, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    iput-object v1, v0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    iget v1, p0, Lorg/mvel2/ParserContext;->lineCount:I

    iput v1, v0, Lorg/mvel2/ParserContext;->lineCount:I

    iget v1, p0, Lorg/mvel2/ParserContext;->lineOffset:I

    iput v1, v0, Lorg/mvel2/ParserContext;->lineOffset:I

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->compiled:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->compiled:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->strongTyping:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->fatalError:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->retainParserState:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    return-object v0
.end method

.method public declareFunction(Lorg/mvel2/ast/Function;)V
    .locals 2

    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/mvel2/ast/Function;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCompiledExpressionCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mvel2/compiler/CompiledExpression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/ParserContext;->compiledExpressionCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->compiledExpressionCache:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->compiledExpressionCache:Ljava/util/Map;

    return-object v0
.end method

.method public getErrorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEvaluationContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->evaluationContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getFunction(Ljava/lang/String;)Lorg/mvel2/ast/Function;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/ast/Function;

    :goto_0
    return-object p1
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getImport(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getImports()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->getImports()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIndexedInputs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIndexedVarNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getInputs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    return-object v0
.end method

.method public getInterceptors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lk10/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->getInterceptors()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLastLineLabel()Lorg/mvel2/ast/LineLabel;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    return-object v0
.end method

.method public getLastTypeParameters()[Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    iget v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    return v0
.end method

.method public getLineFor(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/util/j$b;

    invoke-interface {p1, p2}, Lorg/mvel2/util/j$b;->a(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getLineOffset()I
    .locals 1

    iget v0, p0, Lorg/mvel2/ParserContext;->lineOffset:I

    return v0
.end method

.method public getParserConfiguration()Lorg/mvel2/ParserConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    return-object v0
.end method

.method public getProtoImport(Ljava/lang/String;)Lorg/mvel2/ast/Proto;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->getImports()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/ast/Proto;

    return-object p1
.end method

.method public getReturnTypeCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/ParserContext;->returnTypeCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->returnTypeCache:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->returnTypeCache:Ljava/util/Map;

    return-object v0
.end method

.method public getRootParser()Lorg/mvel2/compiler/b;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticImport(Ljava/lang/String;)Lorg/mvel2/util/MethodStub;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->getStaticImport(Ljava/lang/String;)Lorg/mvel2/util/MethodStub;

    move-result-object p1

    return-object p1
.end method

.method public getStaticOrClassImport(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->getStaticOrClassImport(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTypeParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getTypeParametersAsArray(Ljava/lang/String;)[Ljava/lang/reflect/Type;
    .locals 4

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/Class;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->getTypeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object v2
.end method

.method public getVarOrInputType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_1
    const-class p1, Ljava/lang/Object;

    return-object p1
.end method

.method public getVarOrInputTypeOrNull(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVariableScope()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVariables()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    return-object v0
.end method

.method public hasFunction()Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFunction(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasImport(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->hasImport(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasImports()Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->hasImports()Z

    move-result v0

    return v0
.end method

.method public hasIndexedInputs()Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProtoImport(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->getImports()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of p1, p1, Lorg/mvel2/ast/Proto;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasVarOrInput(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public incrementLineCount(I)I
    .locals 1

    iget v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    return v0
.end method

.method public initLineMapping(Ljava/lang/String;[C)V
    .locals 2

    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    new-instance v1, Lorg/mvel2/util/j;

    invoke-direct {v1, p2}, Lorg/mvel2/util/j;-><init>([C)V

    invoke-virtual {v1}, Lorg/mvel2/util/j;->b()Lorg/mvel2/util/j$b;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public initializeTables()V
    .locals 9

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->pushVariableScope()V

    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->getVariableScope()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v1}, Lorg/mvel2/ParserConfiguration;->getImports()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    const-string v2, "this"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x9

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_7

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "get"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "is"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v8, Ljava/lang/Boolean;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mvel2/util/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public isAllowBootstrapBypass()Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->isAllowBootstrapBypass()Z

    move-result v0

    return v0
.end method

.method public isBlockSymbols()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    return v0
.end method

.method public isCompiled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->compiled:Z

    return v0
.end method

.method public isDebugSymbols()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    return v0
.end method

.method public isExecutableCodeReached()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    return v0
.end method

.method public isFatalError()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    return v0
.end method

.method public isFunctionContext()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->functionContext:Z

    return v0
.end method

.method public isIndexAllocation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    return v0
.end method

.method public isLineMapped(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOptimizerNotified()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->optimizationMode:Z

    return v0
.end method

.method public isRetainParserState()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    return v0
.end method

.method public isStrictTypeEnforcement()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    return v0
.end method

.method public isStrongTyping()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    return v0
.end method

.method public isVariableVisible(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->hasImport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    iget-object v3, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_3

    return v1

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    :goto_1
    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method public isVariablesEscape()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->variablesEscape:Z

    return v0
.end method

.method public isVisitedLine(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public makeVisible(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->getVariableScope()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no context"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public optimizationNotify()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->optimizationMode:Z

    return-void
.end method

.method public popVariableScope()V
    .locals 2

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mvel2/ParserContext;->setLastTypeParameters([Ljava/lang/reflect/Type;)V

    :cond_0
    return-void
.end method

.method public processTables()V
    .locals 3

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pushVariableScope()V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initVariableVisibility()V

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAllowBootstrapBypass(Z)V
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->setAllowBootstrapBypass(Z)V

    return-void
.end method

.method public setBlockSymbols(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    return-void
.end method

.method public setCompiled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->compiled:Z

    return-void
.end method

.method public setDebugSymbols(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    return-void
.end method

.method public setErrorList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    return-void
.end method

.method public setExecutableCodeReached(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    return-void
.end method

.method public setFatalError(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    return-void
.end method

.method public setImports(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v1}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lorg/mvel2/util/MethodStub;

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Lorg/mvel2/util/MethodStub;

    invoke-virtual {p0, v0, v1}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/String;Lorg/mvel2/util/MethodStub;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid element in imports map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public setIndexAllocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    return-void
.end method

.method public setInputs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    return-void
.end method

.method public setInterceptors(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lk10/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->setInterceptors(Ljava/util/Map;)V

    return-void
.end method

.method public setLastLineLabel(Lorg/mvel2/ast/LineLabel;)Lorg/mvel2/ast/LineLabel;
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    return-object p1
.end method

.method public setLastTypeParameters([Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    return-void
.end method

.method public setLineAndOffset(II)V
    .locals 0

    iput p2, p0, Lorg/mvel2/ParserContext;->lineOffset:I

    return-void
.end method

.method public setLineCount(I)I
    .locals 0

    iput p1, p0, Lorg/mvel2/ParserContext;->lineCount:I

    return p1
.end method

.method public setLineOffset(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/ParserContext;->lineOffset:I

    return-void
.end method

.method public setRetainParserState(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    return-void
.end method

.method public setRootParser(Lorg/mvel2/compiler/b;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setStrictTypeEnforcement(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    return-void
.end method

.method public setStrongTyping(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    :cond_0
    return-void
.end method

.method public setVariables(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    return-void
.end method

.method public stronglyTyped()Lorg/mvel2/ParserContext;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mvel2/ParserContext;->setStrongTyping(Z)V

    return-object p0
.end method

.method public variableIndexOf(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method public visitLine(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public withImport(Ljava/lang/Class;)Lorg/mvel2/ParserContext;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/Class;)V

    return-object p0
.end method

.method public withIndexedVars([Ljava/lang/String;)Lorg/mvel2/ParserContext;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withInput(Ljava/lang/String;Ljava/lang/Class;)Lorg/mvel2/ParserContext;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p0
.end method

.method public withInputs(Ljava/util/Map;)Lorg/mvel2/ParserContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)",
            "Lorg/mvel2/ParserContext;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->setInputs(Ljava/util/Map;)V

    return-object p0
.end method

.method public withTypeParameters(Ljava/util/Map;)Lorg/mvel2/ParserContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;>;)",
            "Lorg/mvel2/ParserContext;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->addTypeParameters(Ljava/util/Map;)V

    return-object p0
.end method
