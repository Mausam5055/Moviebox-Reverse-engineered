.class public abstract Lkotlinx/coroutines/l0;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;

# interfaces
.implements Lkotlinx/coroutines/m2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/l0$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/l0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/l0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/l0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/l0;->a:Lkotlinx/coroutines/l0$a;

    return-void
.end method


# virtual methods
.method public abstract d()J
.end method
