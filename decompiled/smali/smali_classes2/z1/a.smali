.class public final synthetic Lz1/a;
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

    check-cast p1, La2/b;

    check-cast p2, La2/b;

    invoke-static {p1, p2}, Lz1/b;->a(La2/b;La2/b;)I

    move-result p1

    return p1
.end method
