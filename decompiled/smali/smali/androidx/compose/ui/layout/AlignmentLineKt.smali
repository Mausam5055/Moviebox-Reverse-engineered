.class public abstract Landroidx/compose/ui/layout/AlignmentLineKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/layout/h;

.field private static final b:Landroidx/compose/ui/layout/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/layout/h;

    sget-object v1, Landroidx/compose/ui/layout/AlignmentLineKt$FirstBaseline$1;->INSTANCE:Landroidx/compose/ui/layout/AlignmentLineKt$FirstBaseline$1;

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/h;-><init>(Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/layout/AlignmentLineKt;->a:Landroidx/compose/ui/layout/h;

    new-instance v0, Landroidx/compose/ui/layout/h;

    sget-object v1, Landroidx/compose/ui/layout/AlignmentLineKt$LastBaseline$1;->INSTANCE:Landroidx/compose/ui/layout/AlignmentLineKt$LastBaseline$1;

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/h;-><init>(Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/layout/AlignmentLineKt;->b:Landroidx/compose/ui/layout/h;

    return-void
.end method

.method public static final a()Landroidx/compose/ui/layout/h;
    .locals 1

    sget-object v0, Landroidx/compose/ui/layout/AlignmentLineKt;->a:Landroidx/compose/ui/layout/h;

    return-object v0
.end method

.method public static final b()Landroidx/compose/ui/layout/h;
    .locals 1

    sget-object v0, Landroidx/compose/ui/layout/AlignmentLineKt;->b:Landroidx/compose/ui/layout/h;

    return-object v0
.end method

.method public static final c(Landroidx/compose/ui/layout/a;II)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/a;->a()Lkotlin/jvm/functions/Function2;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
