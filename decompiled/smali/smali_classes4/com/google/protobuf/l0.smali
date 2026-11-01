.class final Lcom/google/protobuf/l0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/j1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/l0$c;
    }
.end annotation


# static fields
.field private static final EMPTY_FACTORY:Lcom/google/protobuf/r0;


# instance fields
.field private final messageInfoFactory:Lcom/google/protobuf/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/l0$a;

    invoke-direct {v0}, Lcom/google/protobuf/l0$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/l0;->EMPTY_FACTORY:Lcom/google/protobuf/r0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/l0;->getDefaultMessageInfoFactory()Lcom/google/protobuf/r0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/l0;-><init>(Lcom/google/protobuf/r0;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/r0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/protobuf/y;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/r0;

    iput-object p1, p0, Lcom/google/protobuf/l0;->messageInfoFactory:Lcom/google/protobuf/r0;

    return-void
.end method

.method private static allowExtensions(Lcom/google/protobuf/q0;)Z
    .locals 1

    sget-object v0, Lcom/google/protobuf/l0$b;->$SwitchMap$com$google$protobuf$ProtoSyntax:[I

    invoke-interface {p0}, Lcom/google/protobuf/q0;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getDefaultMessageInfoFactory()Lcom/google/protobuf/r0;
    .locals 5

    new-instance v0, Lcom/google/protobuf/l0$c;

    invoke-static {}, Lcom/google/protobuf/v;->getInstance()Lcom/google/protobuf/v;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/l0;->getDescriptorMessageInfoFactory()Lcom/google/protobuf/r0;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/protobuf/r0;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/protobuf/l0$c;-><init>([Lcom/google/protobuf/r0;)V

    return-object v0
.end method

.method private static getDescriptorMessageInfoFactory()Lcom/google/protobuf/r0;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/r0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/protobuf/l0;->EMPTY_FACTORY:Lcom/google/protobuf/r0;

    return-object v0
.end method

.method private static newSchema(Ljava/lang/Class;Lcom/google/protobuf/q0;)Lcom/google/protobuf/i1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/q0;",
            ")",
            "Lcom/google/protobuf/i1;"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/l0;->allowExtensions(Lcom/google/protobuf/q0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/z0;->lite()Lcom/google/protobuf/x0;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/j0;->lite()Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-static {}, Lcom/google/protobuf/k1;->unknownFieldSetLiteSchema()Lcom/google/protobuf/o1;

    move-result-object v5

    invoke-static {}, Lcom/google/protobuf/r;->lite()Lcom/google/protobuf/p;

    move-result-object v6

    invoke-static {}, Lcom/google/protobuf/p0;->lite()Lcom/google/protobuf/n0;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/v0;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/q0;Lcom/google/protobuf/x0;Lcom/google/protobuf/j0;Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/n0;)Lcom/google/protobuf/v0;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/z0;->lite()Lcom/google/protobuf/x0;

    move-result-object v2

    invoke-static {}, Lcom/google/protobuf/j0;->lite()Lcom/google/protobuf/j0;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/k1;->unknownFieldSetLiteSchema()Lcom/google/protobuf/o1;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/protobuf/p0;->lite()Lcom/google/protobuf/n0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/v0;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/q0;Lcom/google/protobuf/x0;Lcom/google/protobuf/j0;Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/n0;)Lcom/google/protobuf/v0;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/l0;->allowExtensions(Lcom/google/protobuf/q0;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/protobuf/z0;->full()Lcom/google/protobuf/x0;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/j0;->full()Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-static {}, Lcom/google/protobuf/k1;->unknownFieldSetFullSchema()Lcom/google/protobuf/o1;

    move-result-object v5

    invoke-static {}, Lcom/google/protobuf/r;->full()Lcom/google/protobuf/p;

    move-result-object v6

    invoke-static {}, Lcom/google/protobuf/p0;->full()Lcom/google/protobuf/n0;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/v0;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/q0;Lcom/google/protobuf/x0;Lcom/google/protobuf/j0;Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/n0;)Lcom/google/protobuf/v0;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/protobuf/z0;->full()Lcom/google/protobuf/x0;

    move-result-object v2

    invoke-static {}, Lcom/google/protobuf/j0;->full()Lcom/google/protobuf/j0;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/k1;->unknownFieldSetFullSchema()Lcom/google/protobuf/o1;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/protobuf/p0;->full()Lcom/google/protobuf/n0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/v0;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/q0;Lcom/google/protobuf/x0;Lcom/google/protobuf/j0;Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/n0;)Lcom/google/protobuf/v0;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public createSchema(Ljava/lang/Class;)Lcom/google/protobuf/i1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/i1;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/k1;->requireGeneratedMessage(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/protobuf/l0;->messageInfoFactory:Lcom/google/protobuf/r0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/r0;->messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/q0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/q0;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/k1;->unknownFieldSetLiteSchema()Lcom/google/protobuf/o1;

    move-result-object p1

    invoke-static {}, Lcom/google/protobuf/r;->lite()Lcom/google/protobuf/p;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/protobuf/q0;->getDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->newSchema(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/s0;)Lcom/google/protobuf/w0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/k1;->unknownFieldSetFullSchema()Lcom/google/protobuf/o1;

    move-result-object p1

    invoke-static {}, Lcom/google/protobuf/r;->full()Lcom/google/protobuf/p;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/protobuf/q0;->getDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->newSchema(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/s0;)Lcom/google/protobuf/w0;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1, v0}, Lcom/google/protobuf/l0;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/q0;)Lcom/google/protobuf/i1;

    move-result-object p1

    return-object p1
.end method
