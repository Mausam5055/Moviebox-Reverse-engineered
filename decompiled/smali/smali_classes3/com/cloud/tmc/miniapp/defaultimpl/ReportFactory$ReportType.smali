.class public final enum Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

.field public static final enum ATHENA:Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

.field public static final enum FIREBASE:Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    sget-object v1, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;->ATHENA:Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;->FIREBASE:Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    const-string v1, "ATHENA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;->ATHENA:Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    const-string v1, "FIREBASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;->FIREBASE:Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    invoke-static {}, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;->$values()[Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;->$VALUES:[Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

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

    iput p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;->$VALUES:[Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory$ReportType;->type:I

    return v0
.end method
