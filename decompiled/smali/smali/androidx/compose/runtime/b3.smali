.class public final Landroidx/compose/runtime/b3;
.super Landroidx/compose/runtime/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/s1;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Landroidx/compose/runtime/t1;
    .locals 9

    new-instance v8, Landroidx/compose/runtime/t1;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/t1;-><init>(Landroidx/compose/runtime/q;Ljava/lang/Object;ZLandroidx/compose/runtime/q2;Landroidx/compose/runtime/i1;Lkotlin/jvm/functions/Function1;Z)V

    return-object v8
.end method
