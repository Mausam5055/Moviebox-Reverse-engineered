.class public final synthetic Lcom/cloud/hisavana/sdk/common/util/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/util/r;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/util/r;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/p;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/util/p;->c:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/p;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/p;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/util/p;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->b(Lcom/cloud/hisavana/sdk/common/util/r;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    return-void
.end method
