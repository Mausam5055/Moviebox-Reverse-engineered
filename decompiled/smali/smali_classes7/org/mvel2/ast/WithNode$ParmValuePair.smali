.class public final Lorg/mvel2/ast/WithNode$ParmValuePair;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/WithNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParmValuePair"
.end annotation


# instance fields
.field private setExpression:Ljava/io/Serializable;

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/mvel2/compiler/ExecutableStatement;Ljava/lang/Class;Lorg/mvel2/ParserContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p3, p1, p4}, Lorg/mvel2/util/n;->h(Ljava/lang/Class;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-class p3, Ljava/lang/Object;

    :goto_0
    invoke-static {p1, p3, p4}, Lorg/mvel2/d;->i(Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->setExpression:Ljava/io/Serializable;

    :cond_1
    iput-object p2, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method


# virtual methods
.method public eval(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 2

    iget-object v0, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->setExpression:Ljava/io/Serializable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v0, p1, p2}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v1, p1, p2}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lorg/mvel2/d;->w(Ljava/io/Serializable;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getSetExpression()Ljava/io/Serializable;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->setExpression:Ljava/io/Serializable;

    return-object v0
.end method

.method public getStatement()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    return-object v0
.end method
