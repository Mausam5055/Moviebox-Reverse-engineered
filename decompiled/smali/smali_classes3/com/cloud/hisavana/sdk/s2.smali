.class public final synthetic Lcom/cloud/hisavana/sdk/s2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/t2;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/t2;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/s2;->a:Lcom/cloud/hisavana/sdk/t2;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/s2;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/s2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/s2;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s2;->a:Lcom/cloud/hisavana/sdk/t2;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/s2;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/s2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/s2;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/cloud/hisavana/sdk/t2;->a(Lcom/cloud/hisavana/sdk/t2;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    return-void
.end method
