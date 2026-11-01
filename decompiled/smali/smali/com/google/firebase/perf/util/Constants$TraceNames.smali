.class public final enum Lcom/google/firebase/perf/util/Constants$TraceNames;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/util/Constants$TraceNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/perf/util/Constants$TraceNames;

.field public static final enum APP_START_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

.field public static final enum BACKGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

.field public static final enum FOREGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

.field public static final enum ON_CREATE_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

.field public static final enum ON_RESUME_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

.field public static final enum ON_START_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/perf/util/Constants$TraceNames;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/firebase/perf/util/Constants$TraceNames;

    sget-object v1, Lcom/google/firebase/perf/util/Constants$TraceNames;->APP_START_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_CREATE_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_START_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_RESUME_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/util/Constants$TraceNames;->FOREGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/perf/util/Constants$TraceNames;->BACKGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v1, 0x0

    const-string v2, "_as"

    const-string v3, "APP_START_TRACE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$TraceNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$TraceNames;->APP_START_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    new-instance v0, Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v1, 0x1

    const-string v2, "_astui"

    const-string v3, "ON_CREATE_TRACE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$TraceNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_CREATE_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    new-instance v0, Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v1, 0x2

    const-string v2, "_astfd"

    const-string v3, "ON_START_TRACE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$TraceNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_START_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    new-instance v0, Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v1, 0x3

    const-string v2, "_asti"

    const-string v3, "ON_RESUME_TRACE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$TraceNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_RESUME_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    new-instance v0, Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v1, 0x4

    const-string v2, "_fs"

    const-string v3, "FOREGROUND_TRACE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$TraceNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$TraceNames;->FOREGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    new-instance v0, Lcom/google/firebase/perf/util/Constants$TraceNames;

    const/4 v1, 0x5

    const-string v2, "_bs"

    const-string v3, "BACKGROUND_TRACE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$TraceNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$TraceNames;->BACKGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    invoke-static {}, Lcom/google/firebase/perf/util/Constants$TraceNames;->$values()[Lcom/google/firebase/perf/util/Constants$TraceNames;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/util/Constants$TraceNames;->$VALUES:[Lcom/google/firebase/perf/util/Constants$TraceNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/firebase/perf/util/Constants$TraceNames;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/util/Constants$TraceNames;
    .locals 1

    const-class v0, Lcom/google/firebase/perf/util/Constants$TraceNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/util/Constants$TraceNames;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/perf/util/Constants$TraceNames;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/util/Constants$TraceNames;->$VALUES:[Lcom/google/firebase/perf/util/Constants$TraceNames;

    invoke-virtual {v0}, [Lcom/google/firebase/perf/util/Constants$TraceNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/perf/util/Constants$TraceNames;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/util/Constants$TraceNames;->mName:Ljava/lang/String;

    return-object v0
.end method
