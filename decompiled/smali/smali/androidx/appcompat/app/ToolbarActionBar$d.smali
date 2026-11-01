.class Landroidx/appcompat/app/ToolbarActionBar$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/app/AppCompatDelegateImpl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$d;->a:Landroidx/appcompat/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$d;->a:Landroidx/appcompat/app/ToolbarActionBar;

    iget-boolean v0, p1, Landroidx/appcompat/app/ToolbarActionBar;->d:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/ToolbarActionBar;->a:Landroidx/appcompat/widget/t;

    invoke-interface {p1}, Landroidx/appcompat/widget/t;->setMenuPrepared()V

    iget-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$d;->a:Landroidx/appcompat/app/ToolbarActionBar;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/app/ToolbarActionBar;->d:Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$d;->a:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->a:Landroidx/appcompat/widget/t;

    invoke-interface {v0}, Landroidx/appcompat/widget/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
