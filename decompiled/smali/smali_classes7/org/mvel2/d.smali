.class public abstract Lorg/mvel2/d;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field static b:Ljava/lang/String;

.field static c:Z

.field static d:Z

.field static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "mvel2.debug.fileoutput"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mvel2/d;->a:Z

    const-string v0, "mvel2.debugging.file"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "mvel_debug.txt"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lorg/mvel2/d;->b:Ljava/lang/String;

    const-string v0, "mvel2.advanced_debugging"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mvel2/d;->c:Z

    const-string v0, "mvel2.weak_caching"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mvel2/d;->d:Z

    const-string v0, "mvel2.disable.jit"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mvel2/d;->e:Z

    const-string v0, "mvel2.invoked_meth_exceptions_bubble"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mvel2/d;->f:Z

    const-string v0, "mvel2.compiler.allow_naked_meth_calls"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mvel2/d;->g:Z

    const-string v0, "mvel2.compiler.allow_override_all_prophandling"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mvel2/d;->h:Z

    const-string v0, "mvel2.compiler.allow_resolve_inner_classes_with_dotnotation"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mvel2/d;->i:Z

    const-string v0, "mvel2.compiler.support_java_style_class_literals"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mvel2/d;->j:Z

    const-string v0, "mvel2.compiler.allocate_type_literals_to_shared_symbol_table"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mvel2/d;->k:Z

    const/4 v0, 0x1

    sput-boolean v0, Lorg/mvel2/d;->l:Z

    const-string v0, "mvel2.optimizer"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mvel2/d;->l:Z

    :cond_1
    return-void
.end method

.method public static A()Z
    .locals 1

    sget-boolean v0, Lorg/mvel2/d;->a:Z

    return v0
.end method

.method public static B(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mvel2/g;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/mvel2/ParserContext;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mvel2/d;->b([CLorg/mvel2/ParserContext;)V

    return-void
.end method

.method public static b([CLorg/mvel2/ParserContext;)V
    .locals 1

    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CLorg/mvel2/ParserContext;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/mvel2/compiler/ExpressionCompiler;->setVerifyOnly(Z)V

    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compile()Lorg/mvel2/compiler/CompiledExpression;

    return-void
.end method

.method public static c([CLorg/mvel2/ParserContext;)Ljava/lang/Class;
    .locals 1

    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CLorg/mvel2/ParserContext;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/mvel2/compiler/ExpressionCompiler;->setVerifyOnly(Z)V

    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compile()Lorg/mvel2/compiler/CompiledExpression;

    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lorg/mvel2/d;->e(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1

    new-instance v0, Lorg/mvel2/ParserContext;

    invoke-direct {v0, p1, p2, p3}, Lorg/mvel2/ParserContext;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/mvel2/d;->f(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>(Ljava/lang/String;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compile()Lorg/mvel2/compiler/CompiledExpression;

    move-result-object p0

    invoke-static {p0}, Lorg/mvel2/util/m;->v0(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static g([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CIILorg/mvel2/ParserContext;)V

    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    move-result-object p0

    invoke-static {p0}, Lorg/mvel2/util/m;->v0(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static h([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CLorg/mvel2/ParserContext;)V

    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compile()Lorg/mvel2/compiler/CompiledExpression;

    move-result-object p0

    invoke-static {p0}, Lorg/mvel2/util/m;->v0(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    new-instance v0, Lorg/mvel2/compiler/CompiledAccExpression;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/mvel2/compiler/CompiledAccExpression;-><init>([CLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    return-object v0
.end method

.method public static j([C)Ljava/io/Serializable;
    .locals 3

    new-instance v0, Lorg/mvel2/compiler/CompiledAccExpression;

    new-instance v1, Lorg/mvel2/ParserContext;

    invoke-direct {v1}, Lorg/mvel2/ParserContext;-><init>()V

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, p0, v2, v1}, Lorg/mvel2/compiler/CompiledAccExpression;-><init>([CLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    return-object v0
.end method

.method public static k([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 7

    new-instance v6, Lorg/mvel2/compiler/CompiledAccExpression;

    const-class v4, Ljava/lang/Object;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/compiler/CompiledAccExpression;-><init>([CIILjava/lang/Class;Lorg/mvel2/ParserContext;)V

    return-object v6
.end method

.method public static l([CLjava/lang/Class;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    new-instance v0, Lorg/mvel2/compiler/CompiledAccExpression;

    invoke-direct {v0, p0, p1, p2}, Lorg/mvel2/compiler/CompiledAccExpression;-><init>([CLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    return-object v0
.end method

.method public static m([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 2

    new-instance v0, Lorg/mvel2/compiler/CompiledAccExpression;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1}, Lorg/mvel2/compiler/CompiledAccExpression;-><init>([CLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    return-object v0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/mvel2/MVELInterpretedRuntime;

    invoke-direct {v0, p0, p1, p2}, Lorg/mvel2/MVELInterpretedRuntime;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-virtual {v0}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/mvel2/MVELInterpretedRuntime;

    invoke-direct {v0, p0, p1, p2}, Lorg/mvel2/MVELInterpretedRuntime;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-virtual {v0}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;

    invoke-direct {v0, p1}, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;-><init>(Ljava/util/Map;)V

    :try_start_0
    new-instance p1, Lorg/mvel2/MVELInterpretedRuntime;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0}, Lorg/mvel2/MVELInterpretedRuntime;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-virtual {p1}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;->externalize()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;->externalize()V

    throw p0
.end method

.method public static q([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lorg/mvel2/MVELInterpretedRuntime;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/MVELInterpretedRuntime;-><init>([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-virtual {v6}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static r([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lorg/mvel2/MVELInterpretedRuntime;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/MVELInterpretedRuntime;-><init>([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-virtual {v6}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p5}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static s([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/mvel2/MVELInterpretedRuntime;

    invoke-direct {v0, p0, p1, p2}, Lorg/mvel2/MVELInterpretedRuntime;-><init>([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-virtual {v0}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {p0, p1, p2}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mvel2/d;->t(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;

    invoke-direct {v0, p1}, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;-><init>(Ljava/util/Map;)V

    :try_start_0
    check-cast p0, Lorg/mvel2/compiler/ExecutableStatement;

    const/4 p1, 0x0

    invoke-interface {p0, p1, v0}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;->externalize()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;->externalize()V

    throw p0
.end method

.method public static w(Ljava/io/Serializable;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lorg/mvel2/compiler/CompiledAccExpression;

    invoke-virtual {p0, p1, p1, p2, p3}, Lorg/mvel2/compiler/CompiledAccExpression;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static x()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mvel2/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/mvel2/g;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static z()Z
    .locals 1

    sget-boolean v0, Lorg/mvel2/d;->c:Z

    return v0
.end method
