.class public final Lb4/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lb4/f$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lb4/f$a;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-direct {p0}, Lb4/f$a;->c()Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lb4/f$a;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-direct {p0}, Lb4/f$a;->d()Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private final c()Ljava/lang/reflect/Method;
    .locals 1

    invoke-static {}, Lb4/f;->m()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private final d()Ljava/lang/reflect/Method;
    .locals 1

    invoke-static {}, Lb4/f;->n()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method
