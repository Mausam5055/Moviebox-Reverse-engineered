.class Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;->F(Ljava/lang/String;ILjava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;

.field final synthetic val$buffer:Ljava/nio/ByteBuffer;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;Ljava/lang/String;ILjava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->this$0:Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$host:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$port:I

    iput-object p4, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->this$0:Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$host:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$port:I

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;->F(Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    return-void
.end method
