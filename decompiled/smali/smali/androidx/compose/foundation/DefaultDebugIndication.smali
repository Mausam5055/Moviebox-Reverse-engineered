.class final Landroidx/compose/foundation/DefaultDebugIndication;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/foundation/DefaultDebugIndication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/DefaultDebugIndication;

    invoke-direct {v0}, Landroidx/compose/foundation/DefaultDebugIndication;-><init>()V

    sput-object v0, Landroidx/compose/foundation/DefaultDebugIndication;->a:Landroidx/compose/foundation/DefaultDebugIndication;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lp/g;Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/y;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/w;->a(Landroidx/compose/foundation/x;Lp/g;Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/y;

    move-result-object p1

    return-object p1
.end method

.method public b(Lp/g;)Landroidx/compose/ui/node/f;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;-><init>(Lp/g;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
