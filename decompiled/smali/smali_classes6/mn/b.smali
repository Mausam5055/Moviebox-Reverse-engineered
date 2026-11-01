.class public final synthetic Lmn/b;
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

    check-cast p1, Lz3/b;

    invoke-static {p1}, Lmn/i;->i(Lz3/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
