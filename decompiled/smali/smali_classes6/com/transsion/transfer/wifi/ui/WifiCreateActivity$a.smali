.class public final Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/wifi/create/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->T0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Llv/a;J)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->P0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Llv/a;J)V

    return-void
.end method

.method public b(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->O0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;IJ)V

    return-void
.end method

.method public onStart()V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    invoke-virtual {v1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> createWifi() --> start .... --> WifiCreateActivity.hashCode() = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/d;

    iget-object v0, v0, Lgv/d;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/d;

    iget-object v0, v0, Lgv/d;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/d;

    iget-object v0, v0, Lgv/d;->b:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/d;

    iget-object v0, v0, Lgv/d;->c:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method
