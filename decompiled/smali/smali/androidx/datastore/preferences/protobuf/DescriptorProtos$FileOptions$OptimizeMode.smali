.class public final enum Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
.super Ljava/lang/Enum;

# interfaces
.implements Landroidx/datastore/preferences/protobuf/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/w$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field public static final enum CODE_SIZE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field public static final CODE_SIZE_VALUE:I = 0x2

.field public static final enum LITE_RUNTIME:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field public static final LITE_RUNTIME_VALUE:I = 0x3

.field public static final enum SPEED:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field public static final SPEED_VALUE:I = 0x1

.field private static final internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/w$b;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    const-string v1, "SPEED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    new-instance v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    const-string v4, "CODE_SIZE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->CODE_SIZE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    new-instance v4, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    const-string v6, "LITE_RUNTIME"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->LITE_RUNTIME:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    new-array v6, v7, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode$a;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode$a;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->value:I

    return-void
.end method

.method public static forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->LITE_RUNTIME:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->CODE_SIZE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p0
.end method

.method public static internalGetValueMap()Landroidx/datastore/preferences/protobuf/w$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/w$b;"
        }
    .end annotation

    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    return-object v0
.end method

.method public static internalGetVerifier()Landroidx/datastore/preferences/protobuf/w$c;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode$b;->a:Landroidx/datastore/preferences/protobuf/w$c;

    return-object v0
.end method

.method public static valueOf(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->value:I

    return v0
.end method
