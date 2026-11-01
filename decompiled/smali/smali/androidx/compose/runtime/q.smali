.class public abstract Landroidx/compose/runtime/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/runtime/g3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/s0;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/s0;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/compose/runtime/q;->a:Landroidx/compose/runtime/g3;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/q;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/compose/runtime/g3;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/q;->a:Landroidx/compose/runtime/g3;

    return-object v0
.end method

.method public abstract b(Landroidx/compose/runtime/t1;Landroidx/compose/runtime/g3;)Landroidx/compose/runtime/g3;
.end method
