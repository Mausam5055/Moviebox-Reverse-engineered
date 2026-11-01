.class public final synthetic Lcom/cloud/hisavana/sdk/manager/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/manager/g;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/manager/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/f;->a:Lcom/cloud/hisavana/sdk/manager/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/f;->a:Lcom/cloud/hisavana/sdk/manager/g;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/g;->a(Lcom/cloud/hisavana/sdk/manager/g;)V

    return-void
.end method
