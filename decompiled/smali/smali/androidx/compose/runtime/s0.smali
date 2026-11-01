.class public final Landroidx/compose/runtime/s0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/g3;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/s0;->a:Lkotlin/Lazy;

    return-void
.end method

.method private final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/s0;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/compose/runtime/n1;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/s0;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
