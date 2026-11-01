.class Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->i(Landroid/view/View;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->b:Landroid/view/View;

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->c:Z

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->c(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;->a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
