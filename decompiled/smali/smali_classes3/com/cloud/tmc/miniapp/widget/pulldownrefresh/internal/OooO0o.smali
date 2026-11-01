.class public abstract Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field public OooO00o:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o:Landroid/graphics/Paint;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
