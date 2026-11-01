.class public final Lq1/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/v0$c;


# static fields
.field public static final a:Lq1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/c;

    invoke-direct {v0}, Lq1/c;-><init>()V

    sput-object v0, Lq1/c;->a:Lq1/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic create(Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/w0;->a(Landroidx/lifecycle/v0$c;Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/w0;->b(Landroidx/lifecycle/v0$c;Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method

.method public create(Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lq1/d;->a:Lq1/d;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lq1/d;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method
