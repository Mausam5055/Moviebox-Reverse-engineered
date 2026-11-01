.class public final synthetic Lcom/cloud/hisavana/sdk/common/widget/expandmenu/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;


# instance fields
.field public final synthetic a:Landroid/widget/PopupWindow;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/b;->a:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/b;->b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/b;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/b;->b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;

    invoke-static {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->a(Landroid/widget/PopupWindow;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    return-void
.end method
