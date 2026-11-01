.class public final synthetic Lvc/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lvc/k;


# direct methods
.method public synthetic constructor <init>(Lvc/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc/e;->a:Lvc/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvc/e;->a:Lvc/k;

    invoke-static {v0}, Lvc/k;->e(Lvc/k;)V

    return-void
.end method
