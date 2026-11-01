.class public Lorg/mvel2/PropertyAccessException;
.super Lorg/mvel2/CompileException;


# direct methods
.method public constructor <init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    invoke-direct {p0, p5}, Lorg/mvel2/PropertyAccessException;->setParserContext(Lorg/mvel2/ParserContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    invoke-direct {p0, p4}, Lorg/mvel2/PropertyAccessException;->setParserContext(Lorg/mvel2/ParserContext;)V

    return-void
.end method

.method private setParserContext(Lorg/mvel2/ParserContext;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->getEvaluationContext()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mvel2/CompileException;->setEvaluationContext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
