.class public final synthetic Lcom/cloud/tmc/offline/download/resource/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/offline/download/resource/OfflineResourceManagerProxyImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/resource/OfflineResourceManagerProxyImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/resource/a;->a:Lcom/cloud/tmc/offline/download/resource/OfflineResourceManagerProxyImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/resource/a;->a:Lcom/cloud/tmc/offline/download/resource/OfflineResourceManagerProxyImpl;

    invoke-static {v0}, Lcom/cloud/tmc/offline/download/resource/OfflineResourceManagerProxyImpl;->a(Lcom/cloud/tmc/offline/download/resource/OfflineResourceManagerProxyImpl;)V

    return-void
.end method
