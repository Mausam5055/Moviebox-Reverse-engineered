.class public Landroidx/lifecycle/v0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/v0$a;,
        Landroidx/lifecycle/v0$b;,
        Landroidx/lifecycle/v0$c;,
        Landroidx/lifecycle/v0$d;,
        Landroidx/lifecycle/v0$e;
    }
.end annotation


# static fields
.field public static final b:Landroidx/lifecycle/v0$b;

.field public static final c:Lp1/a$b;


# instance fields
.field private final a:Lp1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/v0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/v0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/v0;->b:Landroidx/lifecycle/v0$b;

    sget-object v0, Lq1/g$a;->a:Lq1/g$a;

    sput-object v0, Landroidx/lifecycle/v0;->c:Lp1/a$b;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0$c;)V
    .locals 7

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0$c;Lp1/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0$c;Lp1/a;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lp1/c;

    invoke-direct {v0, p1, p2, p3}, Lp1/c;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0$c;Lp1/a;)V

    invoke-direct {p0, v0}, Landroidx/lifecycle/v0;-><init>(Lp1/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0$c;Lp1/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Lp1/a$a;->b:Lp1/a$a;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0$c;Lp1/a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/y0;)V
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/y0;->getViewModelStore()Landroidx/lifecycle/x0;

    move-result-object v0

    sget-object v1, Lq1/g;->a:Lq1/g;

    invoke-virtual {v1, p1}, Lq1/g;->b(Landroidx/lifecycle/y0;)Landroidx/lifecycle/v0$c;

    move-result-object v2

    invoke-virtual {v1, p1}, Lq1/g;->a(Landroidx/lifecycle/y0;)Lp1/a;

    move-result-object p1

    invoke-direct {p0, v0, v2, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0$c;Lp1/a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/v0$c;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/y0;->getViewModelStore()Landroidx/lifecycle/x0;

    move-result-object v0

    sget-object v1, Lq1/g;->a:Lq1/g;

    invoke-virtual {v1, p1}, Lq1/g;->a(Landroidx/lifecycle/y0;)Lp1/a;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0$c;Lp1/a;)V

    return-void
.end method

.method private constructor <init>(Lp1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/v0;->a:Lp1/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/v0;->c(Lkotlin/reflect/KClass;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/v0;->a:Lp1/c;

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lp1/c;->a(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lkotlin/reflect/KClass;)Landroidx/lifecycle/t0;
    .locals 3

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/v0;->a:Lp1/c;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lp1/c;->b(Lp1/c;Lkotlin/reflect/KClass;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method
