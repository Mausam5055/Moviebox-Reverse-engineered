.class public final synthetic Lv6/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv6/c;->a:Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lv6/c;->a:Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    invoke-static {v0}, Lv6/e;->h(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V

    return-void
.end method
