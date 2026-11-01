.class Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/permission/IPermissionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;->onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$perms:Ljava/util/ArrayList;

.field final synthetic val$proxy:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;

    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$perms:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    iput-object p4, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    array-length p1, p2

    array-length v0, p3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$perms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    array-length v0, p2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_2

    aget v0, p3, p1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;

    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;->a(Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;)Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendNoRigHtToInvoke()V

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;

    iget-object p2, p1, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceedSafe(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method
