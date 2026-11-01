.class Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP$1;
.super Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected Sj(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;->Sj(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected synthetic sP(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP$1;->Sj(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
