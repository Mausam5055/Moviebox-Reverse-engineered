.class public final Landroidx/window/layout/r$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/r$b$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/window/layout/r$b$a;

.field public static final c:Landroidx/window/layout/r$b;

.field public static final d:Landroidx/window/layout/r$b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/r$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/r$b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/layout/r$b;->b:Landroidx/window/layout/r$b$a;

    new-instance v0, Landroidx/window/layout/r$b;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1}, Landroidx/window/layout/r$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/layout/r$b;->c:Landroidx/window/layout/r$b;

    new-instance v0, Landroidx/window/layout/r$b;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1}, Landroidx/window/layout/r$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/layout/r$b;->d:Landroidx/window/layout/r$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/r$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/r$b;->a:Ljava/lang/String;

    return-object v0
.end method
