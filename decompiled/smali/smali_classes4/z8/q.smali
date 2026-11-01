.class public final synthetic Lz8/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lz8/s;


# direct methods
.method public synthetic constructor <init>(Lz8/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/q;->a:Lz8/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lz8/q;->a:Lz8/s;

    invoke-static {v0}, Lz8/s;->b(Lz8/s;)V

    return-void
.end method
