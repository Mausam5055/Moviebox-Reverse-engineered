.class public final synthetic Lka/j;
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

    check-cast p1, Lka/e;

    check-cast p2, Lka/e;

    invoke-static {p1, p2}, Lka/k;->a(Lka/e;Lka/e;)I

    move-result p1

    return p1
.end method
