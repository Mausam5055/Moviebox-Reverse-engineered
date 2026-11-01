.class public final synthetic Lcom/cloud/tmc/integration/bridge/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/e;->a:Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/e;->a:Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    invoke-static {v0}, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->c(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)V

    return-void
.end method
