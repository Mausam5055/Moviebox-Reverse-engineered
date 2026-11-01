.class public final enum Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/y$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;",
        ">;",
        "Lcom/google/protobuf/y$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final enum CDMA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final CDMA_VALUE:I = 0x4

.field public static final enum COMBINED:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final COMBINED_VALUE:I = 0x64

.field public static final enum EDGE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final EDGE_VALUE:I = 0x2

.field public static final enum EHRPD:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final EHRPD_VALUE:I = 0xe

.field public static final enum EVDO_0:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final EVDO_0_VALUE:I = 0x5

.field public static final enum EVDO_A:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final EVDO_A_VALUE:I = 0x6

.field public static final enum EVDO_B:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final EVDO_B_VALUE:I = 0xc

.field public static final enum GPRS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final GPRS_VALUE:I = 0x1

.field public static final enum GSM:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final GSM_VALUE:I = 0x10

.field public static final enum HSDPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final HSDPA_VALUE:I = 0x8

.field public static final enum HSPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final enum HSPAP:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final HSPAP_VALUE:I = 0xf

.field public static final HSPA_VALUE:I = 0xa

.field public static final enum HSUPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final HSUPA_VALUE:I = 0x9

.field public static final enum IDEN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final IDEN_VALUE:I = 0xb

.field public static final enum IWLAN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final IWLAN_VALUE:I = 0x12

.field public static final enum LTE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final enum LTE_CA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final LTE_CA_VALUE:I = 0x13

.field public static final LTE_VALUE:I = 0xd

.field public static final enum RTT:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final RTT_VALUE:I = 0x7

.field public static final enum TD_SCDMA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final TD_SCDMA_VALUE:I = 0x11

.field public static final enum UMTS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final UMTS_VALUE:I = 0x3

.field public static final enum UNKNOWN_MOBILE_SUBTYPE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

.field public static final UNKNOWN_MOBILE_SUBTYPE_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y$d;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->UNKNOWN_MOBILE_SUBTYPE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->GPRS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EDGE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->UMTS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->CDMA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EVDO_0:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EVDO_A:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->RTT:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSDPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSUPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->IDEN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EVDO_B:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->LTE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EHRPD:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSPAP:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->GSM:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->TD_SCDMA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->IWLAN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->LTE_CA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->COMBINED:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "UNKNOWN_MOBILE_SUBTYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->UNKNOWN_MOBILE_SUBTYPE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "GPRS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->GPRS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "EDGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EDGE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "UMTS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->UMTS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "CDMA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->CDMA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "EVDO_0"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EVDO_0:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "EVDO_A"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EVDO_A:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "RTT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->RTT:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "HSDPA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSDPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "HSUPA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSUPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "HSPA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "IDEN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->IDEN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "EVDO_B"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EVDO_B:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "LTE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->LTE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "EHRPD"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EHRPD:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "HSPAP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSPAP:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "GSM"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->GSM:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "TD_SCDMA"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->TD_SCDMA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "IWLAN"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->IWLAN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const-string v1, "LTE_CA"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->LTE_CA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    const/16 v1, 0x14

    const/16 v2, 0x64

    const-string v3, "COMBINED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->COMBINED:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->$values()[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->$VALUES:[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype$a;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype$a;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->internalValueMap:Lcom/google/protobuf/y$d;

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

    iput p3, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->LTE_CA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->IWLAN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->TD_SCDMA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->GSM:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSPAP:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EHRPD:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->LTE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EVDO_B:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->IDEN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSUPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->HSDPA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->RTT:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EVDO_A:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EVDO_0:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->CDMA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->UMTS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->EDGE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->GPRS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->UNKNOWN_MOBILE_SUBTYPE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->COMBINED:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/y$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/y$d;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->internalValueMap:Lcom/google/protobuf/y$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/y$e;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype$b;->a:Lcom/google/protobuf/y$e;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->forNumber(I)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;
    .locals 1

    const-class v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->$VALUES:[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    invoke-virtual {v0}, [Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->value:I

    return v0
.end method
