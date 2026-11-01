.class public final Landroidx/compose/foundation/lazy/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/lazy/b;


# instance fields
.field private a:Landroidx/compose/runtime/e1;

.field private b:Landroidx/compose/runtime/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    invoke-static {v0}, Landroidx/compose/runtime/n2;->a(I)Landroidx/compose/runtime/e1;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/lazy/c;->a:Landroidx/compose/runtime/e1;

    invoke-static {v0}, Landroidx/compose/runtime/n2;->a(I)Landroidx/compose/runtime/e1;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/c;->b:Landroidx/compose/runtime/e1;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/c;->a:Landroidx/compose/runtime/e1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/e1;->setIntValue(I)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/c;->b:Landroidx/compose/runtime/e1;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/e1;->setIntValue(I)V

    return-void
.end method
