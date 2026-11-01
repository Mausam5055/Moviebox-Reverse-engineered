.class Lcom/aliyun/utils/BaseRequest$MsgDispatcher;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/utils/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgDispatcher"
.end annotation


# instance fields
.field private mBaseRequest:Lcom/aliyun/utils/BaseRequest;


# direct methods
.method public constructor <init>(Lcom/aliyun/utils/BaseRequest;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;->mBaseRequest:Lcom/aliyun/utils/BaseRequest;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;->mBaseRequest:Lcom/aliyun/utils/BaseRequest;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/aliyun/utils/BaseRequest;->access$100(Lcom/aliyun/utils/BaseRequest;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
