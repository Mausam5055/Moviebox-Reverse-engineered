.class public final synthetic Landroidx/room/q0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lz3/e;

    invoke-static {p1}, Landroidx/room/TriggerBasedInvalidationTracker;->a(Lz3/e;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
