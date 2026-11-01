.class public abstract Lkotlinx/coroutines/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkotlinx/coroutines/internal/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/p;->a:Lkotlinx/coroutines/internal/z;

    return-void
.end method
