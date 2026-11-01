.class public Lcom/aliyun/utils/CpuProcessTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "CpuProcessTracker"


# instance fields
.field private mMyPidPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aliyun/utils/CpuProcessTracker$1;

    invoke-direct {v1, p0}, Lcom/aliyun/utils/CpuProcessTracker$1;-><init>(Lcom/aliyun/utils/CpuProcessTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/utils/CpuProcessTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/utils/CpuProcessTracker;->updateCpuUsage()V

    return-void
.end method

.method static synthetic access$100([Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 0

    invoke-static {p0}, Lcom/aliyun/utils/CpuProcessTracker;->trim([Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/aliyun/utils/CpuProcessTracker;)I
    .locals 0

    iget p0, p0, Lcom/aliyun/utils/CpuProcessTracker;->mMyPidPercent:I

    return p0
.end method

.method static synthetic access$202(Lcom/aliyun/utils/CpuProcessTracker;I)I
    .locals 0

    iput p1, p0, Lcom/aliyun/utils/CpuProcessTracker;->mMyPidPercent:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/aliyun/utils/CpuProcessTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUCoresNum()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/aliyun/utils/CpuProcessTracker$1CpuFilter;

    invoke-direct {v1}, Lcom/aliyun/utils/CpuProcessTracker$1CpuFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method private getCpuUsageAfter25()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "top -p "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -o %CPU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/aliyun/utils/CpuProcessTracker$3;

    invoke-direct {v1, p0}, Lcom/aliyun/utils/CpuProcessTracker$3;-><init>(Lcom/aliyun/utils/CpuProcessTracker;)V

    invoke-direct {p0, v0, v1}, Lcom/aliyun/utils/CpuProcessTracker;->runtimeExec(Ljava/lang/String;Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;)V

    return-void
.end method

.method private getCpuUsageBefore26()V
    .locals 2

    new-instance v0, Lcom/aliyun/utils/CpuProcessTracker$2;

    invoke-direct {v0, p0}, Lcom/aliyun/utils/CpuProcessTracker$2;-><init>(Lcom/aliyun/utils/CpuProcessTracker;)V

    const-string v1, "top"

    invoke-direct {p0, v1, v0}, Lcom/aliyun/utils/CpuProcessTracker;->runtimeExec(Ljava/lang/String;Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;)V

    return-void
.end method

.method private runtimeExec(Ljava/lang/String;Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;->onLine(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :goto_1
    move-object v0, v1

    goto :goto_4

    :catch_0
    :goto_2
    move-object v0, v1

    goto :goto_5

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_6

    :catchall_1
    move-exception p2

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-object v2, v0

    goto :goto_2

    :catchall_2
    move-exception p2

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-object v2, v0

    goto :goto_5

    :catchall_3
    move-exception p2

    move-object p1, v0

    move-object v2, p1

    goto :goto_4

    :catch_3
    move-object p1, v0

    move-object v2, p1

    goto :goto_5

    :goto_4
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_4
    throw p2

    :goto_5
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_3

    :catchall_5
    :cond_7
    :goto_6
    return-void
.end method

.method private static trim([Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private updateCpuUsage()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/aliyun/utils/CpuProcessTracker;->getCpuUsageAfter25()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/aliyun/utils/CpuProcessTracker;->getCpuUsageBefore26()V

    :goto_0
    return-void
.end method


# virtual methods
.method getMyPicCpuPercent()I
    .locals 3

    sget-object v0, Lcom/aliyun/utils/CpuProcessTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMyPicCpuPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/aliyun/utils/CpuProcessTracker;->mMyPidPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/aliyun/utils/CpuProcessTracker;->mMyPidPercent:I

    return v0
.end method
