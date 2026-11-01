.class final Lcom/google/protobuf/m1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/m1$a;
    }
.end annotation


# instance fields
.field private final checkInitialized:[I

.field private final defaultInstance:Lcom/google/protobuf/s0;

.field private final fields:[Lcom/google/protobuf/s;

.field private final messageSetWireFormat:Z

.field private final syntax:Lcom/google/protobuf/ProtoSyntax;


# direct methods
.method constructor <init>(Lcom/google/protobuf/ProtoSyntax;Z[I[Lcom/google/protobuf/s;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/m1;->syntax:Lcom/google/protobuf/ProtoSyntax;

    iput-boolean p2, p0, Lcom/google/protobuf/m1;->messageSetWireFormat:Z

    iput-object p3, p0, Lcom/google/protobuf/m1;->checkInitialized:[I

    iput-object p4, p0, Lcom/google/protobuf/m1;->fields:[Lcom/google/protobuf/s;

    const-string p1, "defaultInstance"

    invoke-static {p5, p1}, Lcom/google/protobuf/y;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/s0;

    iput-object p1, p0, Lcom/google/protobuf/m1;->defaultInstance:Lcom/google/protobuf/s0;

    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/m1$a;
    .locals 1

    new-instance v0, Lcom/google/protobuf/m1$a;

    invoke-direct {v0}, Lcom/google/protobuf/m1$a;-><init>()V

    return-object v0
.end method

.method public static newBuilder(I)Lcom/google/protobuf/m1$a;
    .locals 1

    new-instance v0, Lcom/google/protobuf/m1$a;

    invoke-direct {v0, p0}, Lcom/google/protobuf/m1$a;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCheckInitialized()[I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/m1;->checkInitialized:[I

    return-object v0
.end method

.method public getDefaultInstance()Lcom/google/protobuf/s0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/m1;->defaultInstance:Lcom/google/protobuf/s0;

    return-object v0
.end method

.method public getFields()[Lcom/google/protobuf/s;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/m1;->fields:[Lcom/google/protobuf/s;

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/ProtoSyntax;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/m1;->syntax:Lcom/google/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/m1;->messageSetWireFormat:Z

    return v0
.end method
