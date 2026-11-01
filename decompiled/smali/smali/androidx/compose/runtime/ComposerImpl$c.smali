.class public final Landroidx/compose/runtime/ComposerImpl$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;-><init>(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m;Landroidx/compose/runtime/j2;Ljava/util/Set;Ls/a;Ls/a;Landroidx/compose/runtime/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ComposerImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$c;->a:Landroidx/compose/runtime/ComposerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/runtime/z;)V
    .locals 1

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl$c;->a:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerImpl;->T(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->Z(Landroidx/compose/runtime/ComposerImpl;I)V

    return-void
.end method

.method public b(Landroidx/compose/runtime/z;)V
    .locals 1

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl$c;->a:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerImpl;->T(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->Z(Landroidx/compose/runtime/ComposerImpl;I)V

    return-void
.end method
