.class public final Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/photoview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$b;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$b;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$b;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.transsion.ninegridview.preview.GifImagePreviewActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    :cond_0
    return-void
.end method
