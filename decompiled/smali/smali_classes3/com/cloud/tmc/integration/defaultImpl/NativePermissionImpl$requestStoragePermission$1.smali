.class public final Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl$requestStoragePermission$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl;->requestStoragePermission(Landroid/content/Context;Lcom/cloud/tmc/integration/callback/NativePermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/NativePermissionImpl$requestStoragePermission$1",
        "Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;",
        "onDenied",
        "",
        "onGranted",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/cloud/tmc/integration/callback/NativePermissionCallback;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/callback/NativePermissionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl$requestStoragePermission$1;->$callback:Lcom/cloud/tmc/integration/callback/NativePermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl$requestStoragePermission$1;->$callback:Lcom/cloud/tmc/integration/callback/NativePermissionCallback;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/callback/NativePermissionCallback;->onDenied()V

    return-void
.end method

.method public onGranted()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl$requestStoragePermission$1;->$callback:Lcom/cloud/tmc/integration/callback/NativePermissionCallback;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/callback/NativePermissionCallback;->onGranted()V

    return-void
.end method
