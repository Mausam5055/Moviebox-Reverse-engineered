.class public final Landroidx/compose/ui/text/font/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lm0/b;

.field private final c:Lm0/c;

.field private final d:Landroidx/compose/ui/text/platform/p;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/text/font/e$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/text/font/e;->a:Ljava/lang/Object;

    new-instance v1, Lm0/b;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lm0/b;-><init>(I)V

    iput-object v1, p0, Landroidx/compose/ui/text/font/e;->b:Lm0/b;

    new-instance v1, Lm0/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lm0/c;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Landroidx/compose/ui/text/font/e;->c:Lm0/c;

    invoke-static {}, Landroidx/compose/ui/text/platform/o;->a()Landroidx/compose/ui/text/platform/p;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/font/e;->d:Landroidx/compose/ui/text/platform/p;

    return-void
.end method
