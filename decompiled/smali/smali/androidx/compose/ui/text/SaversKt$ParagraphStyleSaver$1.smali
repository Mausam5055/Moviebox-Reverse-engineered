.class final Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/saveable/e;",
        "Landroidx/compose/ui/text/r;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroidx/compose/runtime/saveable/e;",
        "Landroidx/compose/ui/text/r;",
        "it",
        "",
        "invoke",
        "(Landroidx/compose/runtime/saveable/e;Landroidx/compose/ui/text/r;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/saveable/e;Landroidx/compose/ui/text/r;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p2}, Landroidx/compose/ui/text/r;->h()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/h;->h(I)Landroidx/compose/ui/text/style/h;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/SaversKt;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/compose/ui/text/r;->i()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/j;->g(I)Landroidx/compose/ui/text/style/j;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/compose/ui/text/r;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo0/w;->b(J)Lo0/w;

    move-result-object v2

    sget-object v3, Lo0/w;->b:Lo0/w$a;

    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->t(Lo0/w$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/compose/ui/text/r;->j()Landroidx/compose/ui/text/style/n;

    move-result-object p2

    sget-object v3, Landroidx/compose/ui/text/style/n;->c:Landroidx/compose/ui/text/style/n$a;

    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->q(Landroidx/compose/ui/text/style/n$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v3

    invoke-static {p2, v3, p1}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, p2, v3

    const/4 v0, 0x1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    aput-object v2, p2, v0

    const/4 v0, 0x3

    aput-object p1, p2, v0

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/saveable/e;

    check-cast p2, Landroidx/compose/ui/text/r;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;->invoke(Landroidx/compose/runtime/saveable/e;Landroidx/compose/ui/text/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
