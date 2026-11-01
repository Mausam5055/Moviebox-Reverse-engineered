.class public final Landroidx/compose/ui/platform/y0;
.super Landroidx/compose/ui/platform/a1;

# interfaces
.implements Landroidx/compose/ui/f$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/y0$a;
    }
.end annotation


# instance fields
.field private final c:Landroidx/compose/ui/platform/y0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/a1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/compose/ui/platform/y0$a;

    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/y0$a;-><init>(Landroidx/compose/ui/platform/y0;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/y0;->c:Landroidx/compose/ui/platform/y0$a;

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/g;->b(Landroidx/compose/ui/f$b;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/g;->a(Landroidx/compose/ui/f$b;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/e;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p1

    return-object p1
.end method
