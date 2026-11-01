.class Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->setListener(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$a;->b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;

    sget-object v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->PERSONALISE_CLOSE:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;->a(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    return-void
.end method
