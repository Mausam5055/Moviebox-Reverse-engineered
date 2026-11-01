.class public Lpb/e;
.super Ljava/lang/Object;

# interfaces
.implements Lpb/a;


# instance fields
.field private final a:Lkb/a;


# direct methods
.method public constructor <init>(Lkb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb/e;->a:Lkb/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lpb/e;->a:Lkb/a;

    const-string v1, "clx"

    invoke-interface {v0, v1, p1, p2}, Lkb/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
