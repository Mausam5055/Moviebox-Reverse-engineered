.class Lcom/transsion/transfer/androidasync/AsyncServer$b;
.super Lcom/transsion/transfer/androidasync/future/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field f:Ljava/nio/channels/SocketChannel;

.field g:Lbv/b;

.field final synthetic h:Lcom/transsion/transfer/androidasync/AsyncServer;


# direct methods
.method private constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$b;->h:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer$b;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;)V

    return-void
.end method


# virtual methods
.method protected cancelCleanup()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/transfer/androidasync/future/n;->cancelCleanup()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$b;->f:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
