.class public final synthetic Liv/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Liv/c;


# direct methods
.method public synthetic constructor <init>(Liv/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liv/b;->a:Liv/c;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Liv/b;->a:Liv/c;

    invoke-static {v0}, Liv/c;->b(Liv/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
