.class final Landroidx/compose/material/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DelegatingThemeAwareRippleNode;->N1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/material/ripple/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroidx/compose/material/ripple/c;",
        "invoke",
        "()Landroidx/compose/material/ripple/c;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/material/DelegatingThemeAwareRippleNode;


# direct methods
.method constructor <init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;->this$0:Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/material/ripple/c;
    .locals 5

    iget-object v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;->this$0:Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    invoke-static {}, Landroidx/compose/material/RippleKt;->d()Landroidx/compose/runtime/s1;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/node/e;->a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/material/g;->b()Landroidx/compose/material/ripple/c;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/compose/material/h;->a:Landroidx/compose/material/h;

    iget-object v1, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;->this$0:Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/s1;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/node/e;->a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;->this$0:Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    invoke-static {}, Landroidx/compose/material/ColorsKt;->c()Landroidx/compose/runtime/s1;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/ui/node/e;->a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material/b;

    invoke-virtual {v3}, Landroidx/compose/material/b;->m()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/material/h;->a(JZ)Landroidx/compose/material/ripple/c;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;->invoke()Landroidx/compose/material/ripple/c;

    move-result-object v0

    return-object v0
.end method
