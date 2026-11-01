.class public abstract Lkotlinx/serialization/json/k;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/descriptors/f;
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/json/k;->f(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/descriptors/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Le00/e;)V
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/json/k;->g(Le00/e;)V

    return-void
.end method

.method public static final synthetic c(Le00/f;)V
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/json/k;->h(Le00/f;)V

    return-void
.end method

.method public static final d(Le00/e;)Lkotlinx/serialization/json/g;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlinx/serialization/json/g;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(Le00/f;)Lkotlinx/serialization/json/l;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlinx/serialization/json/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/l;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final f(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/descriptors/f;
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/k$a;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/k$a;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method private static final g(Le00/e;)V
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/json/k;->d(Le00/e;)Lkotlinx/serialization/json/g;

    return-void
.end method

.method private static final h(Le00/f;)V
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/json/k;->e(Le00/f;)Lkotlinx/serialization/json/l;

    return-void
.end method
