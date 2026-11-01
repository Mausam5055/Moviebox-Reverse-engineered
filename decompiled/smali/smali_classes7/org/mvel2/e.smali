.class public Lorg/mvel2/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZLorg/mvel2/compiler/CompiledExpression;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

    new-instance v0, Lorg/mvel2/util/g;

    invoke-direct {v0}, Lorg/mvel2/util/g;-><init>()V

    invoke-virtual {p1}, Lorg/mvel2/compiler/CompiledExpression;->getFirstNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget v3, v1, Lorg/mvel2/ast/ASTNode;->fields:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    if-nez p0, :cond_1

    invoke-static {}, Lorg/mvel2/e;->b()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_f

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :catch_0
    move-exception p0

    goto/16 :goto_9

    :cond_1
    :goto_0
    :try_start_1
    sget-object v3, Lorg/mvel2/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj10/b;

    move-object v4, v1

    check-cast v4, Lorg/mvel2/ast/LineLabel;

    invoke-virtual {v3, v4, p3, p1}, Lj10/b;->a(Lorg/mvel2/ast/LineLabel;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/compiler/CompiledExpression;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lorg/mvel2/util/g;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, p2, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p3}, Lorg/mvel2/integration/VariableResolverFactory;->tiltFlag()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    return-object p0

    :cond_4
    :try_start_3
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_f

    const/16 v4, 0x25

    if-eq v5, v4, :cond_e

    const/16 v4, 0x63

    if-eq v5, v4, :cond_d

    const/16 v4, 0x1d

    const/16 v6, 0x1e

    if-eq v5, v4, :cond_a

    if-eq v5, v6, :cond_9

    iget-object v4, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v4, p2, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/mvel2/util/g;->r(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v0}, Lorg/mvel2/util/g;->h()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_8

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/mvel2/util/n;->k(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v4}, Lorg/mvel2/util/n;->k(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_5

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lorg/mvel2/util/g;->b()V

    invoke-static {v5}, Lorg/mvel2/util/n;->k(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    move-object v4, v5

    :cond_7
    invoke-virtual {v0, v4}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lorg/mvel2/util/g;->i()V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/mvel2/CompileException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :goto_3
    :try_start_5
    new-instance p1, Lorg/mvel2/CompileException;

    const-string p2, "failed to compileShared sub expression"

    new-array p3, v3, [C

    invoke-direct {p1, p2, p3, v3, p0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p1

    :goto_4
    throw p0

    :goto_5
    new-instance p1, Lorg/mvel2/CompileException;

    const-string p2, "syntax error or incomptable types"

    new-array p3, v3, [C

    invoke-direct {p1, p2, p3, v3, p0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p1

    :cond_9
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    return-object p0

    :cond_a
    :try_start_6
    invoke-virtual {v0}, Lorg/mvel2/util/g;->p()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    :goto_6
    iget-object v3, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_c

    :try_start_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v1, :cond_b

    move-object v1, v3

    goto :goto_6

    :cond_b
    move-object v1, v3

    goto :goto_7

    :catch_4
    move-exception p0

    move-object v1, v3

    goto :goto_9

    :cond_c
    :goto_7
    :try_start_8
    invoke-virtual {v0}, Lorg/mvel2/util/g;->b()V

    goto :goto_8

    :cond_d
    const/4 p0, 0x1

    invoke-interface {p3, p0}, Lorg/mvel2/integration/VariableResolverFactory;->setTiltFlag(Z)V

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    return-object p0

    :cond_e
    :try_start_9
    iget-object v3, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Lorg/mvel2/util/g;->b()V

    :catch_5
    :cond_f
    :goto_8
    iget-object v1, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    return-object p0

    :goto_9
    if-eqz v1, :cond_10

    :try_start_a
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    if-eqz p1, :cond_10

    new-instance p0, Lorg/mvel2/CompileException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "incomplete statement: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (possible use of reserved keyword as identifier: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object p2

    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p0

    :cond_10
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_a
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    throw p0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lorg/mvel2/e;->a:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
