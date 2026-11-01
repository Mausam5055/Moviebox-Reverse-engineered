.class public final Landroidx/media3/ui/b;
.super Ljava/lang/Object;


# static fields
.field public static final g:Landroidx/media3/ui/b;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Landroidx/media3/ui/b;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/ui/b;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v7, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/ui/b;->a:I

    iput p2, p0, Landroidx/media3/ui/b;->b:I

    iput p3, p0, Landroidx/media3/ui/b;->c:I

    iput p4, p0, Landroidx/media3/ui/b;->d:I

    iput p5, p0, Landroidx/media3/ui/b;->e:I

    iput-object p6, p0, Landroidx/media3/ui/b;->f:Landroid/graphics/Typeface;

    return-void
.end method

.method public static a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroidx/media3/ui/b;
    .locals 8

    new-instance v7, Landroidx/media3/ui/b;

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    iget v0, v0, Landroidx/media3/ui/b;->a:I

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_1
    sget-object v0, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    iget v0, v0, Landroidx/media3/ui/b;->b:I

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_2
    sget-object v0, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    iget v0, v0, Landroidx/media3/ui/b;->c:I

    goto :goto_4

    :goto_5
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_6
    move v4, v0

    goto :goto_7

    :cond_3
    sget-object v0, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    iget v0, v0, Landroidx/media3/ui/b;->d:I

    goto :goto_6

    :goto_7
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_8
    move v5, v0

    goto :goto_9

    :cond_4
    sget-object v0, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    iget v0, v0, Landroidx/media3/ui/b;->e:I

    goto :goto_8

    :goto_9
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/ui/b;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v7
.end method
