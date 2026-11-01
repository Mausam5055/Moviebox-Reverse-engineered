.class public final enum Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;
.super Ljava/lang/Enum;

# interfaces
.implements Landroidx/datastore/preferences/protobuf/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/w$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final enum EDITION_1_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_1_TEST_ONLY_VALUE:I = 0x1

.field public static final enum EDITION_2023:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_2023_VALUE:I = 0x3e8

.field public static final enum EDITION_2024:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_2024_VALUE:I = 0x3e9

.field public static final enum EDITION_2_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_2_TEST_ONLY_VALUE:I = 0x2

.field public static final enum EDITION_99997_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_99997_TEST_ONLY_VALUE:I = 0x1869d

.field public static final enum EDITION_99998_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_99998_TEST_ONLY_VALUE:I = 0x1869e

.field public static final enum EDITION_99999_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_99999_TEST_ONLY_VALUE:I = 0x1869f

.field public static final enum EDITION_LEGACY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_LEGACY_VALUE:I = 0x384

.field public static final enum EDITION_MAX:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_MAX_VALUE:I = 0x7fffffff

.field public static final enum EDITION_PROTO2:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_PROTO2_VALUE:I = 0x3e6

.field public static final enum EDITION_PROTO3:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_PROTO3_VALUE:I = 0x3e7

.field public static final enum EDITION_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_UNKNOWN_VALUE:I

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
    .locals 16

    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const-string v1, "EDITION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const/16 v3, 0x384

    const-string v4, "EDITION_LEGACY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_LEGACY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const/16 v4, 0x3e6

    const-string v6, "EDITION_PROTO2"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_PROTO2:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v4, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const/4 v6, 0x3

    const/16 v8, 0x3e7

    const-string v9, "EDITION_PROTO3"

    invoke-direct {v4, v9, v6, v8}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_PROTO3:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v8, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const/4 v9, 0x4

    const/16 v10, 0x3e8

    const-string v11, "EDITION_2023"

    invoke-direct {v8, v11, v9, v10}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2023:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v10, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const/4 v11, 0x5

    const/16 v12, 0x3e9

    const-string v13, "EDITION_2024"

    invoke-direct {v10, v13, v11, v12}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2024:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v12, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const-string v13, "EDITION_1_TEST_ONLY"

    const/4 v14, 0x6

    invoke-direct {v12, v13, v14, v5}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_1_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v13, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const-string v15, "EDITION_2_TEST_ONLY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v7}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v15, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const/16 v14, 0x8

    const v11, 0x1869d

    const-string v9, "EDITION_99997_TEST_ONLY"

    invoke-direct {v15, v9, v14, v11}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99997_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v9, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const/16 v11, 0x9

    const v14, 0x1869e

    const-string v6, "EDITION_99998_TEST_ONLY"

    invoke-direct {v9, v6, v11, v14}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99998_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v6, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const/16 v14, 0xa

    const v11, 0x1869f

    const-string v7, "EDITION_99999_TEST_ONLY"

    invoke-direct {v6, v7, v14, v11}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99999_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v7, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const/16 v11, 0xb

    const v14, 0x7fffffff

    const-string v5, "EDITION_MAX"

    invoke-direct {v7, v5, v11, v14}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_MAX:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    const/16 v5, 0xc

    new-array v5, v5, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v13, v5, v0

    const/16 v0, 0x8

    aput-object v15, v5, v0

    const/16 v0, 0x9

    aput-object v9, v5, v0

    const/16 v0, 0xa

    aput-object v6, v5, v0

    aput-object v7, v5, v11

    sput-object v5, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition$a;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition$a;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

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

    iput p3, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->value:I

    return-void
.end method

.method public static forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x384

    if-eq p0, v0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99999_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99998_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99997_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2024:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_4
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2023:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_5
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_PROTO3:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_6
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_PROTO2:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_MAX:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_LEGACY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_1_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    :cond_4
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1869d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Landroidx/datastore/preferences/protobuf/w$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/w$b;"
        }
    .end annotation

    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    return-object v0
.end method

.method public static internalGetVerifier()Landroidx/datastore/preferences/protobuf/w$c;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition$b;->a:Landroidx/datastore/preferences/protobuf/w$c;

    return-object v0
.end method

.method public static valueOf(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->value:I

    return v0
.end method
