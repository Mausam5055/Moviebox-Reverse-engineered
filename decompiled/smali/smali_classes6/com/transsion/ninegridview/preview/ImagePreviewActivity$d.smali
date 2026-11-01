.class public final Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;
.super Landroidx/viewpager/widget/ViewPager$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

.field final synthetic b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    iput-object p2, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$k;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    invoke-static {v1, p1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->access$setCurrentItem$p(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;I)V

    iget-object p1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->b:Landroid/widget/TextView;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    invoke-static {v1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->access$getCurrentItem$p(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    invoke-static {v3}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->access$getImageInfoList$p(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "imageInfoList"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v3, v4, v2

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d/%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
