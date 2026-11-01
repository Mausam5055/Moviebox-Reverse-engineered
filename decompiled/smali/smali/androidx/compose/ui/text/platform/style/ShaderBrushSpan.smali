.class public final Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;
.super Landroid/text/style/CharacterStyle;

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final a:Landroidx/compose/ui/graphics/y4;

.field private final b:F

.field private final c:Landroidx/compose/runtime/i1;

.field private final d:Landroidx/compose/runtime/a3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/y4;F)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->a:Landroidx/compose/ui/graphics/y4;

    iput p2, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->b:F

    sget-object p1, Ly/m;->b:Ly/m$a;

    invoke-virtual {p1}, Ly/m$a;->a()J

    move-result-wide p1

    invoke-static {p1, p2}, Ly/m;->c(J)Ly/m;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->c:Landroidx/compose/runtime/i1;

    new-instance p1, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan$shaderState$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan$shaderState$1;-><init>(Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;)V

    invoke-static {p1}, Landroidx/compose/runtime/r2;->c(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/a3;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->d:Landroidx/compose/runtime/a3;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/graphics/y4;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->a:Landroidx/compose/ui/graphics/y4;

    return-object v0
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->c:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/m;

    invoke-virtual {v0}, Ly/m;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(J)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->c:Landroidx/compose/runtime/i1;

    invoke-static {p1, p2}, Ly/m;->c(J)Ly/m;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->b:F

    invoke-static {p1, v0}, Landroidx/compose/ui/text/platform/f;->a(Landroid/text/TextPaint;F)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->d:Landroidx/compose/runtime/a3;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
