.class abstract Lcom/google/firebase/perf/v1/i$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final a:Lcom/google/protobuf/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->STRING:Lcom/google/protobuf/WireFormat$FieldType;

    const-string v1, ""

    invoke-static {v0, v1, v0, v1}, Lcom/google/protobuf/m0;->newDefaultInstance(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/google/protobuf/m0;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/v1/i$d;->a:Lcom/google/protobuf/m0;

    return-void
.end method
