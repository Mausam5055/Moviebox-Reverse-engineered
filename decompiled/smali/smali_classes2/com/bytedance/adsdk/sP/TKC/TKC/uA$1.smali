.class Lcom/bytedance/adsdk/sP/TKC/TKC/uA$1;
.super Landroid/graphics/Paint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/TKC/TKC/uA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/TKC/TKC/uA;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/TKC/TKC/uA;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/uA$1;->Sj:Lcom/bytedance/adsdk/sP/TKC/TKC/uA;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
