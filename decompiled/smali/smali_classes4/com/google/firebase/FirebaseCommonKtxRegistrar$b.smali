.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;
.super Ljava/lang/Object;

# interfaces
.implements Lmb/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/FirebaseCommonKtxRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lmb/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;->b(Lmb/e;)Lkotlinx/coroutines/i0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lmb/e;)Lkotlinx/coroutines/i0;
    .locals 2

    const-class v0, Llb/c;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    invoke-interface {p1, v0}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lkotlinx/coroutines/m1;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/i0;

    move-result-object p1

    return-object p1
.end method
