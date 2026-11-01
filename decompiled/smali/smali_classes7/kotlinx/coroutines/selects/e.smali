.class public final Lkotlinx/coroutines/selects/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/selects/d;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lkotlin/jvm/functions/Function3;

.field private final c:Lkotlin/jvm/functions/Function3;

.field private final d:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/e;->a:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/selects/e;->b:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlinx/coroutines/selects/e;->c:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lkotlinx/coroutines/selects/e;->d:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/selects/e;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
