.class final Lcom/aliyun/utils/DeviceInfoUtils$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/DeviceInfoUtils;->writeUUIDToFile(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$uuidFile:Ljava/io/File;

.field final synthetic val$uuidValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    iput-object p2, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    const-string v4, "UUID"

    iget-object v5, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidValue:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :catchall_0
    :cond_2
    invoke-static {}, Lcom/aliyun/utils/DeviceInfoUtils;->access$008()I

    if-nez v0, :cond_3

    invoke-static {}, Lcom/aliyun/utils/DeviceInfoUtils;->access$000()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    iget-object v1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aliyun/utils/DeviceInfoUtils;->access$100(Ljava/io/File;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
