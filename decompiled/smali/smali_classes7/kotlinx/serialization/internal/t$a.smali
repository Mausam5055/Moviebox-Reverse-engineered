.class public final Lkotlinx/serialization/internal/t$a;
.super Ljava/lang/ClassValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/t;->c()Lkotlinx/serialization/internal/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/serialization/internal/t;


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/t;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/internal/t$a;->a:Lkotlinx/serialization/internal/t;

    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Lkotlinx/serialization/internal/m;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/m;

    iget-object v1, p0, Lkotlinx/serialization/internal/t$a;->a:Lkotlinx/serialization/internal/t;

    invoke-static {v1}, Lkotlinx/serialization/internal/t;->b(Lkotlinx/serialization/internal/t;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/b;

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/m;-><init>(Lkotlinx/serialization/b;)V

    return-object v0
.end method

.method public bridge synthetic computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/t$a;->a(Ljava/lang/Class;)Lkotlinx/serialization/internal/m;

    move-result-object p1

    return-object p1
.end method
