.class Landroidx/fragment/app/DefaultSpecialEffectsController$e;
.super Landroidx/fragment/app/DefaultSpecialEffectsController$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroidx/fragment/app/FragmentAnim$a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/e;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/e;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$e;->d:Z

    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$e;->c:Z

    return-void
.end method


# virtual methods
.method e(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$a;
    .locals 4

    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$e;->d:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$e;->e:Landroidx/fragment/app/FragmentAnim$a;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$e;->c:Z

    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentAnim;->b(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/FragmentAnim$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$e;->e:Landroidx/fragment/app/FragmentAnim$a;

    iput-boolean v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$e;->d:Z

    return-object p1
.end method
