.class public Lorg/mvel2/ast/ReduceableCodeException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private literal:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/mvel2/ast/ReduceableCodeException;->literal:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLiteral()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ReduceableCodeException;->literal:Ljava/lang/Object;

    return-object v0
.end method
