.class public final synthetic Ld7/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/d;->a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    iput-object p2, p0, Ld7/d;->b:Ljava/lang/String;

    iput-object p3, p0, Ld7/d;->c:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 3

    iget-object v0, p0, Ld7/d;->a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    iget-object v1, p0, Ld7/d;->b:Ljava/lang/String;

    iget-object v2, p0, Ld7/d;->c:Landroid/webkit/ValueCallback;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->a(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
