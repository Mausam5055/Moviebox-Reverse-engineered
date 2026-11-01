.class public Lr10/b;
.super Ljava/lang/Object;


# static fields
.field private static final k:Ljava/util/Map;


# instance fields
.field private a:[C

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/util/Map;

.field private j:Lorg/mvel2/ParserContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lr10/b;->k:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "if"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "else"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "elseif"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "end"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "foreach"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "includeNamed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "include"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "comment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eval"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "declare"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stop"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ZLorg/mvel2/ParserContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr10/b;->h:Z

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lr10/b;->a:[C

    array-length p1, p1

    iput p1, p0, Lr10/b;->b:I

    iput-boolean p2, p0, Lr10/b;->h:Z

    iput-object p3, p0, Lr10/b;->j:Lorg/mvel2/ParserContext;

    return-void
.end method

.method private a()[C
    .locals 5

    iget v0, p0, Lr10/b;->d:I

    iget v1, p0, Lr10/b;->c:I

    sub-int/2addr v0, v1

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lr10/b;->a:[C

    iget v4, p0, Lr10/b;->c:I

    add-int/2addr v4, v2

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b()I
    .locals 5

    :try_start_0
    new-instance v0, Lorg/mvel2/ParserContext;

    invoke-direct {v0}, Lorg/mvel2/ParserContext;-><init>()V

    iget-object v1, p0, Lr10/b;->a:[C

    iget v2, p0, Lr10/b;->d:I

    iput v2, p0, Lr10/b;->c:I

    iget v3, p0, Lr10/b;->b:I

    const/16 v4, 0x7b

    invoke-static {v1, v2, v3, v4, v0}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    move-result v1

    iput v1, p0, Lr10/b;->d:I

    iget v1, p0, Lr10/b;->f:I

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getLineCount()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lr10/b;->f:I

    iget v0, p0, Lr10/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lr10/b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lr10/b;->c:I
    :try_end_0
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget v1, p0, Lr10/b;->f:I

    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setLineNumber(I)V

    iget v1, p0, Lr10/b;->d:I

    iget v2, p0, Lr10/b;->g:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setColumn(I)V

    throw v0
.end method

.method private c()I
    .locals 3

    iget v0, p0, Lr10/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr10/b;->d:I

    :goto_0
    iget v1, p0, Lr10/b;->d:I

    iget v2, p0, Lr10/b;->b:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lr10/b;->a:[C

    aget-char v1, v2, v1

    invoke-static {v1}, Lorg/mvel2/util/m;->c0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lr10/b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lr10/b;->d:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lr10/b;->d:I

    iget v2, p0, Lr10/b;->b:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lr10/b;->a:[C

    aget-char v1, v2, v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static f(Ljava/lang/String;)Lorg/mvel2/templates/CompiledTemplate;
    .locals 3

    new-instance v0, Lr10/b;

    const/4 v1, 0x1

    invoke-static {}, Lorg/mvel2/ParserContext;->create()Lorg/mvel2/ParserContext;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lr10/b;-><init>(Ljava/lang/CharSequence;ZLorg/mvel2/ParserContext;)V

    invoke-virtual {v0}, Lr10/b;->d()Lorg/mvel2/templates/CompiledTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Lorg/mvel2/ParserContext;)Lorg/mvel2/templates/CompiledTemplate;
    .locals 2

    new-instance v0, Lr10/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lr10/b;-><init>(Ljava/lang/CharSequence;ZLorg/mvel2/ParserContext;)V

    invoke-virtual {v0}, Lr10/b;->d()Lorg/mvel2/templates/CompiledTemplate;

    move-result-object p0

    return-object p0
.end method

.method private h(C)Z
    .locals 3

    iget v0, p0, Lr10/b;->d:I

    iget v1, p0, Lr10/b;->b:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lr10/b;->a:[C

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-char v0, v1, v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;
    .locals 3

    invoke-virtual {p1}, Lorg/mvel2/templates/res/Node;->getEnd()I

    move-result v0

    iget v1, p0, Lr10/b;->e:I

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/mvel2/templates/res/Node;->getEnd()I

    move-result v1

    :cond_0
    iget v0, p0, Lr10/b;->c:I

    if-ge v1, v0, :cond_1

    new-instance v2, Lorg/mvel2/templates/res/TextNode;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr10/b;->e:I

    invoke-direct {v2, v1, v0}, Lorg/mvel2/templates/res/TextNode;-><init>(II)V

    iput-object v2, p1, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    return-object v2

    :cond_1
    return-object p1
.end method


# virtual methods
.method public d()Lorg/mvel2/templates/CompiledTemplate;
    .locals 4

    new-instance v0, Lorg/mvel2/templates/CompiledTemplate;

    iget-object v1, p0, Lr10/b;->a:[C

    new-instance v2, Lorg/mvel2/util/g;

    invoke-direct {v2}, Lorg/mvel2/util/g;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lr10/b;->e(Lorg/mvel2/templates/res/Node;Lorg/mvel2/util/g;)Lorg/mvel2/templates/res/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/mvel2/templates/CompiledTemplate;-><init>([CLorg/mvel2/templates/res/Node;)V

    return-object v0
.end method

.method public e(Lorg/mvel2/templates/res/Node;Lorg/mvel2/util/g;)Lorg/mvel2/templates/res/Node;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "unable to instantiate custom node class: "

    const/4 v3, 0x1

    iput v3, v1, Lr10/b;->f:I

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v5, Lorg/mvel2/templates/res/TextNode;

    invoke-direct {v5, v4, v4}, Lorg/mvel2/templates/res/TextNode;-><init>(II)V

    :goto_0
    move-object v6, v5

    goto :goto_1

    :cond_0
    move-object/from16 v5, p1

    goto :goto_0

    :goto_1
    const/4 v7, -0x1

    :try_start_0
    iget v8, v1, Lr10/b;->d:I

    iget v9, v1, Lr10/b;->b:I

    if-ge v8, v9, :cond_16

    iget-object v9, v1, Lr10/b;->a:[C

    aget-char v9, v9, v8

    const/16 v10, 0xa

    if-eq v9, v10, :cond_14

    const/16 v8, 0x24

    if-eq v9, v8, :cond_1

    const/16 v8, 0x40

    if-eq v9, v8, :cond_1

    goto/16 :goto_e

    :cond_1
    invoke-direct {v1, v9}, Lr10/b;->h(C)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v1, Lr10/b;->d:I

    add-int/2addr v8, v3

    iput v8, v1, Lr10/b;->d:I

    iput v8, v1, Lr10/b;->c:I

    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mvel2/templates/res/Node;->getEnd()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v5, v8}, Lorg/mvel2/templates/res/Node;->setEnd(I)V

    iget v8, v1, Lr10/b;->d:I

    add-int/2addr v8, v3

    iput v8, v1, Lr10/b;->d:I

    iput v8, v1, Lr10/b;->e:I

    iput v8, v1, Lr10/b;->c:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_11

    :cond_2
    invoke-direct/range {p0 .. p0}, Lr10/b;->c()I

    move-result v8

    if-eq v8, v7, :cond_15

    iput v8, v1, Lr10/b;->c:I

    sget-object v8, Lr10/b;->k:Ljava/util/Map;

    new-instance v13, Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lr10/b;->a()[C

    move-result-object v9

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    if-eq v8, v3, :cond_12

    const/4 v9, 0x2

    if-eq v8, v9, :cond_10

    const/4 v9, 0x3

    if-eq v8, v9, :cond_e

    if-eq v8, v10, :cond_d

    packed-switch v8, :pswitch_data_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lr10/b;->h:Z

    if-eqz v8, :cond_4

    new-instance v8, Lorg/mvel2/templates/res/CompiledExpressionNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    iget-object v10, v1, Lr10/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledExpressionNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_3

    :cond_4
    new-instance v8, Lorg/mvel2/templates/res/ExpressionNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/ExpressionNode;-><init>(ILjava/lang/String;[CII)V

    :goto_3
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    :goto_4
    move-object v5, v8

    goto/16 :goto_e

    :cond_5
    iget-object v8, v1, Lr10/b;->i:Ljava/util/Map;

    if-eqz v8, :cond_7

    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v1, Lr10/b;->i:Ljava/util/Map;

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mvel2/templates/res/Node;

    iput-object v9, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    iget v5, v1, Lr10/b;->c:I

    invoke-virtual {v9, v5}, Lorg/mvel2/templates/res/Node;->setBegin(I)V

    invoke-virtual {v9, v13}, Lorg/mvel2/templates/res/Node;->setName(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v5

    invoke-virtual {v9, v5}, Lorg/mvel2/templates/res/Node;->setCStart(I)V

    iget v5, v1, Lr10/b;->d:I

    add-int/2addr v5, v3

    iput v5, v1, Lr10/b;->c:I

    invoke-virtual {v9, v5}, Lorg/mvel2/templates/res/Node;->setCEnd(I)V

    invoke-virtual {v9}, Lorg/mvel2/templates/res/Node;->getCEnd()I

    move-result v5

    invoke-virtual {v9, v5}, Lorg/mvel2/templates/res/Node;->setEnd(I)V

    iget-object v5, v1, Lr10/b;->a:[C

    invoke-virtual {v9}, Lorg/mvel2/templates/res/Node;->getCStart()I

    move-result v10

    invoke-virtual {v9}, Lorg/mvel2/templates/res/Node;->getCEnd()I

    move-result v11

    invoke-virtual {v9}, Lorg/mvel2/templates/res/Node;->getCStart()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v11, v3

    invoke-static {v5, v10, v11}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/mvel2/templates/res/Node;->setContents([C)V

    invoke-virtual {v9}, Lorg/mvel2/templates/res/Node;->isOpenNode()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v9}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_5
    move-object v5, v9

    goto/16 :goto_e

    :catch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown token type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lr10/b;->h:Z

    if-eqz v8, :cond_8

    new-instance v8, Lorg/mvel2/templates/res/CompiledEvalNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    iget-object v10, v1, Lr10/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledEvalNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_6

    :cond_8
    new-instance v8, Lorg/mvel2/templates/res/EvalNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/EvalNode;-><init>(ILjava/lang/String;[CII)V

    :goto_6
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_4

    :pswitch_1
    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lr10/b;->h:Z

    if-eqz v8, :cond_9

    new-instance v8, Lorg/mvel2/templates/res/CompiledDeclareNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    iget-object v10, v1, Lr10/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledDeclareNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_7

    :cond_9
    new-instance v8, Lorg/mvel2/templates/res/DeclareNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/DeclareNode;-><init>(ILjava/lang/String;[CII)V

    :goto_7
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    invoke-virtual {v0, v8}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    new-instance v5, Lorg/mvel2/templates/res/TerminalNode;

    invoke-direct {v5}, Lorg/mvel2/templates/res/TerminalNode;-><init>()V

    invoke-virtual {v8, v5}, Lorg/mvel2/templates/res/Node;->setTerminus(Lorg/mvel2/templates/res/Node;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lr10/b;->h:Z

    if-eqz v8, :cond_a

    new-instance v8, Lorg/mvel2/templates/res/CompiledCodeNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    iget-object v10, v1, Lr10/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledCodeNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_8

    :cond_a
    new-instance v8, Lorg/mvel2/templates/res/CodeNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/CodeNode;-><init>(ILjava/lang/String;[CII)V

    :goto_8
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_4

    :pswitch_3
    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    new-instance v8, Lorg/mvel2/templates/res/CommentNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/CommentNode;-><init>(ILjava/lang/String;[CII)V

    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_4

    :pswitch_4
    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lr10/b;->h:Z

    if-eqz v8, :cond_b

    new-instance v8, Lorg/mvel2/templates/res/CompiledNamedIncludeNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    iget-object v10, v1, Lr10/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledNamedIncludeNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_9

    :cond_b
    new-instance v8, Lorg/mvel2/templates/res/NamedIncludeNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/NamedIncludeNode;-><init>(ILjava/lang/String;[CII)V

    :goto_9
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_4

    :pswitch_5
    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lr10/b;->h:Z

    if-eqz v8, :cond_c

    new-instance v8, Lorg/mvel2/templates/res/CompiledIncludeNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    iget-object v10, v1, Lr10/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledIncludeNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_a

    :cond_c
    new-instance v8, Lorg/mvel2/templates/res/IncludeNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/IncludeNode;-><init>(ILjava/lang/String;[CII)V

    :goto_a
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_4

    :cond_d
    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mvel2/templates/res/Node;

    invoke-virtual {v8}, Lorg/mvel2/templates/res/Node;->getTerminus()Lorg/mvel2/templates/res/Node;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/mvel2/templates/res/Node;->setCStart(I)V

    iget v10, v1, Lr10/b;->c:I

    iput v10, v1, Lr10/b;->e:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lorg/mvel2/templates/res/Node;->setEnd(I)V

    iget-object v10, v1, Lr10/b;->a:[C

    invoke-virtual {v9, v10}, Lorg/mvel2/templates/res/Node;->calculateContents([C)V

    iget-object v10, v1, Lr10/b;->a:[C

    invoke-virtual {v8, v9, v10}, Lorg/mvel2/templates/res/Node;->demarcate(Lorg/mvel2/templates/res/Node;[C)Z

    move-result v8

    if-eqz v8, :cond_6

    iput-object v9, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_5

    :cond_e
    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lr10/b;->h:Z

    if-eqz v8, :cond_f

    new-instance v8, Lorg/mvel2/templates/res/CompiledForEachNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->c:I

    iget-object v10, v1, Lr10/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledForEachNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_b

    :cond_f
    new-instance v8, Lorg/mvel2/templates/res/ForEachNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/ForEachNode;-><init>(ILjava/lang/String;[CII)V

    :goto_b
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    invoke-virtual {v0, v8}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    new-instance v5, Lorg/mvel2/templates/res/TerminalNode;

    invoke-direct {v5}, Lorg/mvel2/templates/res/TerminalNode;-><init>()V

    invoke-virtual {v8, v5}, Lorg/mvel2/templates/res/Node;->setTerminus(Lorg/mvel2/templates/res/Node;)V

    goto/16 :goto_4

    :cond_10
    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->g()Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/mvel2/templates/res/IfNode;

    if-eqz v8, :cond_15

    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mvel2/templates/res/IfNode;

    invoke-virtual {v8}, Lorg/mvel2/templates/res/Node;->getTerminus()Lorg/mvel2/templates/res/Node;

    move-result-object v9

    iput-object v9, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    invoke-virtual {v8}, Lorg/mvel2/templates/res/Node;->getTerminus()Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-object v9, v1, Lr10/b;->a:[C

    invoke-virtual {v8, v5, v9}, Lorg/mvel2/templates/res/IfNode;->demarcate(Lorg/mvel2/templates/res/Node;[C)Z

    iget-boolean v5, v1, Lr10/b;->h:Z

    if-eqz v5, :cond_11

    new-instance v5, Lorg/mvel2/templates/res/CompiledIfNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->c:I

    iget-object v10, v1, Lr10/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v5

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledIfNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_c

    :cond_11
    new-instance v5, Lorg/mvel2/templates/res/IfNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->c:I

    move-object v11, v5

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/IfNode;-><init>(ILjava/lang/String;[CII)V

    :goto_c
    iput-object v5, v8, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    invoke-virtual {v8}, Lorg/mvel2/templates/res/Node;->getTerminus()Lorg/mvel2/templates/res/Node;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/mvel2/templates/res/Node;->setTerminus(Lorg/mvel2/templates/res/Node;)V

    invoke-virtual {v0, v5}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    goto :goto_e

    :cond_12
    invoke-direct {v1, v5}, Lr10/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lr10/b;->h:Z

    if-eqz v8, :cond_13

    new-instance v8, Lorg/mvel2/templates/res/CompiledIfNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->c:I

    iget-object v10, v1, Lr10/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledIfNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_d

    :cond_13
    new-instance v8, Lorg/mvel2/templates/res/IfNode;

    iget v12, v1, Lr10/b;->c:I

    iget-object v14, v1, Lr10/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lr10/b;->b()I

    move-result v15

    iget v9, v1, Lr10/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/IfNode;-><init>(ILjava/lang/String;[CII)V

    :goto_d
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    invoke-virtual {v0, v8}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    new-instance v5, Lorg/mvel2/templates/res/TerminalNode;

    invoke-direct {v5}, Lorg/mvel2/templates/res/TerminalNode;-><init>()V

    invoke-virtual {v8, v5}, Lorg/mvel2/templates/res/Node;->setTerminus(Lorg/mvel2/templates/res/Node;)V

    goto/16 :goto_4

    :cond_14
    iget v9, v1, Lr10/b;->f:I

    add-int/2addr v9, v3

    iput v9, v1, Lr10/b;->f:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lr10/b;->g:I

    :cond_15
    :goto_e
    iget v8, v1, Lr10/b;->d:I

    add-int/2addr v8, v3

    iput v8, v1, Lr10/b;->d:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_16
    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->g()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v0, v1, Lr10/b;->c:I

    iget-object v2, v1, Lr10/b;->a:[C

    array-length v4, v2

    if-ge v0, v4, :cond_17

    new-instance v4, Lorg/mvel2/templates/res/TextNode;

    array-length v2, v2

    invoke-direct {v4, v0, v2}, Lorg/mvel2/templates/res/TextNode;-><init>(II)V

    iput-object v4, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    move-object v5, v4

    :cond_17
    new-instance v0, Lorg/mvel2/templates/res/EndNode;

    invoke-direct {v0}, Lorg/mvel2/templates/res/EndNode;-><init>()V

    iput-object v0, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    move-object v0, v6

    :cond_18
    invoke-virtual {v0}, Lorg/mvel2/templates/res/Node;->getLength()I

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_f

    :cond_19
    invoke-virtual {v0}, Lorg/mvel2/templates/res/Node;->getNext()Lorg/mvel2/templates/res/Node;

    move-result-object v0

    if-nez v0, :cond_18

    :goto_f
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lorg/mvel2/templates/res/Node;->getLength()I

    move-result v2

    iget-object v4, v1, Lr10/b;->a:[C

    array-length v4, v4

    sub-int/2addr v4, v3

    if-ne v2, v4, :cond_1c

    instance-of v2, v0, Lorg/mvel2/templates/res/ExpressionNode;

    if-eqz v2, :cond_1b

    iget-boolean v2, v1, Lr10/b;->h:Z

    if-eqz v2, :cond_1a

    new-instance v2, Lorg/mvel2/templates/res/CompiledTerminalExpressionNode;

    iget-object v3, v1, Lr10/b;->j:Lorg/mvel2/ParserContext;

    invoke-direct {v2, v0, v3}, Lorg/mvel2/templates/res/CompiledTerminalExpressionNode;-><init>(Lorg/mvel2/templates/res/Node;Lorg/mvel2/ParserContext;)V

    goto :goto_10

    :cond_1a
    new-instance v2, Lorg/mvel2/templates/res/TerminalExpressionNode;

    invoke-direct {v2, v0}, Lorg/mvel2/templates/res/TerminalExpressionNode;-><init>(Lorg/mvel2/templates/res/Node;)V

    :goto_10
    return-object v2

    :cond_1b
    return-object v0

    :cond_1c
    return-object v6

    :cond_1d
    new-instance v2, Lorg/mvel2/CompileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unclosed @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/templates/res/Node;

    invoke-virtual {v0}, Lorg/mvel2/templates/res/Node;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{} block. expected @end{}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lr10/b;->a:[C

    iget v4, v1, Lr10/b;->d:I

    invoke-direct {v2, v0, v3, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    iget v0, v1, Lr10/b;->d:I

    iget v3, v1, Lr10/b;->g:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setColumn(I)V

    iget v0, v1, Lr10/b;->f:I

    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setLineNumber(I)V

    throw v2

    :goto_11
    new-instance v2, Lorg/mvel2/CompileException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lr10/b;->a:[C

    iget v5, v1, Lr10/b;->d:I

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    iget-object v3, v1, Lr10/b;->a:[C

    invoke-virtual {v2, v3}, Lorg/mvel2/CompileException;->setExpr([C)V

    instance-of v3, v0, Lorg/mvel2/CompileException;

    if-eqz v3, :cond_1f

    check-cast v0, Lorg/mvel2/CompileException;

    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    move-result v3

    if-eq v3, v7, :cond_1f

    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/mvel2/CompileException;->setCursor(I)V

    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getColumn()I

    move-result v3

    if-ne v3, v7, :cond_1e

    invoke-virtual {v2}, Lorg/mvel2/CompileException;->getCursor()I

    move-result v0

    iget v3, v1, Lr10/b;->g:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setColumn(I)V

    goto :goto_12

    :cond_1e
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getColumn()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setColumn(I)V

    :cond_1f
    :goto_12
    iget v0, v1, Lr10/b;->f:I

    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setLineNumber(I)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
