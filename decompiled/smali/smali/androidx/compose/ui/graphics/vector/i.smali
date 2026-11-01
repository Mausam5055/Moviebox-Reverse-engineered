.class public abstract Landroidx/compose/ui/graphics/vector/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/i;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lz/g;)V
.end method

.method public b()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/i;->a:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/i;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method
