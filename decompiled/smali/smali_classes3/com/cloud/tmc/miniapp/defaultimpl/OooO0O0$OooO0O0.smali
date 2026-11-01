.class public Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO0O0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public OooO00o:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

.field public OooO0O0:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO0O0;->OooO0O0:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    return-void
.end method
