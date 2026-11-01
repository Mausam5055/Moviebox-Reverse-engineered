.class Lxa/d$b;
.super Lxa/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxa/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Lxa/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/text/TextPaint;

.field final synthetic c:Lxa/f;

.field final synthetic d:Lxa/d;


# direct methods
.method constructor <init>(Lxa/d;Landroid/content/Context;Landroid/text/TextPaint;Lxa/f;)V
    .locals 0

    iput-object p1, p0, Lxa/d$b;->d:Lxa/d;

    iput-object p2, p0, Lxa/d$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lxa/d$b;->b:Landroid/text/TextPaint;

    iput-object p4, p0, Lxa/d$b;->c:Lxa/f;

    invoke-direct {p0}, Lxa/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lxa/d$b;->c:Lxa/f;

    invoke-virtual {v0, p1}, Lxa/f;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, Lxa/d$b;->d:Lxa/d;

    iget-object v1, p0, Lxa/d$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lxa/d$b;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, v2, p1}, Lxa/d;->p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lxa/d$b;->c:Lxa/f;

    invoke-virtual {v0, p1, p2}, Lxa/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
