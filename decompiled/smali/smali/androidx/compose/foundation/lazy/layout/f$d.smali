.class public final Landroidx/compose/foundation/lazy/layout/f$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/f;->a(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/foundation/lazy/layout/f;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/f;Lkotlin/jvm/internal/Ref$ObjectRef;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/f$d;->a:Landroidx/compose/foundation/lazy/layout/f;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/f$d;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p3, p0, Landroidx/compose/foundation/lazy/layout/f$d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/f$d;->a:Landroidx/compose/foundation/lazy/layout/f;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/f$d;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/lazy/layout/e$a;

    iget v2, p0, Landroidx/compose/foundation/lazy/layout/f$d;->c:I

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/lazy/layout/f;->i(Landroidx/compose/foundation/lazy/layout/f;Landroidx/compose/foundation/lazy/layout/e$a;I)Z

    move-result v0

    return v0
.end method
