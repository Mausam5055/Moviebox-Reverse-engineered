.class public final synthetic Lf2/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf2/c$d;


# direct methods
.method public synthetic constructor <init>(Lf2/c$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/e;->a:Lf2/c$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf2/e;->a:Lf2/c$d;

    invoke-static {v0}, Lf2/c$d;->a(Lf2/c$d;)V

    return-void
.end method
