.class public final Lcom/transsion/publish/adapter/e0$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/adapter/e0;->u(Lcom/transsion/publish/adapter/f0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/adapter/e0;

.field final synthetic b:Lcom/transsion/publish/api/PhotoEntity;

.field final synthetic c:Lcom/transsion/publish/adapter/f0;


# direct methods
.method constructor <init>(Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    iput-object p2, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    iput-object p3, p0, Lcom/transsion/publish/adapter/e0$a;->c:Lcom/transsion/publish/adapter/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    invoke-static {p1}, Lcom/transsion/publish/adapter/e0;->j(Lcom/transsion/publish/adapter/e0;)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    invoke-static {p1}, Lcom/transsion/publish/adapter/e0;->j(Lcom/transsion/publish/adapter/e0;)I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    invoke-static {p1}, Lcom/transsion/publish/adapter/e0;->l(Lcom/transsion/publish/adapter/e0;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    iget-object v1, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    iget-object v2, p0, Lcom/transsion/publish/adapter/e0$a;->c:Lcom/transsion/publish/adapter/f0;

    invoke-static {p1, v1, v2, v0}, Lcom/transsion/publish/adapter/e0;->k(Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;Z)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    iget-object v1, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    iget-object v2, p0, Lcom/transsion/publish/adapter/e0$a;->c:Lcom/transsion/publish/adapter/f0;

    invoke-static {p1, v1, v2, v0}, Lcom/transsion/publish/adapter/e0;->k(Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;Z)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    iget-object v1, p0, Lcom/transsion/publish/adapter/e0$a;->c:Lcom/transsion/publish/adapter/f0;

    invoke-static {p1, v0, v1}, Lcom/transsion/publish/adapter/e0;->h(Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    invoke-static {p1}, Lcom/transsion/publish/adapter/e0;->i(Lcom/transsion/publish/adapter/e0;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/transsion/publish/ui/ClippingImageActivity;->j:Lcom/transsion/publish/ui/ClippingImageActivity$a;

    invoke-static {p1}, Lcom/transsion/publish/adapter/e0;->j(Lcom/transsion/publish/adapter/e0;)I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/transsion/publish/ui/ClippingImageActivity$a;->b(Lcom/transsion/publish/ui/ClippingImageActivity$a;Landroid/app/Activity;Ljava/lang/String;ILandroidx/activity/result/b;ILjava/lang/Object;)V

    :cond_6
    return-void
.end method
