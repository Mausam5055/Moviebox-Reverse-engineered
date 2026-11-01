.class public final synthetic Lcom/cloud/hisavana/sdk/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/k0$d;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/k0;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/k0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i0;->a:Lcom/cloud/hisavana/sdk/k0;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/i0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i0;->a:Lcom/cloud/hisavana/sdk/k0;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i0;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/k0;->a(Lcom/cloud/hisavana/sdk/k0;Ljava/util/List;)V

    return-void
.end method
