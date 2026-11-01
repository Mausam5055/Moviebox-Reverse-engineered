.class final Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroidx/lifecycle/u;",
        "invoke",
        "()Landroidx/lifecycle/u;",
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
.field public static final INSTANCE:Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;

    invoke-direct {v0}, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;-><init>()V

    sput-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;->INSTANCE:Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/u;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CompositionLocal LocalLifecycleOwner not present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;->invoke()Landroidx/lifecycle/u;

    move-result-object v0

    return-object v0
.end method
