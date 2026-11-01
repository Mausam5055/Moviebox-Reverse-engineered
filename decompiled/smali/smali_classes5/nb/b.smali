.class public final synthetic Lnb/b;
.super Ljava/lang/Object;

# interfaces
.implements Lpb/a;


# instance fields
.field public final synthetic a:Lnb/d;


# direct methods
.method public synthetic constructor <init>(Lnb/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb/b;->a:Lnb/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lnb/b;->a:Lnb/d;

    invoke-static {v0, p1, p2}, Lnb/d;->b(Lnb/d;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
