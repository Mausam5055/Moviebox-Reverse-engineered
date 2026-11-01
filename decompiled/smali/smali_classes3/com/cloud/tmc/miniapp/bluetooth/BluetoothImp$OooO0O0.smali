.class public final Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->openBluetoothAdapter(Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

.field public final synthetic OooO0O0:Landroid/content/Context;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;->OooO0O0:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "> Build.VERSION_CODES.S Permission denied"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;->OooO00o(J)V

    return-void
.end method

.method public onGranted()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;->OooO0O0:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$init(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V

    return-void
.end method
