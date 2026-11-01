.class public final enum Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;",
        ">;",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

.field public static final enum CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

.field public static final enum CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

.field public static final enum CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

.field public static final enum ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

.field public static final enum INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

.field public static final enum LOAD_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

.field public static final enum LOAD_FINISH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

.field public static final enum LOAD_URL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

.field public static final enum WARMUP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;


# instance fields
.field des:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->LOAD_URL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->LOAD_FINISH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->LOAD_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->WARMUP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v1, 0x0

    const-string v2, "[Render]:[\u521d\u59cb\u5316]"

    const-string v3, "INIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v1, 0x1

    const-string v2, "[Render]:[\u521b\u5efaWebview]: \u5f00\u59cb"

    const-string v3, "CREATE_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v1, 0x2

    const-string v2, "[Render]:[\u521b\u5efaWebview]: \u5b8c\u6210"

    const-string v3, "CREATE_END"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v1, 0x3

    const-string v2, "[Render]:[\u52a0\u8f7dUrl]: \u5f00\u59cb"

    const-string v3, "LOAD_URL"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->LOAD_URL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v1, 0x4

    const-string v2, "[Render]:[\u52a0\u8f7dUrl]: \u5b8c\u6210"

    const-string v3, "LOAD_FINISH"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->LOAD_FINISH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v1, 0x5

    const-string v2, "[Render]:[\u52a0\u8f7dUrl]: \u5931\u8d25"

    const-string v3, "LOAD_FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->LOAD_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v1, 0x6

    const-string v2, "[Render]:[\u6267\u884c\u5931\u8d25]"

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v1, 0x7

    const-string v2, "[Render]:[console]"

    const-string v3, "CONSOLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/16 v1, 0x8

    const-string v2, "[warmup]:[\u9884\u70ed]"

    const-string v3, "WARMUP"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->WARMUP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    invoke-static {}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->$values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

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

    iput-object p3, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->des:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    invoke-virtual {v0}, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    return-object v0
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->des:Ljava/lang/String;

    return-object v0
.end method
