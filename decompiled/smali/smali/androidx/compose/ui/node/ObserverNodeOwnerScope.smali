.class public final Landroidx/compose/ui/node/ObserverNodeOwnerScope;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/node/z0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;

.field public static final c:I

.field private static final d:Lkotlin/jvm/functions/Function1;


# instance fields
.field private final a:Landroidx/compose/ui/node/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->b:Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->c:I

    sget-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1;->INSTANCE:Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1;

    sput-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->a:Landroidx/compose/ui/node/u0;

    return-void
.end method

.method public static final synthetic a()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->d:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public final b()Landroidx/compose/ui/node/u0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->a:Landroidx/compose/ui/node/u0;

    return-object v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->a:Landroidx/compose/ui/node/u0;

    invoke-interface {v0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    return v0
.end method
