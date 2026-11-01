.class Lab/t$a;
.super Landroid/view/ViewOutlineProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab/t;->l(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lab/t;


# direct methods
.method constructor <init>(Lab/t;)V
    .locals 0

    iput-object p1, p0, Lab/t$a;->a:Lab/t;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    iget-object p1, p0, Lab/t$a;->a:Lab/t;

    iget-object p1, p1, Lab/r;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lab/t$a;->a:Lab/t;

    iget-object p1, p1, Lab/r;->e:Landroid/graphics/Path;

    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/layer/k0;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method
