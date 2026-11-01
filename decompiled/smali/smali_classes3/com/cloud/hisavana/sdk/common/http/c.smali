.class public final synthetic Lcom/cloud/hisavana/sdk/common/http/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/c;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/c;->b:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/http/c;->c:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/c;->b:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/c;->c:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method
