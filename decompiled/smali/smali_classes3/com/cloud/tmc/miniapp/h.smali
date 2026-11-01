.class public final synthetic Lcom/cloud/tmc/miniapp/h;
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

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/GetNodeSourceImpl;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/GetNodeSourceImpl;-><init>()V

    return-object v0
.end method
