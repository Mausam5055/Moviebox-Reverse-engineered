.class public final Landroidx/compose/ui/text/platform/i$a;
.super Landroidx/emoji2/text/EmojiCompat$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/platform/i;->c()Landroidx/compose/runtime/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/runtime/i1;

.field final synthetic b:Landroidx/compose/ui/text/platform/i;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/i1;Landroidx/compose/ui/text/platform/i;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/platform/i$a;->a:Landroidx/compose/runtime/i1;

    iput-object p2, p0, Landroidx/compose/ui/text/platform/i$a;->b:Landroidx/compose/ui/text/platform/i;

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Landroidx/compose/ui/text/platform/i$a;->b:Landroidx/compose/ui/text/platform/i;

    invoke-static {}, Landroidx/compose/ui/text/platform/m;->a()Landroidx/compose/ui/text/platform/n;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/text/platform/i;->b(Landroidx/compose/ui/text/platform/i;Landroidx/compose/runtime/a3;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/platform/i$a;->a:Landroidx/compose/runtime/i1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/i$a;->b:Landroidx/compose/ui/text/platform/i;

    new-instance v1, Landroidx/compose/ui/text/platform/n;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/compose/ui/text/platform/n;-><init>(Z)V

    invoke-static {v0, v1}, Landroidx/compose/ui/text/platform/i;->b(Landroidx/compose/ui/text/platform/i;Landroidx/compose/runtime/a3;)V

    return-void
.end method
