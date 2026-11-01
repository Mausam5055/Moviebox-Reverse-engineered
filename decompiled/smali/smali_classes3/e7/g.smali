.class public final synthetic Le7/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:Le7/i;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Le7/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le7/g;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Le7/g;->b:Le7/i;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Le7/g;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Le7/g;->b:Le7/i;

    invoke-static {v0, v1, p1}, Le7/i;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Le7/i;Landroid/view/View;)V

    return-void
.end method
