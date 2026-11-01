.class Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor$ITinkerHotplugProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private volatile mIsInHandleMethod:Z

.field private final mMessageHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;

.field private final mOrigCallback:Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>(Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;Landroid/os/Handler$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;->mMessageHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;

    iput-object p2, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;->mOrigCallback:Landroid/os/Handler$Callback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;->mIsInHandleMethod:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;->mIsInHandleMethod:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;->mIsInHandleMethod:Z

    iget-object v2, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;->mMessageHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;

    invoke-interface {v2, p1}, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;->mOrigCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;->mIsInHandleMethod:Z

    return v0
.end method
