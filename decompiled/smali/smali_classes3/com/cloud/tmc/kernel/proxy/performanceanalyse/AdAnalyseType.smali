.class public final enum Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;",
        ">;",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

.field public static final enum ad_web_callback:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

.field public static final enum form_infor_set:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->ad_web_callback:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->form_infor_set:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    const/4 v1, 0x0

    const-string v2, "\u843d\u5730\u9875\u56de\u8c03"

    const-string v3, "ad_web_callback"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->ad_web_callback:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    const/4 v1, 0x1

    const-string v2, "\u8868\u5355\u7ebf\u7d22\u6536\u96c6"

    const-string v3, "form_infor_set"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->form_infor_set:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    invoke-static {}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->$values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    invoke-virtual {v0}, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    return-object v0
.end method
