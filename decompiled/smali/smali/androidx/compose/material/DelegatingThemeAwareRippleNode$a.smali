.class final Landroidx/compose/material/DelegatingThemeAwareRippleNode$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/x1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DelegatingThemeAwareRippleNode;->N1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/material/DelegatingThemeAwareRippleNode;


# direct methods
.method constructor <init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$a;->a:Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    iget-object v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$a;->a:Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    invoke-static {v0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->K1(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)Landroidx/compose/ui/graphics/x1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/x1;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$a;->a:Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    invoke-static {}, Landroidx/compose/material/RippleKt;->d()Landroidx/compose/runtime/s1;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/node/e;->a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/material/g;->a()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/compose/material/g;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/compose/material/h;->a:Landroidx/compose/material/h;

    iget-object v1, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$a;->a:Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/s1;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/node/e;->a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$a;->a:Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    invoke-static {}, Landroidx/compose/material/ColorsKt;->c()Landroidx/compose/runtime/s1;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/ui/node/e;->a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material/b;

    invoke-virtual {v3}, Landroidx/compose/material/b;->m()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/material/h;->b(JZ)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
