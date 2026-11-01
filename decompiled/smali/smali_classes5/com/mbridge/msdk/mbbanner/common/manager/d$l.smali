.class Lcom/mbridge/msdk/mbbanner/common/manager/d$l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/image/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbbanner/common/manager/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbbanner/common/manager/d;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lcom/mbridge/msdk/foundation/error/b;

    const p2, 0xd6da7

    invoke-direct {p1, p2}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p2}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->j(Lcom/mbridge/msdk/mbbanner/common/manager/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p2, p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/mbbanner/common/manager/d;Lcom/mbridge/msdk/foundation/error/b;)V

    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p2}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g(Lcom/mbridge/msdk/mbbanner/common/manager/d;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p2}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g(Lcom/mbridge/msdk/mbbanner/common/manager/d;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b(Lcom/mbridge/msdk/mbbanner/common/manager/d;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->m(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->i(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    iget-boolean p2, p1, Lcom/mbridge/msdk/mbbanner/common/manager/d;->o:Z

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->n(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    :cond_1
    return-void
.end method
