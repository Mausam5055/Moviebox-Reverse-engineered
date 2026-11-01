.class public final Lcom/transsion/player/ui/ORPlayerView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/ui/ORPlayerView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B%\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u000bB-\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u000eJ\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/player/ui/ORPlayerView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lcom/transsion/player/config/RenderType;",
        "renderType",
        "(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/transsion/player/config/RenderType;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/transsion/player/config/RenderType;)V",
        "Landroid/view/ViewGroup$LayoutParams;",
        "lp",
        "",
        "updateSurface",
        "(Landroid/view/ViewGroup$LayoutParams;)V",
        "Landroid/view/SurfaceView;",
        "getSurface",
        "()Landroid/view/SurfaceView;",
        "Landroid/view/TextureView;",
        "getTextureView",
        "()Landroid/view/TextureView;",
        "Lcom/transsion/player/ui/render/TextureRenderView;",
        "a",
        "Lcom/transsion/player/ui/render/TextureRenderView;",
        "textureView",
        "Lcom/transsion/player/ui/render/SurfaceRenderView;",
        "b",
        "Lcom/transsion/player/ui/render/SurfaceRenderView;",
        "surfaceView",
        "LibPlayer_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/transsion/player/ui/render/TextureRenderView;

.field private b:Lcom/transsion/player/ui/render/SurfaceRenderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/player/ui/ORPlayerView;-><init>(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/transsion/player/config/RenderType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "#FF000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/transsion/player/ui/ORPlayerView$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    :goto_0
    const/4 p4, 0x1

    if-eq p3, p4, :cond_3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2

    sget-object p3, Lbo/b;->a:Lbo/b;

    invoke-virtual {p3}, Lbo/b;->b()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Lcom/transsion/player/ui/render/SurfaceRenderView;

    invoke-direct {p3, p1}, Lcom/transsion/player/ui/render/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/player/ui/ORPlayerView;->b:Lcom/transsion/player/ui/render/SurfaceRenderView;

    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    new-instance p3, Lcom/transsion/player/ui/render/TextureRenderView;

    invoke-direct {p3, p1}, Lcom/transsion/player/ui/render/TextureRenderView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/player/ui/ORPlayerView;->a:Lcom/transsion/player/ui/render/TextureRenderView;

    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    new-instance p3, Lcom/transsion/player/ui/render/TextureRenderView;

    invoke-direct {p3, p1}, Lcom/transsion/player/ui/render/TextureRenderView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/player/ui/ORPlayerView;->a:Lcom/transsion/player/ui/render/TextureRenderView;

    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    new-instance p3, Lcom/transsion/player/ui/render/SurfaceRenderView;

    invoke-direct {p3, p1}, Lcom/transsion/player/ui/render/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/player/ui/ORPlayerView;->b:Lcom/transsion/player/ui/render/SurfaceRenderView;

    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/transsion/player/config/RenderType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/transsion/player/ui/ORPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/transsion/player/config/RenderType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/player/ui/ORPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/transsion/player/config/RenderType;)V

    return-void
.end method


# virtual methods
.method public final getSurface()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/ORPlayerView;->b:Lcom/transsion/player/ui/render/SurfaceRenderView;

    return-object v0
.end method

.method public final getTextureView()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/ORPlayerView;->a:Lcom/transsion/player/ui/render/TextureRenderView;

    return-object v0
.end method

.method public final updateSurface(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "lp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lbo/b;->a:Lbo/b;

    invoke-virtual {v0}, Lbo/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/ui/ORPlayerView;->b:Lcom/transsion/player/ui/render/SurfaceRenderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/ui/ORPlayerView;->a:Lcom/transsion/player/ui/render/TextureRenderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method
