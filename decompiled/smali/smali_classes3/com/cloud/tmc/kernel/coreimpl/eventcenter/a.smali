.class public final synthetic Lcom/cloud/tmc/kernel/coreimpl/eventcenter/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;->a(Ljava/lang/String;)V

    return-void
.end method
