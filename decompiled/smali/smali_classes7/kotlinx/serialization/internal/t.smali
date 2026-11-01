.class final Lkotlinx/serialization/internal/t;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/x1;


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private final b:Lkotlinx/serialization/internal/t$a;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "compute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/t;->a:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lkotlinx/serialization/internal/t;->c()Lkotlinx/serialization/internal/t$a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/t;->b:Lkotlinx/serialization/internal/t$a;

    return-void
.end method

.method public static final synthetic b(Lkotlinx/serialization/internal/t;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/t;->a:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final c()Lkotlinx/serialization/internal/t$a;
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/t$a;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/t$a;-><init>(Lkotlinx/serialization/internal/t;)V

    return-object v0
.end method


# virtual methods
.method public a(Lkotlin/reflect/KClass;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/t;->b:Lkotlinx/serialization/internal/t$a;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlinx/serialization/internal/s;->a(Lkotlinx/serialization/internal/t$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/internal/m;

    iget-object p1, p1, Lkotlinx/serialization/internal/m;->a:Lkotlinx/serialization/b;

    return-object p1
.end method
