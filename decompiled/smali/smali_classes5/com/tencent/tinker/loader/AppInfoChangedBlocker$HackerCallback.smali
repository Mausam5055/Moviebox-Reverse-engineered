.class Lcom/tencent/tinker/loader/AppInfoChangedBlocker$HackerCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/AppInfoChangedBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HackerCallback"
.end annotation


# instance fields
.field private final APPLICATION_INFO_CHANGED:I

.field private origin:Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>(Landroid/os/Handler$Callback;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/loader/AppInfoChangedBlocker$HackerCallback;->origin:Landroid/os/Handler$Callback;

    :try_start_0
    const-string p1, "APPLICATION_INFO_CHANGED"

    invoke-static {p2, p1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/16 p1, 0x9c

    :goto_0
    iput p1, p0, Lcom/tencent/tinker/loader/AppInfoChangedBlocker$HackerCallback;->APPLICATION_INFO_CHANGED:I

    return-void
.end method

.method private hackMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/tencent/tinker/loader/AppInfoChangedBlocker$HackerCallback;->APPLICATION_INFO_CHANGED:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string p1, "Suicide now."

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Tinker.AppInfoChangedBlocker"

    invoke-static {v1, p1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/tinker/loader/AppInfoChangedBlocker$HackerCallback;->hackMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/AppInfoChangedBlocker$HackerCallback;->origin:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
