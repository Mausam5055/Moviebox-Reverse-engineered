.class public final synthetic Lr3/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr3/d;

    check-cast p2, Lr3/d;

    invoke-static {p1, p2}, Lr3/j;->a(Lr3/d;Lr3/d;)I

    move-result p1

    return p1
.end method
