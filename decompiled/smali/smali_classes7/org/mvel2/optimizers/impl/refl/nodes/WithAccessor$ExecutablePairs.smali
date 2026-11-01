.class public final Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor$ExecutablePairs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExecutablePairs"
.end annotation


# instance fields
.field private setExpression:Ljava/io/Serializable;

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

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

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor$ExecutablePairs;->setExpression:Ljava/io/Serializable;

    :cond_1
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor$ExecutablePairs;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method


# virtual methods
.method public getSetExpression()Ljava/io/Serializable;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor$ExecutablePairs;->setExpression:Ljava/io/Serializable;

    return-object v0
.end method

.method public getStatement()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor$ExecutablePairs;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    return-object v0
.end method

.method public setSetExpression(Ljava/io/Serializable;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor$ExecutablePairs;->setExpression:Ljava/io/Serializable;

    return-void
.end method

.method public setStatement(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor$ExecutablePairs;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method
