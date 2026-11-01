.class public abstract Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cloud.tmc.miniapp.IMiniAppLifecycleInterface"

.field public static final TRANSACTION_onCreate:I = 0x1

.field public static final TRANSACTION_onDestroy:I = 0x6

.field public static final TRANSACTION_onPause:I = 0x4

.field public static final TRANSACTION_onResume:I = 0x3

.field public static final TRANSACTION_onStart:I = 0x2

.field public static final TRANSACTION_onStop:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cloud.tmc.miniapp.IMiniAppLifecycleInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cloud.tmc.miniapp.IMiniAppLifecycleInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    return-object v0

    :cond_1
    new-instance v0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;)Z
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.cloud.tmc.miniapp.IMiniAppLifecycleInterface"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onDestroy()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onStop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onPause()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onResume()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onStart()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onCreate()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
