.class public Lcom/bytedance/sdk/component/adexpress/vS/aa;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;
    }
.end annotation


# instance fields
.field private Dq:I

.field private EjP:I

.field private Fmk:Landroid/graphics/PorterDuff$Mode;

.field private HiB:I

.field private Jcg:I

.field Sj:Landroid/graphics/Rect;

.field private TEQ:Landroid/graphics/Bitmap;

.field private TKC:I

.field private Ym:Landroid/graphics/Paint;

.field private final Zq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Landroid/graphics/Xfermode;

.field sP:Landroid/graphics/Rect;

.field private sef:Landroid/graphics/LinearGradient;

.field private uA:[I

.field private vS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Fmk:Landroid/graphics/PorterDuff$Mode;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Zq:Ljava/util/List;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Sj()V

    return-void
.end method

.method private Sj()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_splash_unlock_image_arrow"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ib;->EjP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->TKC:I

    const-string v0, "#00ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->EjP:I

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->HiB:I

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->vS:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Jcg:I

    const/16 v1, 0x28

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Dq:I

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->EjP:I

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->HiB:I

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->uA:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Ym:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->TKC:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->TEQ:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Fmk:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->aa:Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public Sj(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Zq:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->TEQ:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Sj:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->sP:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Ym:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Zq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;

    new-instance v11, Landroid/graphics/LinearGradient;

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;)I

    move-result v3

    int-to-float v4, v3

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;)I

    move-result v3

    iget v5, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Dq:I

    add-int/2addr v3, v5

    int-to-float v6, v3

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Jcg:I

    int-to-float v7, v3

    iget-object v8, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->uA:[I

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->sef:Landroid/graphics/LinearGradient;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Ym:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Ym:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->sef:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v8, v3

    iget-object v9, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Ym:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Ym:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;->Sj()V

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Ym:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->aa:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->TEQ:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Sj:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->sP:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Ym:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Ym:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->TEQ:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->TEQ:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->TEQ:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->Sj:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa;->sP:Landroid/graphics/Rect;

    return-void
.end method
