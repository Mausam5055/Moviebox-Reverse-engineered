.class public final Landroidx/compose/foundation/lazy/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/j$a;


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private final b:Lkotlin/jvm/functions/Function1;

.field private final c:Lkotlin/jvm/functions/Function4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/i;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/i;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/i;->c:Lkotlin/jvm/functions/Function4;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/jvm/functions/Function4;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/i;->c:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public getKey()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/i;->a:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getType()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/i;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
