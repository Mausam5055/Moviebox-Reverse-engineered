.class public final synthetic Lcom/cloud/hisavana/sdk/common/util/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/util/v;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/util/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/t;->a:Lcom/cloud/hisavana/sdk/common/util/v;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/t;->a:Lcom/cloud/hisavana/sdk/common/util/v;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/util/v;->a(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V

    return-void
.end method
