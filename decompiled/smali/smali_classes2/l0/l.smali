.class public final Ll0/l;
.super Landroid/text/style/CharacterStyle;


# instance fields
.field private final a:I

.field private final b:F

.field private final c:F

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IFFF)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput p1, p0, Ll0/l;->a:I

    iput p2, p0, Ll0/l;->b:F

    iput p3, p0, Ll0/l;->c:F

    iput p4, p0, Ll0/l;->d:F

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 4

    iget v0, p0, Ll0/l;->d:F

    iget v1, p0, Ll0/l;->b:F

    iget v2, p0, Ll0/l;->c:F

    iget v3, p0, Ll0/l;->a:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method
