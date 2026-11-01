.class public final synthetic Liv/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Liv/h;


# direct methods
.method public synthetic constructor <init>(Liv/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liv/f;->a:Liv/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Liv/f;->a:Liv/h;

    invoke-static {v0}, Liv/h;->k(Liv/h;)V

    return-void
.end method
