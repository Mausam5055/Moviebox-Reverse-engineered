.class public final synthetic Lcom/cloud/tmc/miniapp/ui/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/model/EntryInfo;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/EntryInfo;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/y;->a:Lcom/cloud/tmc/integration/model/EntryInfo;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/y;->b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/y;->a:Lcom/cloud/tmc/integration/model/EntryInfo;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/y;->b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->k0(Lcom/cloud/tmc/integration/model/EntryInfo;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method
