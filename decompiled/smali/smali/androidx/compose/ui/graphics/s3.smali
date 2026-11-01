.class public final synthetic Landroidx/compose/ui/graphics/s3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/s3;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/s3;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/graphics/v3;->c(Lkotlin/jvm/functions/Function1;D)D

    move-result-wide p1

    return-wide p1
.end method
