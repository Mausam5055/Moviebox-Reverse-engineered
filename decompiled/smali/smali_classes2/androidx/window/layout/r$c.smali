.class public final Landroidx/window/layout/r$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/r$c$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/window/layout/r$c$a;

.field public static final c:Landroidx/window/layout/r$c;

.field public static final d:Landroidx/window/layout/r$c;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/r$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/r$c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/layout/r$c;->b:Landroidx/window/layout/r$c$a;

    new-instance v0, Landroidx/window/layout/r$c;

    const-string v1, "FLAT"

    invoke-direct {v0, v1}, Landroidx/window/layout/r$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/layout/r$c;->c:Landroidx/window/layout/r$c;

    new-instance v0, Landroidx/window/layout/r$c;

    const-string v1, "HALF_OPENED"

    invoke-direct {v0, v1}, Landroidx/window/layout/r$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/layout/r$c;->d:Landroidx/window/layout/r$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/r$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/r$c;->a:Ljava/lang/String;

    return-object v0
.end method
