.class public Lorg/mvel2/util/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/mvel2/util/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mvel2/util/f;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;
    .locals 2

    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getExpr()[C

    move-result-object p2

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getExpr()[C

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getCursor()I

    move-result v0

    if-gt p2, v0, :cond_0

    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getExpr()[C

    move-result-object p2

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lorg/mvel2/CompileException;->setCursor(I)V

    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getExpr()[C

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getCursor()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/mvel2/CompileException;->setExpr([C)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getExpr()[C

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mvel2/CompileException;->setCursor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lorg/mvel2/util/f;->a:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, ""

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static b(Lorg/mvel2/c;[CI)Lorg/mvel2/c;
    .locals 2

    invoke-virtual {p0}, Lorg/mvel2/c;->d()[C

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mvel2/c;->d()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0}, Lorg/mvel2/c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/mvel2/c;->j([C)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lorg/mvel2/c;->i(I)V

    :cond_0
    return-object p0
.end method
