.class public final synthetic Lcom/transsion/publish/ui/o1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/ui/VideoPreviewActivity;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/ui/o1;->a:Lcom/transsion/publish/ui/VideoPreviewActivity;

    iput-object p2, p0, Lcom/transsion/publish/ui/o1;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/ui/o1;->a:Lcom/transsion/publish/ui/VideoPreviewActivity;

    iget-object v1, p0, Lcom/transsion/publish/ui/o1;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->j0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/graphics/Bitmap;)V

    return-void
.end method
