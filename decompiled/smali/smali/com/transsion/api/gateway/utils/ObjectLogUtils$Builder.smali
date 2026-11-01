.class public Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/api/gateway/utils/ObjectLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private defaultDir:Ljava/lang/String;

.field private dir:Ljava/lang/String;

.field private sConsoleFilter:I

.field private sFileFilter:I

.field private sGlobalTag:Ljava/lang/String;

.field private sLog2ConsoleSwitch:Z

.field private sLog2FileSwitch:Z

.field private sLogBorderSwitch:Z

.field private sLogHeadSwitch:Z

.field private sLogSwitch:Z

.field private sTagIsSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2ConsoleSwitch:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    iput-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2FileSwitch:Z

    iput-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sConsoleFilter:I

    iput v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sFileFilter:I

    return-void
.end method

.method public static synthetic access$1000(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)I
    .locals 0

    iget p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sFileFilter:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    return p0
.end method

.method public static synthetic access$1300(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    return p0
.end method

.method public static synthetic access$1400(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->defaultDir:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->defaultDir:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2ConsoleSwitch:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2FileSwitch:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)I
    .locals 0

    iget p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sConsoleFilter:I

    return p0
.end method


# virtual methods
.method public create()Lcom/transsion/api/gateway/utils/ObjectLogUtils;
    .locals 2

    new-instance v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;-><init>(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;Lcom/transsion/api/gateway/utils/ObjectLogUtils$1;)V

    return-object v0
.end method

.method public setBorderSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    return-object p0
.end method

.method public setConsoleFilter(I)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sConsoleFilter:I

    return-object p0
.end method

.method public setConsoleSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2ConsoleSwitch:Z

    return-object p0
.end method

.method public setDir(Ljava/io/File;)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    return-object p0
.end method

.method public setDir(Ljava/lang/String;)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 1

    invoke-static {p1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setFileFilter(I)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sFileFilter:I

    return-object p0
.end method

.method public setGlobalTag(Ljava/lang/String;)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 1

    invoke-static {p1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    :goto_0
    return-object p0
.end method

.method public setLog2FileSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2FileSwitch:Z

    return-object p0
.end method

.method public setLogHeadSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    return-object p0
.end method

.method public setLogSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "console: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2ConsoleSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    if-eqz v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "head: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2FileSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->defaultDir:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "border: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "consoleFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$300()[C

    move-result-object v1

    iget v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sConsoleFilter:I

    add-int/lit8 v2, v2, -0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fileFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$300()[C

    move-result-object v1

    iget v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sFileFilter:I

    add-int/lit8 v2, v2, -0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
