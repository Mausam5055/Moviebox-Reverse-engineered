.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/google/firebase/FirebaseCommonKtxRegistrar;",
        "Lcom/google/firebase/components/ComponentRegistrar;",
        "<init>",
        "()V",
        "",
        "Lmb/c;",
        "getComponents",
        "()Ljava/util/List;",
        "com.google.firebase-firebase-common"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmb/c;",
            ">;"
        }
    .end annotation

    const-class v0, Llb/a;

    const-class v1, Lkotlinx/coroutines/i0;

    invoke-static {v0, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v2

    invoke-static {v2}, Lmb/c;->e(Lmb/b0;)Lmb/c$b;

    move-result-object v2

    const-class v3, Ljava/util/concurrent/Executor;

    invoke-static {v0, v3}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    invoke-static {v0}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/FirebaseCommonKtxRegistrar$a;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$a;

    invoke-virtual {v0, v2}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    const-string v2, "build(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Llb/c;

    invoke-static {v4, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v5

    invoke-static {v5}, Lmb/c;->e(Lmb/b0;)Lmb/c$b;

    move-result-object v5

    invoke-static {v4, v3}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v4

    invoke-static {v4}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v4

    invoke-virtual {v5, v4}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;

    invoke-virtual {v4, v5}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v4

    invoke-virtual {v4}, Lmb/c$b;->d()Lmb/c;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, Llb/b;

    invoke-static {v5, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v6

    invoke-static {v6}, Lmb/c;->e(Lmb/b0;)Lmb/c$b;

    move-result-object v6

    invoke-static {v5, v3}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v5

    invoke-static {v5}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v5

    invoke-virtual {v6, v5}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;

    invoke-virtual {v5, v6}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v5

    invoke-virtual {v5}, Lmb/c$b;->d()Lmb/c;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v6, Llb/d;

    invoke-static {v6, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v1

    invoke-static {v1}, Lmb/c;->e(Lmb/b0;)Lmb/c$b;

    move-result-object v1

    invoke-static {v6, v3}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v3

    invoke-static {v3}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    sget-object v3, Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;

    invoke-virtual {v1, v3}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lmb/c$b;->d()Lmb/c;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Lmb/c;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v4, v2, v0

    const/4 v0, 0x2

    aput-object v5, v2, v0

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
