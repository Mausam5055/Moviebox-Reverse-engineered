.class final Lcom/google/protobuf/p0;
.super Ljava/lang/Object;


# static fields
.field private static final FULL_SCHEMA:Lcom/google/protobuf/n0;

.field private static final LITE_SCHEMA:Lcom/google/protobuf/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/p0;->loadSchemaForFullRuntime()Lcom/google/protobuf/n0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/p0;->FULL_SCHEMA:Lcom/google/protobuf/n0;

    new-instance v0, Lcom/google/protobuf/o0;

    invoke-direct {v0}, Lcom/google/protobuf/o0;-><init>()V

    sput-object v0, Lcom/google/protobuf/p0;->LITE_SCHEMA:Lcom/google/protobuf/n0;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static full()Lcom/google/protobuf/n0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/p0;->FULL_SCHEMA:Lcom/google/protobuf/n0;

    return-object v0
.end method

.method static lite()Lcom/google/protobuf/n0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/p0;->LITE_SCHEMA:Lcom/google/protobuf/n0;

    return-object v0
.end method

.method private static loadSchemaForFullRuntime()Lcom/google/protobuf/n0;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
