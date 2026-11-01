.class final Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt$BlackScrimmed$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/u1;",
        "Landroidx/compose/ui/graphics/u1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/u1;",
        "original",
        "invoke-l2rxGTc",
        "(J)J",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt$BlackScrimmed$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt$BlackScrimmed$1;

    invoke-direct {v0}, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt$BlackScrimmed$1;-><init>()V

    sput-object v0, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt$BlackScrimmed$1;->INSTANCE:Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt$BlackScrimmed$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt$BlackScrimmed$1;->invoke-l2rxGTc(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/u1;->g(J)Landroidx/compose/ui/graphics/u1;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-l2rxGTc(J)J
    .locals 2

    invoke-static {}, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/w1;->h(JJ)J

    move-result-wide p1

    return-wide p1
.end method
