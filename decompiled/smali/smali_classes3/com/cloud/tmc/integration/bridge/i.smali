.class public final synthetic Lcom/cloud/tmc/integration/bridge/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/i;->a:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/i;->c:Ljava/lang/Long;

    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/i;->d:Lcom/cloud/tmc/integration/structure/App;

    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/i;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/integration/bridge/i;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/cloud/tmc/integration/bridge/i;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/cloud/tmc/integration/bridge/i;->h:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p9, p0, Lcom/cloud/tmc/integration/bridge/i;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/i;->a:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/i;->c:Ljava/lang/Long;

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/i;->d:Lcom/cloud/tmc/integration/structure/App;

    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/i;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/integration/bridge/i;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/integration/bridge/i;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/cloud/tmc/integration/bridge/i;->h:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget-object v8, p0, Lcom/cloud/tmc/integration/bridge/i;->i:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    return-void
.end method
