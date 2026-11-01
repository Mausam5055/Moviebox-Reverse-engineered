.class public final Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/NativePermissionProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl;",
        "Lcom/cloud/tmc/integration/proxy/NativePermissionProxy;",
        "()V",
        "requestStoragePermission",
        "",
        "context",
        "Landroid/content/Context;",
        "callback",
        "Lcom/cloud/tmc/integration/callback/NativePermissionCallback;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestStoragePermission(Landroid/content/Context;Lcom/cloud/tmc/integration/callback/NativePermissionCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "STORAGE_READ"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl$requestStoragePermission$1;

    invoke-direct {v0, p2}, Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl$requestStoragePermission$1;-><init>(Lcom/cloud/tmc/integration/callback/NativePermissionCallback;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    return-void
.end method
