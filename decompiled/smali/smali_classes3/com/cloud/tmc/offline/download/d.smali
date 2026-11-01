.class public final synthetic Lcom/cloud/tmc/offline/download/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->d()Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    move-result-object v0

    return-object v0
.end method
