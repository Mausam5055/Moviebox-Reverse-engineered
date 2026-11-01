.class public final enum Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;",
        ">;",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum EXECUTE_JS_END_1:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum EXECUTE_JS_END_2:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum EXECUTE_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum LOAD_JS_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum LOAD_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum SEND_TO_NATIVE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum SEND_TO_RENDER:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum WARMUP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;


# instance fields
.field des:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_END_1:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_END_2:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_NATIVE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_RENDER:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->WARMUP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v1, 0x0

    const-string v2, "[Worker]:[\u521d\u59cb\u5316]"

    const-string v3, "INIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v1, 0x1

    const-string v2, "[Worker]:[\u521b\u5efaWorker\u5f15\u64ce]: \u5f00\u59cb"

    const-string v3, "CREATE_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v1, 0x2

    const-string v2, "[Worker]:[\u521b\u5efaWorker\u5f15\u64ce]: \u5b8c\u6210"

    const-string v3, "CREATE_END"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v1, 0x3

    const-string v2, "[Worker]:[\u52a0\u8f7dworker.js]: \u5f00\u59cb"

    const-string v3, "LOAD_JS_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v1, 0x4

    const-string v2, "[Worker]:[\u52a0\u8f7dworker.js]: \u5b8c\u6210"

    const-string v3, "LOAD_JS_END"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v1, 0x5

    const-string v2, "[Worker]:[\u6267\u884cjs\u51fd\u6570]: \u5f00\u59cb"

    const-string v3, "EXECUTE_JS_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v1, 0x6

    const-string v2, "[Worker]:[\u6267\u884cjs\u51fd\u6570(\u6709callback)]: \u5b8c\u6210"

    const-string v3, "EXECUTE_JS_END_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_END_1:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/4 v1, 0x7

    const-string v2, "[Worker]:[\u6267\u884cjs\u51fd\u6570(\u65e0callback)]: \u5b8c\u6210"

    const-string v3, "EXECUTE_JS_END_2"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_END_2:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/16 v1, 0x8

    const-string v2, "[Worker]:[\u53d1\u9001\u6570\u636e\u5230Native]"

    const-string v3, "SEND_TO_NATIVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_NATIVE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/16 v1, 0x9

    const-string v2, "[Worker]:[\u53d1\u9001\u6570\u636e\u5230Render]"

    const-string v3, "SEND_TO_RENDER"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_RENDER:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/16 v1, 0xa

    const-string v2, "[Worker]:[\u6267\u884c\u5931\u8d25]"

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/16 v1, 0xb

    const-string v2, "[Worker]:[console]"

    const-string v3, "CONSOLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const/16 v1, 0xc

    const-string v2, "[Worker]:[warmup]"

    const-string v3, "WARMUP"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->WARMUP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-static {}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->$values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

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

    iput-object p3, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->des:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v0}, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    return-object v0
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->des:Ljava/lang/String;

    return-object v0
.end method
