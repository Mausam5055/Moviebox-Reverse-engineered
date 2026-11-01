.class public Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TzV;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;


# instance fields
.field public Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/sP;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V

    return-void
.end method


# virtual methods
.method protected Sj(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/sP;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/sP;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TzV;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/sP;

    return-object v0
.end method

.method protected Sj(Landroid/graphics/Bitmap;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/sP;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Sj;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TzV;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/sP;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Sj;-><init>(Landroid/graphics/Bitmap;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/sP;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TzV;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/sP;

    return-object v0
.end method

.method protected getDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/sP;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/sP;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TzV;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/sP;

    return-object v0
.end method

.method public uA()Z
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;->uA()Z

    move-result v0

    return v0
.end method
