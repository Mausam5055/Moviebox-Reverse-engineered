.class public final enum Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;",
        ">;",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

.field public static final enum CHECK_EXIST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

.field public static final enum CHECK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

.field public static final enum CHECK_UN_EXIST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

.field public static final enum DOWNLOAD_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

.field public static final enum DOWNLOAD_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

.field public static final enum DOWNLOAD_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

.field public static final enum UNZIP_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

.field public static final enum UNZIP_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

.field public static final enum UNZIP_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;


# instance fields
.field des:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->CHECK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->CHECK_EXIST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->CHECK_UN_EXIST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->DOWNLOAD_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->DOWNLOAD_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->DOWNLOAD_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->UNZIP_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->UNZIP_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->UNZIP_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v1, 0x0

    const-string v2, "[V8]:[\u68c0\u6d4bSO\u5e93]: \u5f00\u59cb"

    const-string v3, "CHECK_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->CHECK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v1, 0x1

    const-string v2, "[V8]:[\u68c0\u6d4bSO\u5e93]: \u5df2\u5b58\u5728"

    const-string v3, "CHECK_EXIST"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->CHECK_EXIST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v1, 0x2

    const-string v2, "[V8]:[\u68c0\u6d4bSO\u5e93]: \u4e0d\u5b58\u5728"

    const-string v3, "CHECK_UN_EXIST"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->CHECK_UN_EXIST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v1, 0x3

    const-string v2, "[V8]:[\u4e0b\u8f7dSO\u5e93]: \u5f00\u59cb"

    const-string v3, "DOWNLOAD_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->DOWNLOAD_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v1, 0x4

    const-string v2, "[V8]:[\u4e0b\u8f7dSO\u5e93]: \u6210\u529f"

    const-string v3, "DOWNLOAD_SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->DOWNLOAD_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v1, 0x5

    const-string v2, "[V8]:[\u4e0b\u8f7dSO\u5e93]: \u5931\u8d25"

    const-string v3, "DOWNLOAD_FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->DOWNLOAD_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v1, 0x6

    const-string v2, "[V8]:[\u89e3\u538bSO\u5e93]: \u5f00\u59cb"

    const-string v3, "UNZIP_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->UNZIP_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/4 v1, 0x7

    const-string v2, "[V8]:[\u89e3\u538bSO\u5e93]: \u6210\u529f"

    const-string v3, "UNZIP_SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->UNZIP_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    const/16 v1, 0x8

    const-string v2, "[V8]:[\u89e3\u538bSO\u5e93]: \u5931\u8d25"

    const-string v3, "UNZIP_FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->UNZIP_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    invoke-static {}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->$values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->des:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    invoke-virtual {v0}, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    return-object v0
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->des:Ljava/lang/String;

    return-object v0
.end method
