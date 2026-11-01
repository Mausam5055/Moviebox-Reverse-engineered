.class public final enum Landroidx/datastore/preferences/protobuf/Field$Cardinality;
.super Ljava/lang/Enum;

# interfaces
.implements Landroidx/datastore/preferences/protobuf/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Field$Cardinality$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/Field$Cardinality;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/w$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/Field$Cardinality;

.field public static final enum CARDINALITY_OPTIONAL:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

.field public static final CARDINALITY_OPTIONAL_VALUE:I = 0x1

.field public static final enum CARDINALITY_REPEATED:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

.field public static final CARDINALITY_REPEATED_VALUE:I = 0x3

.field public static final enum CARDINALITY_REQUIRED:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

.field public static final CARDINALITY_REQUIRED_VALUE:I = 0x2

.field public static final enum CARDINALITY_UNKNOWN:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

.field public static final CARDINALITY_UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

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
    .locals 12

    new-instance v0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    const-string v1, "CARDINALITY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/datastore/preferences/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    new-instance v1, Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    const-string v3, "CARDINALITY_OPTIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroidx/datastore/preferences/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->CARDINALITY_OPTIONAL:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    new-instance v3, Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    const-string v5, "CARDINALITY_REQUIRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroidx/datastore/preferences/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->CARDINALITY_REQUIRED:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    new-instance v5, Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    const-string v7, "CARDINALITY_REPEATED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroidx/datastore/preferences/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->CARDINALITY_REPEATED:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    new-instance v7, Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    const/4 v9, 0x4

    const/4 v10, -0x1

    const-string v11, "UNRECOGNIZED"

    invoke-direct {v7, v11, v9, v10}, Landroidx/datastore/preferences/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    const/4 v10, 0x5

    new-array v10, v10, [Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    aput-object v7, v10, v9

    sput-object v10, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->$VALUES:[Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    new-instance v0, Landroidx/datastore/preferences/protobuf/Field$Cardinality$a;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Field$Cardinality$a;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

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

    iput p3, p0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->value:I

    return-void
.end method

.method public static forNumber(I)Landroidx/datastore/preferences/protobuf/Field$Cardinality;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->CARDINALITY_REPEATED:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->CARDINALITY_REQUIRED:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->CARDINALITY_OPTIONAL:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

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

    sget-object v0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    return-object v0
.end method

.method public static internalGetVerifier()Landroidx/datastore/preferences/protobuf/w$c;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/Field$Cardinality$b;->a:Landroidx/datastore/preferences/protobuf/w$c;

    return-object v0
.end method

.method public static valueOf(I)Landroidx/datastore/preferences/protobuf/Field$Cardinality;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->forNumber(I)Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Field$Cardinality;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/Field$Cardinality;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->$VALUES:[Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/Field$Cardinality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    if-eq p0, v0, :cond_0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
