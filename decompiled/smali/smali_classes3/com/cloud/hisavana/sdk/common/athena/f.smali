.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/ext/attr/AttrData;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/f;->a:Lcom/cloud/hisavana/sdk/ext/attr/AttrData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/f;->a:Lcom/cloud/hisavana/sdk/ext/attr/AttrData;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->c(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    return-void
.end method
