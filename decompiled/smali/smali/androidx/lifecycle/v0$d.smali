.class public Landroidx/lifecycle/v0$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/v0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/v0$d$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/v0$d$a;

.field private static b:Landroidx/lifecycle/v0$d;

.field public static final c:Lp1/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/v0$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/v0$d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/v0$d;->a:Landroidx/lifecycle/v0$d$a;

    sget-object v0, Lq1/g$a;->a:Lq1/g$a;

    sput-object v0, Landroidx/lifecycle/v0$d;->c:Lp1/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Landroidx/lifecycle/v0$d;
    .locals 1

    sget-object v0, Landroidx/lifecycle/v0$d;->b:Landroidx/lifecycle/v0$d;

    return-object v0
.end method

.method public static final synthetic b(Landroidx/lifecycle/v0$d;)V
    .locals 0

    sput-object p0, Landroidx/lifecycle/v0$d;->b:Landroidx/lifecycle/v0$d;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq1/d;->a:Lq1/d;

    invoke-virtual {v0, p1}, Lq1/d;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/v0$d;->create(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method

.method public create(Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/v0$d;->create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method
