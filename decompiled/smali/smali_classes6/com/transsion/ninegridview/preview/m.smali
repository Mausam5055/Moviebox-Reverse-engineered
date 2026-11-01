.class public final synthetic Lcom/transsion/ninegridview/preview/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

.field public final synthetic c:Lcom/transsion/ninegridview/ImageInfo;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Lcom/transsion/ninegridview/ImageInfo;Landroid/widget/ImageView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/m;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/ninegridview/preview/m;->b:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    iput-object p3, p0, Lcom/transsion/ninegridview/preview/m;->c:Lcom/transsion/ninegridview/ImageInfo;

    iput-object p4, p0, Lcom/transsion/ninegridview/preview/m;->d:Landroid/widget/ImageView;

    iput p5, p0, Lcom/transsion/ninegridview/preview/m;->e:F

    iput p6, p0, Lcom/transsion/ninegridview/preview/m;->f:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/m;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/m;->b:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    iget-object v2, p0, Lcom/transsion/ninegridview/preview/m;->c:Lcom/transsion/ninegridview/ImageInfo;

    iget-object v3, p0, Lcom/transsion/ninegridview/preview/m;->d:Landroid/widget/ImageView;

    iget v4, p0, Lcom/transsion/ninegridview/preview/m;->e:F

    iget v5, p0, Lcom/transsion/ninegridview/preview/m;->f:F

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->i0(Landroid/view/View;Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Lcom/transsion/ninegridview/ImageInfo;Landroid/widget/ImageView;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
