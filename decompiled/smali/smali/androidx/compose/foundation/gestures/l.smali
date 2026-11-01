.class public final Landroidx/compose/foundation/gestures/l;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/l$a;
    }
.end annotation


# static fields
.field public static final p:Landroidx/compose/foundation/gestures/l$a;

.field public static final q:I


# instance fields
.field private final n:Ljava/lang/Object;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/gestures/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/l$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/gestures/l;->p:Landroidx/compose/foundation/gestures/l$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/l;->q:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    sget-object v0, Landroidx/compose/foundation/gestures/l;->p:Landroidx/compose/foundation/gestures/l$a;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/l;->n:Ljava/lang/Object;

    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/l;->o:Z

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/l;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final D1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/l;->o:Z

    return v0
.end method

.method public final E1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/l;->o:Z

    return-void
.end method
