.class Lxa/d$a;
.super Ly0/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxa/d;->h(Landroid/content/Context;Lxa/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxa/f;

.field final synthetic b:Lxa/d;


# direct methods
.method constructor <init>(Lxa/d;Lxa/f;)V
    .locals 0

    iput-object p1, p0, Lxa/d$a;->b:Lxa/d;

    iput-object p2, p0, Lxa/d$a;->a:Lxa/f;

    invoke-direct {p0}, Ly0/h$e;-><init>()V

    return-void
.end method


# virtual methods
.method public h(I)V
    .locals 2

    iget-object v0, p0, Lxa/d$a;->b:Lxa/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lxa/d;->c(Lxa/d;Z)Z

    iget-object v0, p0, Lxa/d$a;->a:Lxa/f;

    invoke-virtual {v0, p1}, Lxa/f;->a(I)V

    return-void
.end method

.method public i(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lxa/d$a;->b:Lxa/d;

    iget v1, v0, Lxa/d;->e:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Lxa/d;->b(Lxa/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lxa/d$a;->b:Lxa/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lxa/d;->c(Lxa/d;Z)Z

    iget-object p1, p0, Lxa/d$a;->a:Lxa/f;

    iget-object v0, p0, Lxa/d$a;->b:Lxa/d;

    invoke-static {v0}, Lxa/d;->a(Lxa/d;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lxa/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
