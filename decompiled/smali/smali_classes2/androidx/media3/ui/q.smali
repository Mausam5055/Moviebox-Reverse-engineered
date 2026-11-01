.class public final synthetic Landroidx/media3/ui/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/media3/ui/PlayerControlView$l;

.field public final synthetic b:Landroidx/media3/common/a0;

.field public final synthetic c:Landroidx/media3/common/f0;

.field public final synthetic d:Landroidx/media3/ui/PlayerControlView$k;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView$l;Landroidx/media3/common/a0;Landroidx/media3/common/f0;Landroidx/media3/ui/PlayerControlView$k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/q;->a:Landroidx/media3/ui/PlayerControlView$l;

    iput-object p2, p0, Landroidx/media3/ui/q;->b:Landroidx/media3/common/a0;

    iput-object p3, p0, Landroidx/media3/ui/q;->c:Landroidx/media3/common/f0;

    iput-object p4, p0, Landroidx/media3/ui/q;->d:Landroidx/media3/ui/PlayerControlView$k;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/ui/q;->a:Landroidx/media3/ui/PlayerControlView$l;

    iget-object v1, p0, Landroidx/media3/ui/q;->b:Landroidx/media3/common/a0;

    iget-object v2, p0, Landroidx/media3/ui/q;->c:Landroidx/media3/common/f0;

    iget-object v3, p0, Landroidx/media3/ui/q;->d:Landroidx/media3/ui/PlayerControlView$k;

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/media3/ui/PlayerControlView$l;->g(Landroidx/media3/ui/PlayerControlView$l;Landroidx/media3/common/a0;Landroidx/media3/common/f0;Landroidx/media3/ui/PlayerControlView$k;Landroid/view/View;)V

    return-void
.end method
