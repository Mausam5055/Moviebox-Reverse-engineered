.class Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/widget/ImageView;

.field final synthetic TKC:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;

.field final synthetic sP:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$1;->Sj:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$1;->sP:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$1;->Sj:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$1;->sP:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
