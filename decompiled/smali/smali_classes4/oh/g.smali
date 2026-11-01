.class public final Loh/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Loh/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loh/g;

    invoke-direct {v0}, Loh/g;-><init>()V

    sput-object v0, Loh/g;->a:Loh/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "none"

    invoke-static {p1}, Loh/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
