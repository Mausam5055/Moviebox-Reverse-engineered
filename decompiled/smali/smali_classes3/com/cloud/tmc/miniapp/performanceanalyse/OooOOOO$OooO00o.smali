.class public final synthetic Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO$OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "OooO00o"
.end annotation


# static fields
.field public static final synthetic OooO00o:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_END_1:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_END_2:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_NATIVE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO$OooO00o;->OooO00o:[I

    return-void
.end method
