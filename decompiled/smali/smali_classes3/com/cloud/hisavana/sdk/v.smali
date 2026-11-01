.class public final synthetic Lcom/cloud/hisavana/sdk/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/http/a$b;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/v;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/c0;->d(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
