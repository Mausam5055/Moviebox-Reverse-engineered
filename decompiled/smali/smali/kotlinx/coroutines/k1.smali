.class public abstract Lkotlinx/coroutines/k1;
.super Lkotlinx/coroutines/i0;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/k1$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/k1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/k1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/k1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/k1;->a:Lkotlinx/coroutines/k1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract d()Ljava/util/concurrent/Executor;
.end method
