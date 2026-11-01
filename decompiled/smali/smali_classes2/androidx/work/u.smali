.class public final Landroidx/work/u;
.super Landroidx/work/l;


# static fields
.field public static final a:Landroidx/work/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/u;

    invoke-direct {v0}, Landroidx/work/u;-><init>()V

    sput-object v0, Landroidx/work/u;->a:Landroidx/work/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/work/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Landroidx/work/k;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/work/u;->c(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    check-cast p1, Landroidx/work/k;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
