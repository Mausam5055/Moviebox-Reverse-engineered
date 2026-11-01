.class public final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->setIndex(I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getTvTitle(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "/"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getAdapter(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getCount()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getTvPreviewTitle(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getAdapter(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getCount()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
