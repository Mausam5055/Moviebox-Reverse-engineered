.class Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeClientBinderHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FakeClientBinderHandler"
.end annotation


# instance fields
.field private final mBinderInvocationHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;

.field private final mOriginalClientBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeClientBinderHandler;->mOriginalClientBinder:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeClientBinderHandler;->mBinderInvocationHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "queryLocalInterface"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p2, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeClientBinderHandler;->mOriginalClientBinder:Landroid/os/IBinder;

    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.app.IActivityManager"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "android.app.ActivityManagerNative"

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "$Stub"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    aput-object v2, p3, v0

    const-string v2, "asInterface"

    invoke-static {p2, v2, p3}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object p3, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeClientBinderHandler;->mOriginalClientBinder:Landroid/os/IBinder;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    const/4 p3, 0x0

    invoke-virtual {p2, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IInterface;

    new-instance p3, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeInterfaceHandler;

    check-cast p1, Landroid/os/IBinder;

    iget-object v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeClientBinderHandler;->mBinderInvocationHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;

    invoke-direct {p3, p2, p1, v0}, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeInterfaceHandler;-><init>(Landroid/os/IInterface;Landroid/os/IBinder;Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;->access$000(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;->access$100([Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$FakeClientBinderHandler;->mOriginalClientBinder:Landroid/os/IBinder;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
