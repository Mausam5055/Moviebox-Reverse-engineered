.class public Lorg/mvel2/util/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)Lorg/mvel2/ast/BinaryOperation;
    .locals 2

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_4

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, v1, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Lorg/mvel2/ast/BinaryOperation;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/mvel2/ast/IntDiv;

    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/ast/IntDiv;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/mvel2/ast/IntMult;

    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/ast/IntMult;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    return-object p0

    :cond_2
    new-instance p0, Lorg/mvel2/ast/IntSub;

    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/ast/IntSub;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/mvel2/ast/IntAdd;

    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/ast/IntAdd;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    return-object p0

    :cond_4
    new-instance v0, Lorg/mvel2/ast/BinaryOperation;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    return-object v0
.end method

.method public static b(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;Ljava/lang/Class;Z)V
    .locals 5

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "<Unknown>"

    const-string v1, "; but found type: "

    const-string v2, "was expecting type: "

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_3

    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [C

    invoke-direct {p0, p1, p2, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p0

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    new-instance p0, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [C

    invoke-direct {p0, p1, p2, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p0
.end method

.method public static c(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/a;Ljava/lang/Class;Z)V
    .locals 6

    invoke-interface {p1}, Lorg/mvel2/compiler/a;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "<Unknown>"

    const-string v1, "; but found type: "

    const-string v2, "was expecting type: "

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_4

    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_1
    new-instance p0, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [C

    invoke-direct {p0, p1, p2, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p0

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance p0, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [C

    invoke-direct {p0, p1, p2, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p0
.end method

.method public static d(Lorg/mvel2/util/ASTLinkedList;ZLorg/mvel2/ParserContext;)Lorg/mvel2/util/ASTLinkedList;
    .locals 17

    move-object/from16 v8, p2

    new-instance v9, Lorg/mvel2/util/ASTLinkedList;

    invoke-direct {v9}, Lorg/mvel2/util/ASTLinkedList;-><init>()V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    const/4 v3, -0x1

    if-eqz v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getFields()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {v9, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getFields()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {v9, v4, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_16

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v6

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v7

    const-class v10, Ljava/lang/Integer;

    if-ne v7, v10, :cond_2

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v7

    if-ne v7, v10, :cond_2

    invoke-static {v0, v4, v6, v8}, Lorg/mvel2/util/e;->a(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)Lorg/mvel2/ast/BinaryOperation;

    move-result-object v4

    goto/16 :goto_7

    :cond_2
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    move-result v10

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v5, v6}, Lorg/mvel2/util/e;->i(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v7

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    move v13, v11

    const/4 v14, 0x0

    move v11, v10

    move-object v10, v6

    move-object v6, v1

    :goto_2
    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_6

    :cond_4
    new-instance v12, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v15}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eqz v11, :cond_5

    new-instance v2, Lorg/mvel2/ast/LiteralNode;

    invoke-virtual {v10}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/mvel2/util/e;->l(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    goto :goto_3

    :cond_5
    move-object v2, v10

    :goto_3
    invoke-direct {v12, v15, v2, v7, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v12, v1, v1, v1}, Lorg/mvel2/ast/BinaryOperation;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lorg/mvel2/compiler/BlankLiteral;->INSTANCE:Lorg/mvel2/compiler/BlankLiteral;

    invoke-virtual {v3, v2}, Lorg/mvel2/compiler/BlankLiteral;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v9, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    const/16 v2, 0x15

    const/4 v3, -0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->peekNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/mvel2/util/e;->k(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->peekNext()Lorg/mvel2/ast/ASTNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    if-eqz v11, :cond_8

    const/4 v14, 0x1

    :cond_8
    if-nez v13, :cond_a

    new-instance v6, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v7, Lorg/mvel2/ast/LiteralNode;

    if-eqz v14, :cond_9

    invoke-static {v2}, Lorg/mvel2/util/e;->l(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v2

    :cond_9
    invoke-direct {v7, v2, v8}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-direct {v6, v3, v4, v7, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    goto :goto_5

    :cond_a
    new-instance v3, Lorg/mvel2/ast/LiteralNode;

    invoke-direct {v3, v2, v8}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    move-object v10, v3

    :goto_5
    const/16 v2, 0x15

    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_b
    :goto_6
    if-nez v6, :cond_c

    new-instance v2, Lorg/mvel2/ast/BinaryOperation;

    invoke-direct {v2, v0, v4, v10, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    move-object v4, v2

    goto :goto_7

    :cond_c
    move-object v4, v6

    :goto_7
    move-object v2, v1

    move-object v1, v4

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->getFields()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13

    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_13

    const/16 v4, 0x15

    if-ge v3, v4, :cond_13

    sget-object v4, Lorg/mvel2/f;->a:[I

    aget v5, v4, v3

    aget v6, v4, v0

    if-le v5, v6, :cond_d

    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getRightMost()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    invoke-static {v3, v0, v4, v8}, Lorg/mvel2/util/e;->a(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)Lorg/mvel2/ast/BinaryOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mvel2/ast/BinaryOperation;->setRightMost(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_9

    :cond_d
    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getOperation()I

    move-result v5

    if-eq v5, v3, :cond_10

    aget v0, v4, v0

    aget v5, v4, v3

    if-ne v0, v5, :cond_10

    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getOperation()I

    move-result v0

    aget v0, v4, v0

    aget v4, v4, v3

    if-ne v0, v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-static {v3, v1, v0, v8}, Lorg/mvel2/util/e;->a(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)Lorg/mvel2/ast/BinaryOperation;

    move-result-object v1

    goto :goto_9

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/mvel2/util/e;->h(Lorg/mvel2/ast/BooleanNode;Lorg/mvel2/ast/ASTNode;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getOperation()I

    move-result v5

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getLeft()Lorg/mvel2/ast/ASTNode;

    move-result-object v6

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getRight()Lorg/mvel2/ast/ASTNode;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    move-object v1, v4

    :cond_f
    new-instance v4, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getRight()Lorg/mvel2/ast/ASTNode;

    move-result-object v5

    invoke-direct {v4, v3, v5, v0, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v1, v4}, Lorg/mvel2/ast/BooleanNode;->setRight(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_9

    :cond_10
    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getOperation()I

    move-result v0

    aget v0, v4, v0

    aget v4, v4, v3

    if-lt v0, v4, :cond_11

    new-instance v0, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    invoke-direct {v0, v3, v1, v4, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    move-object v1, v0

    goto :goto_9

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/mvel2/util/e;->h(Lorg/mvel2/ast/BooleanNode;Lorg/mvel2/ast/ASTNode;)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v4, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getOperation()I

    move-result v5

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getLeft()Lorg/mvel2/ast/ASTNode;

    move-result-object v6

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getRight()Lorg/mvel2/ast/ASTNode;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    move-object v1, v4

    :cond_12
    new-instance v4, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getRight()Lorg/mvel2/ast/ASTNode;

    move-result-object v5

    invoke-direct {v4, v3, v5, v0, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v1, v4}, Lorg/mvel2/ast/BooleanNode;->setRight(Lorg/mvel2/ast/ASTNode;)V

    :goto_9
    move-object v5, v2

    move v0, v3

    goto/16 :goto_8

    :cond_13
    if-eqz v2, :cond_14

    if-eq v2, v5, :cond_14

    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lorg/mvel2/util/e;->j(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/ParserContext;)V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v9, v1}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    :cond_15
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal use of operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v2

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_16
    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lorg/mvel2/util/e;->j(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/ParserContext;)V

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->isAssignment()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_18

    new-instance v10, Lorg/mvel2/ast/DeclTypedVarNode;

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v2

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result v3

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getOffset()I

    move-result v5

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Class;

    const/4 v7, 0x0

    move-object v0, v10

    move v4, v5

    move-object v5, v6

    move v6, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/mvel2/ast/DeclTypedVarNode;-><init>(Ljava/lang/String;[CIILjava/lang/Class;ILorg/mvel2/ParserContext;)V

    invoke-virtual {v9, v10}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->isAssignment()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_19

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->discard()V

    invoke-virtual {v9, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->peekNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->isAssignment()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->discard()V

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->back()V

    invoke-virtual {v9, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v9, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    :cond_1c
    if-eqz p1, :cond_2a

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->reset()V

    new-instance v0, Lorg/mvel2/util/ASTLinkedList;

    invoke-direct {v0}, Lorg/mvel2/util/ASTLinkedList;-><init>()V

    :cond_1d
    :goto_a
    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->getFields()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    invoke-virtual {v0, v2}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_a

    :cond_1e
    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getFields()I

    move-result v5

    if-ne v5, v4, :cond_1f

    invoke-virtual {v0, v2, v3}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    goto :goto_a

    :cond_1f
    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x16

    const/16 v7, 0x15

    if-eq v5, v7, :cond_20

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_27

    :cond_20
    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_21

    new-instance v5, Lorg/mvel2/ast/And;

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v10

    invoke-direct {v5, v2, v7, v10, v8}, Lorg/mvel2/ast/And;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;ZLorg/mvel2/ParserContext;)V

    :goto_b
    move-object v2, v1

    goto :goto_c

    :cond_21
    new-instance v5, Lorg/mvel2/ast/Or;

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v10

    invoke-direct {v5, v2, v7, v10, v8}, Lorg/mvel2/ast/Or;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;ZLorg/mvel2/ParserContext;)V

    goto :goto_b

    :goto_c
    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v7

    if-eqz v7, :cond_24

    const/16 v7, 0x15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    move-result v10

    if-nez v10, :cond_22

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    move-result v10

    if-eqz v10, :cond_25

    :cond_22
    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_23

    new-instance v3, Lorg/mvel2/ast/And;

    invoke-virtual {v5}, Lorg/mvel2/ast/BooleanNode;->getRightMost()Lorg/mvel2/ast/ASTNode;

    move-result-object v10

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v12

    invoke-direct {v3, v10, v11, v12, v8}, Lorg/mvel2/ast/And;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;ZLorg/mvel2/ParserContext;)V

    invoke-virtual {v5, v3}, Lorg/mvel2/ast/BooleanNode;->setRightMost(Lorg/mvel2/ast/ASTNode;)V

    :goto_d
    move-object v3, v2

    goto :goto_c

    :cond_23
    new-instance v3, Lorg/mvel2/ast/Or;

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v11

    invoke-direct {v3, v5, v10, v11, v8}, Lorg/mvel2/ast/Or;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;ZLorg/mvel2/ParserContext;)V

    move-object v5, v3

    goto :goto_d

    :cond_24
    const/16 v7, 0x15

    :cond_25
    invoke-virtual {v0, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    if-eqz v2, :cond_1d

    if-eq v2, v3, :cond_1d

    invoke-virtual {v0, v2}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_a

    :cond_26
    const/16 v7, 0x15

    :cond_27
    invoke-virtual {v0, v2, v3}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_a

    :cond_28
    const/16 v7, 0x15

    invoke-virtual {v0, v2}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_a

    :cond_29
    move-object v9, v0

    :cond_2a
    return-object v9
.end method

.method public static e(Lorg/mvel2/integration/VariableResolverFactory;)Ljava/util/Map;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    if-eqz v1, :cond_1

    check-cast p0, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    invoke-virtual {p0}, Lorg/mvel2/integration/impl/ClassImportResolverFactory;->getImportedClasses()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/mvel2/integration/VariableResolverFactory;->getNextFactory()Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0
.end method

.method public static f(Lorg/mvel2/util/ASTIterator;Z)Ljava/lang/Class;
    .locals 3

    invoke-interface {p0}, Lorg/mvel2/util/ASTIterator;->firstNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    if-nez v0, :cond_0

    const-class p0, Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/mvel2/util/ASTIterator;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/mvel2/util/a;->b(Lorg/mvel2/util/ASTIterator;)Lorg/mvel2/util/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mvel2/util/a;->d(Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static g(ILjava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_4

    const/16 v0, 0x24

    if-eq p0, v0, :cond_4

    const-class v0, Ljava/lang/String;

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    return-object v0

    :pswitch_1
    const-class p0, Ljava/lang/Integer;

    return-object p0

    :pswitch_2
    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :pswitch_3
    const-class p0, Ljava/lang/Object;

    if-eq p1, p0, :cond_3

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p0

    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result v0

    if-ge p0, v0, :cond_2

    move-object p1, p2

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object p0

    :cond_4
    :pswitch_4
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static h(Lorg/mvel2/ast/BooleanNode;Lorg/mvel2/ast/ASTNode;)Z
    .locals 0

    instance-of p0, p0, Lorg/mvel2/ast/c;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Ljava/lang/Integer;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static i(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/mvel2/util/e;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mvel2/f;->a:[I

    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget p0, v0, p0

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v0, v0, v1

    if-gt p0, v0, :cond_0

    iget-object p0, p1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/Number;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static j(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/ParserContext;)V
    .locals 1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p5}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p0

    const-class p3, Ljava/lang/Boolean;

    if-eq p0, p3, :cond_1

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p0

    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Condition of ternary operator is not of type boolean. Found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p4, p1, p2}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    goto :goto_1

    :pswitch_1
    new-instance p0, Lorg/mvel2/ast/Strsim;

    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/Strsim;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_1

    :pswitch_2
    new-instance p0, Lorg/mvel2/ast/Soundslike;

    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/Soundslike;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_1

    :pswitch_3
    new-instance p0, Lorg/mvel2/ast/Contains;

    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/Contains;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_1

    :pswitch_4
    new-instance p0, Lorg/mvel2/ast/Instance;

    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/Instance;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_1

    :pswitch_5
    new-instance p0, Lorg/mvel2/ast/RegExMatchNode;

    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/RegExMatchNode;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/mvel2/ast/Convertable;

    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/Convertable;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static k(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static l(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 3

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    neg-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected a numeric type but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [C

    invoke-direct {v0, p0, v2, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0
.end method
