.class public abstract Lf00/c;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lf00/c;-><init>()V

    return-void
.end method

.method public static synthetic c(Lf00/c;Lkotlin/reflect/KClass;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/b;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lf00/c;->b(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/b;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getContextual"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(Lf00/e;)V
.end method

.method public abstract b(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/b;
.end method

.method public abstract d(Lkotlin/reflect/KClass;Ljava/lang/String;)Lkotlinx/serialization/a;
.end method

.method public abstract e(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/g;
.end method
