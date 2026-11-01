.class Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeInterfaceHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FakeInterfaceHandler"
.end annotation


# instance fields
.field private final mBinderInvocationHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;

.field private final mOriginalClientBinder:Landroid/os/IBinder;

.field private final mOriginalInterface:Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IInterface;Landroid/os/IBinder;Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeInterfaceHandler;->mOriginalInterface:Landroid/os/IInterface;

    iput-object p2, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeInterfaceHandler;->mOriginalClientBinder:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeInterfaceHandler;->mBinderInvocationHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "asBinder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeInterfaceHandler;->mOriginalClientBinder:Landroid/os/IBinder;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeInterfaceHandler;->mBinderInvocationHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;

    iget-object v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeInterfaceHandler;->mOriginalInterface:Landroid/os/IInterface;

    invoke-interface {p1, v0, p2, p3}, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
