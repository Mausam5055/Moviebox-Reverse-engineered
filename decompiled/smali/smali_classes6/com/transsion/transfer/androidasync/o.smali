.class abstract Lcom/transsion/transfer/androidasync/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;
.implements Ljava/nio/channels/ScatteringByteChannel;


# instance fields
.field private a:Ljava/nio/channels/spi/AbstractSelectableChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/o;->a:Ljava/nio/channels/spi/AbstractSelectableChannel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/o;->a:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract h()Z
.end method

.method public abstract i(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/o;->a:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public k(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/o;->a:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    return-object p1
.end method

.method public abstract l()V
.end method

.method public abstract m([Ljava/nio/ByteBuffer;)I
.end method
